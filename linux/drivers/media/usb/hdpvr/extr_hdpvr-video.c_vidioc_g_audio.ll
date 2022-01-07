; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_g_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_g_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i64, i32, i32 }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@audio_iname = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_g_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_audio*, align 8
  %7 = alloca %struct.hdpvr_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %8)
  store %struct.hdpvr_device* %9, %struct.hdpvr_device** %7, align 8
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %17 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** @audio_iname, align 8
  %23 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strscpy(i32 %21, i32 %27, i32 4)
  ret i32 0
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
