; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_register_analog_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_register_analog_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_8__*, %struct.cxusb_medion_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.cxusb_medion_dev = type { %struct.TYPE_10__, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32, %struct.dvb_usb_device*, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32*, i32, i32, %struct.TYPE_10__*, i32*, i32*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@cxdev_video_qops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"video queue init failed, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"video device alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@videocaps = common dso_local global i32 0, align 4
@cxusb_video_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cxusb\00", align 1
@VFL_DIR_RX = common dso_local global i32 0, align 4
@cxusb_video_ioctl = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@cxusb_medion_videodev_release = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"video device register failed, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @cxusb_medion_register_analog_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_register_analog_video(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %6, i32 0, i32 1
  %8 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  store %struct.cxusb_medion_dev* %8, %struct.cxusb_medion_dev** %4, align 8
  %9 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %10 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %11 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 8
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @VB2_MMAP, align 4
  %14 = load i32, i32* @VB2_USERPTR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VB2_READ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @VB2_DMABUF, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %21 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %24 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 7
  store i32* @cxdev_video_qops, i32** %25, align 8
  %26 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  store i32* @vb2_vmalloc_memops, i32** %28, align 8
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %30 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %31 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  store %struct.dvb_usb_device* %29, %struct.dvb_usb_device** %32, align 8
  %33 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %34 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %37 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %38 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %41 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i32 6, i32* %42, align 8
  %43 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %44 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %43, i32 0, i32 2
  %45 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %46 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  store i32* %44, i32** %47, align 8
  %48 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %49 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %48, i32 0, i32 0
  %50 = call i32 @vb2_queue_init(%struct.TYPE_10__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %1
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %160

61:                                               ; preds = %1
  %62 = call %struct.TYPE_9__* (...) @video_device_alloc()
  %63 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %64 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %63, i32 0, i32 1
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %66 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %155

77:                                               ; preds = %61
  %78 = load i32, i32* @videocaps, align 4
  %79 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %80 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 9
  store i32 %78, i32* %82, align 8
  %83 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %84 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 8
  store i32* @cxusb_video_fops, i32** %86, align 8
  %87 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %88 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %87, i32 0, i32 3
  %89 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %90 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 7
  store i32* %88, i32** %92, align 8
  %93 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %94 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %93, i32 0, i32 0
  %95 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %96 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %98, align 8
  %99 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %100 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strscpy(i32 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %105 = load i32, i32* @VFL_DIR_RX, align 4
  %106 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %107 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store i32 %105, i32* %109, align 8
  %110 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %111 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  store i32* @cxusb_video_ioctl, i32** %113, align 8
  %114 = load i32, i32* @V4L2_STD_ALL, align 4
  %115 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %116 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* @cxusb_medion_videodev_release, align 4
  %120 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %121 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 8
  %124 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %125 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %124, i32 0, i32 2
  %126 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %127 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32* %125, i32** %129, align 8
  %130 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %131 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %134 = call i32 @video_set_drvdata(%struct.TYPE_9__* %132, %struct.dvb_usb_device* %133)
  %135 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %136 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %135, i32 0, i32 1
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %139 = call i32 @video_register_device(%struct.TYPE_9__* %137, i32 %138, i32 -1)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %77
  %143 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %144 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %5, align 4
  %148 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %150

149:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %160

150:                                              ; preds = %142
  %151 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %152 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %151, i32 0, i32 1
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = call i32 @video_device_release(%struct.TYPE_9__* %153)
  br label %155

155:                                              ; preds = %150, %69
  %156 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %157 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %156, i32 0, i32 0
  %158 = call i32 @vb2_queue_release(%struct.TYPE_10__* %157)
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %155, %149, %53
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @vb2_queue_init(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @video_device_alloc(...) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_9__*, %struct.dvb_usb_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_9__*) #1

declare dso_local i32 @vb2_queue_release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
