Pod::Spec.new do |s|
 s.name             = "R2Streamer"
 s.version          = "0.0.1"
 s.summary          = "A swift port of r2-streamer library."
 s.description  = <<-DESC
                  Written in Swift.
                  The Best Open Source ePub Reader.
                  DESC
 s.homepage         = "https://github.com/varunmehta77/r2-streamer-swift.git"
 s.license          = 'BSD'
 s.author           = { "Priyank Tiwari" => "priyankgt@gmail.com" }
 s.source           = { :git => "https://github.com/varunmehta77/r2-streamer-swift.git" }

 s.platform     = :ios, '8.0'
 s.requires_arc = true

 s.source_files = [
   'Sources/**/*.{swift,h}',
   'Sources/**/*.swift',
   'Sources/ZipArchive/minizip/*.{c,h}'
 ]
 s.public_header_files = 'Sources/ZipArchive/*.h'

 s.pod_target_xcconfig = {'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/R2Streamer/Sources/ZipArchive/minizip', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/R2Streamer/Sources/ZipArchive/minizip'}

 s.libraries = 'z'
 s.preserve_paths = 'Sources/ZipArchive/minizip/module.modulemap'
 s.requires_arc = true 

 s.dependency 'AEXML'
 s.dependency 'ObjectMapper', '~> 2.2'
 s.dependency 'GCDWebServer', '~> 3.3.3'
          
end      
