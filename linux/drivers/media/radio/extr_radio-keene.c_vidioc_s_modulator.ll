; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_vidioc_s_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_vidioc_s_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_modulator = type { i64, i64 }
%struct.keene_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* @vidioc_s_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_modulator(%struct.file* %0, i8* %1, %struct.v4l2_modulator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_modulator*, align 8
  %8 = alloca %struct.keene_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_modulator* %2, %struct.v4l2_modulator** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.keene_device* @video_drvdata(%struct.file* %9)
  store %struct.keene_device* %10, %struct.keene_device** %8, align 8
  %11 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_TUNER_SUB_STEREO, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.keene_device*, %struct.keene_device** %8, align 8
  %26 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.keene_device*, %struct.keene_device** %8, align 8
  %28 = call i32 @keene_cmd_set(%struct.keene_device* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.keene_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @keene_cmd_set(%struct.keene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
