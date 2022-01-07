; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radio_tea5777 = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"AM/FM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_FREQ_BANDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_BOUNDED = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_PROG_LIM = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@BAND_AM = common dso_local global i64 0, align 8
@BAND_FM = common dso_local global i64 0, align 8
@TEA5777_R_FM_STEREO_MASK = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@TEA5777_R_LEVEL_MASK = common dso_local global i32 0, align 4
@TEA5777_R_LEVEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.radio_tea5777*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.radio_tea5777* @video_drvdata(%struct.file* %10)
  store %struct.radio_tea5777* %11, %struct.radio_tea5777** %8, align 8
  %12 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %123

19:                                               ; preds = %3
  %20 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %21 = call i32 @radio_tea5777_update_read_reg(%struct.radio_tea5777* %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %123

26:                                               ; preds = %19
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %28 = call i32 @memset(%struct.v4l2_tuner* %27, i32 0, i32 40)
  %29 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %30 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strscpy(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %43

38:                                               ; preds = %26
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strscpy(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %45 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %48 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @V4L2_TUNER_CAP_FREQ_BANDS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_BOUNDED, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_PROG_LIM, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %59 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %43
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %64 = load i64, i64* @BAND_AM, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %74

68:                                               ; preds = %43
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %70 = load i64, i64* @BAND_FM, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %67, %62 ], [ %73, %68 ]
  %76 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %79 = load i64, i64* @BAND_FM, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %86 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BAND_FM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %74
  %91 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %92 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TEA5777_R_FM_STEREO_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %99 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %90, %74
  %102 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %103 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %107 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %112 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TEA5777_R_LEVEL_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @TEA5777_R_LEVEL_SHIFT, align 4
  %117 = sub nsw i32 %116, 12
  %118 = ashr i32 %115, %117
  %119 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %122 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %121, i32 0, i32 1
  store i32 -1, i32* %122, align 8
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %105, %24, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.radio_tea5777* @video_drvdata(%struct.file*) #1

declare dso_local i32 @radio_tea5777_update_read_reg(%struct.radio_tea5777*, i32) #1

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
