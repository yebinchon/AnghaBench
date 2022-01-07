; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_tea575x = type { i32, i64, i64, i64 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"FM/AM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@BAND_AM = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@TEA575X_BIT_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tea575x_g_tuner(%struct.snd_tea575x* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tea575x*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.v4l2_frequency_band, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %7 = bitcast %struct.v4l2_frequency_band* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %17 = call i32 @snd_tea575x_read(%struct.snd_tea575x* %16)
  %18 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %19 = call i32 @snd_tea575x_enum_freq_bands(%struct.snd_tea575x* %18, %struct.v4l2_frequency_band* %6)
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %21 = call i32 @memset(%struct.v4l2_tuner* %20, i32 0, i32 40)
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %26 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %31 = call i32 @strscpy(i32 %24, i8* %30, i32 4)
  %32 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %40 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %15
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %45 = load i64, i64* @BAND_AM, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %52

49:                                               ; preds = %15
  %50 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i32 [ %48, %43 ], [ %51, %49 ]
  %54 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %61 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  br label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %73 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TEA575X_BIT_MONO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  br label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %87 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 65535, i32 0
  %92 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %82, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snd_tea575x_read(%struct.snd_tea575x*) #2

declare dso_local i32 @snd_tea575x_enum_freq_bands(%struct.snd_tea575x*, %struct.v4l2_frequency_band*) #2

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
