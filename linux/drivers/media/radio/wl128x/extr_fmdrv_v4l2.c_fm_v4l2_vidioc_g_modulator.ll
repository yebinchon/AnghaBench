; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_g_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_g_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_modulator = type { i64, i32, i32 }
%struct.fmdev = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FM_MODE_TX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@FM_STEREO_MODE = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@FM_RDS_ENABLE = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* @fm_v4l2_vidioc_g_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_vidioc_g_modulator(%struct.file* %0, i8* %1, %struct.v4l2_modulator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_modulator*, align 8
  %8 = alloca %struct.fmdev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_modulator* %2, %struct.v4l2_modulator** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.fmdev* @video_drvdata(%struct.file* %9)
  store %struct.fmdev* %10, %struct.fmdev** %8, align 8
  %11 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %20 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FM_MODE_TX, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %18
  %28 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %29 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FM_STEREO_MODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FM_RDS_ENABLE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %39, %51
  %53 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %56 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %24, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
