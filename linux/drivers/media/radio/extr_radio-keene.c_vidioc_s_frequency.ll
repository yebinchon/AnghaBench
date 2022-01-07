; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i64, i64 }
%struct.keene_device = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FREQ_MIN = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@FREQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.keene_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.keene_device* @video_drvdata(%struct.file* %10)
  store %struct.keene_device* %11, %struct.keene_device** %8, align 8
  %12 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FREQ_MIN, align 4
  %31 = load i32, i32* @FREQ_MUL, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* @FREQ_MAX, align 4
  %34 = load i32, i32* @FREQ_MUL, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @clamp(i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.keene_device*, %struct.keene_device** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @keene_cmd_main(%struct.keene_device* %37, i32 %38, i32 1)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.keene_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @keene_cmd_main(%struct.keene_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
