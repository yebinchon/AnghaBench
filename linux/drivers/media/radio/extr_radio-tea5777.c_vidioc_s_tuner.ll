; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i64 }
%struct.radio_tea5777 = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i64 0, align 8
@BAND_FM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.radio_tea5777*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.radio_tea5777* @video_drvdata(%struct.file* %10)
  store %struct.radio_tea5777* %11, %struct.radio_tea5777** %8, align 8
  %12 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %13 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %27 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %29 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %35 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %36 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %39 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %45 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BAND_FM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %51 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %50)
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %43, %37
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.radio_tea5777* @video_drvdata(%struct.file*) #1

declare dso_local i32 @radio_tea5777_set_freq(%struct.radio_tea5777*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
