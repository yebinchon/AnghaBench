; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.fmdev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FM_MODE_RX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@FM_RDS_ENABLE = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_BOUNDED = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_WRAP = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @fm_v4l2_vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.fmdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.fmdev* @video_drvdata(%struct.file* %14)
  store %struct.fmdev* %15, %struct.fmdev** %8, align 8
  %16 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %117

23:                                               ; preds = %3
  %24 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %25 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FM_MODE_RX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %117

32:                                               ; preds = %23
  %33 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %34 = call i32 @fm_rx_get_band_freq_range(%struct.fmdev* %33, i32* %9, i32* %10)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %117

39:                                               ; preds = %32
  %40 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %41 = call i32 @fm_rx_get_stereo_mono(%struct.fmdev* %40, i32* %11)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %4, align 4
  br label %117

46:                                               ; preds = %39
  %47 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %48 = call i32 @fm_rx_get_rssi_level(%struct.fmdev* %47, i32* %12)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %117

53:                                               ; preds = %46
  %54 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strscpy(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %58 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %59 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, 16
  %63 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 16
  %67 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %70 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %73 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FM_RDS_ENABLE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %53
  %80 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  br label %82

81:                                               ; preds = %53
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = or i32 %71, %83
  %85 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %88 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_BOUNDED, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_WRAP, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %82
  %101 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  br label %104

102:                                              ; preds = %82
  %103 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 128
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %110, 257
  %112 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %104, %51, %44, %37, %29, %20
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fm_rx_get_band_freq_range(%struct.fmdev*, i32*, i32*) #1

declare dso_local i32 @fm_rx_get_stereo_mono(%struct.fmdev*, i32*) #1

declare dso_local i32 @fm_rx_get_rssi_level(%struct.fmdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
