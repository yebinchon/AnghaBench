; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_s_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_s_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_modulator = type { i64, i32 }
%struct.fmdev = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FM_MODE_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to set TX mode\0A\00", align 1
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@FM_STEREO_MODE = common dso_local global i32 0, align 4
@FM_MONO_MODE = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@FM_RDS_ENABLE = common dso_local global i32 0, align 4
@FM_RDS_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to set mono/stereo mode for TX\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to set rds mode for TX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* @fm_v4l2_vidioc_s_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_vidioc_s_modulator(%struct.file* %0, i8* %1, %struct.v4l2_modulator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_modulator*, align 8
  %8 = alloca %struct.fmdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_modulator* %2, %struct.v4l2_modulator** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.fmdev* @video_drvdata(%struct.file* %12)
  store %struct.fmdev* %13, %struct.fmdev** %8, align 8
  %14 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %23 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FM_MODE_TX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %29 = load i64, i64* @FM_MODE_TX, align 8
  %30 = call i32 @fmc_set_mode(%struct.fmdev* %28, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @fmerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %80

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @FM_STEREO_MODE, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @FM_MONO_MODE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %10, align 4
  %50 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @FM_RDS_ENABLE, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @FM_RDS_DISABLE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %9, align 4
  %62 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @fm_tx_set_stereo_mono(%struct.fmdev* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = call i32 @fmerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %80

70:                                               ; preds = %60
  %71 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @fm_tx_set_rds_mode(%struct.fmdev* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @fmerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %67, %33, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fmc_set_mode(%struct.fmdev*, i64) #1

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fm_tx_set_stereo_mono(%struct.fmdev*, i32) #1

declare dso_local i32 @fm_tx_set_rds_mode(%struct.fmdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
