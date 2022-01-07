; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.radio_tea5777 = type { i32, i32, i64 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BAND_AM = common dso_local global i32 0, align 4
@BAND_FM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.radio_tea5777*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.radio_tea5777* @video_drvdata(%struct.file* %9)
  store %struct.radio_tea5777* %10, %struct.radio_tea5777** %8, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %26 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 320000
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @BAND_AM, align 4
  %36 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %37 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %42

38:                                               ; preds = %29, %24
  %39 = load i32, i32* @BAND_FM, align 4
  %40 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %41 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %47 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %49 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.radio_tea5777* @video_drvdata(%struct.file*) #1

declare dso_local i32 @radio_tea5777_set_freq(%struct.radio_tea5777*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
