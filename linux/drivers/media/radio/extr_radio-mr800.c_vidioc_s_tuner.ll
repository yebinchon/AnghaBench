; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }
%struct.amradio_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WANT_MONO = common dso_local global i32 0, align 4
@WANT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.amradio_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.amradio_device* @video_drvdata(%struct.file* %9)
  store %struct.amradio_device* %10, %struct.amradio_device** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %26 [
    i32 128, label %22
  ]

22:                                               ; preds = %18
  %23 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %24 = load i32, i32* @WANT_MONO, align 4
  %25 = call i32 @amradio_set_stereo(%struct.amradio_device* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %28 = load i32, i32* @WANT_STEREO, align 4
  %29 = call i32 @amradio_set_stereo(%struct.amradio_device* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %22, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.amradio_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @amradio_set_stereo(%struct.amradio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
