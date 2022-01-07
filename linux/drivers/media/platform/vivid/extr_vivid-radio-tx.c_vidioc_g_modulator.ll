; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-tx.c_vidioc_g_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-tx.c_vidioc_g_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_modulator = type { i64, i32, i32, i32, i32, i32 }
%struct.vivid_dev = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AM/FM/SW Transmitter\00", align 1
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_FREQ_BANDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_CONTROLS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_BLOCK_IO = common dso_local global i32 0, align 4
@AM_FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@FM_FREQ_RANGE_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_modulator(%struct.file* %0, i8* %1, %struct.v4l2_modulator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_modulator*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_modulator* %2, %struct.v4l2_modulator** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strscpy(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %24 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @V4L2_TUNER_CAP_FREQ_BANDS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @V4L2_TUNER_CAP_RDS_CONTROLS, align 4
  br label %38

36:                                               ; preds = %18
  %37 = load i32, i32* @V4L2_TUNER_CAP_RDS_BLOCK_IO, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = or i32 %29, %39
  %41 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @AM_FREQ_RANGE_LOW, align 4
  %44 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @FM_FREQ_RANGE_HIGH, align 4
  %47 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %38, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
