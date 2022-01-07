; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i64, i32 }
%struct.fmdev = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i64 0, align 8
@FM_STEREO_MODE = common dso_local global i32 0, align 4
@FM_MONO_MODE = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@FM_RDS_ENABLE = common dso_local global i32 0, align 4
@FM_RDS_DISABLE = common dso_local global i32 0, align 4
@FM_MODE_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to set RX mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set RX stereo/mono mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to set RX RDS mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @fm_v4l2_vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.fmdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.fmdev* @video_drvdata(%struct.file* %12)
  store %struct.fmdev* %13, %struct.fmdev** %8, align 8
  %14 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %3
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @FM_STEREO_MODE, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @FM_MONO_MODE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @FM_RDS_ENABLE, align 4
  br label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @FM_RDS_DISABLE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %46 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FM_MODE_RX, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %52 = load i64, i64* @FM_MODE_RX, align 8
  %53 = call i32 @fmc_set_mode(%struct.fmdev* %51, i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = call i32 @fmerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %79

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @fmc_set_stereo_mono(%struct.fmdev* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = call i32 @fmerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %60
  %70 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @fmc_set_rds_mode(%struct.fmdev* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 @fmerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %66, %56, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fmc_set_mode(%struct.fmdev*, i64) #1

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_set_stereo_mono(%struct.fmdev*, i32) #1

declare dso_local i32 @fmc_set_rds_mode(%struct.fmdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
