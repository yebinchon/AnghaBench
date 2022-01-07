; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.em28xx = type { i64, i64, i64, i32, %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"em28xx\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@EM28XX_INT_AUDIO_NONE = common dso_local global i64 0, align 8
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca %struct.em28xx_v4l2*, align 8
  %9 = alloca %struct.usb_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.em28xx* @video_drvdata(%struct.file* %10)
  store %struct.em28xx* %11, %struct.em28xx** %7, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 4
  %14 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  store %struct.em28xx_v4l2* %14, %struct.em28xx_v4l2** %8, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(i32 %17)
  store %struct.usb_device* %18, %struct.usb_device** %9, align 8
  %19 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strscpy(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @em28xx_boards, align 8
  %27 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strscpy(i32 %25, i8* %32, i32 4)
  %34 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %35 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_make_path(%struct.usb_device* %34, i32 %37, i32 4)
  %39 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %40 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EM28XX_INT_AUDIO_NONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %3
  %54 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %55 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %3
  %60 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TUNER_ABSENT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %67 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %8, align 8
  %73 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %72, i32 0, i32 1
  %74 = call i64 @video_is_registered(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %78 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %8, align 8
  %84 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %83, i32 0, i32 0
  %85 = call i64 @video_is_registered(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %89 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  ret i32 0
}

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @video_is_registered(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
