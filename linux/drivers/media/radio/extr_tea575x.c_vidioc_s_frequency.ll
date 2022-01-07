; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.snd_tea575x = type { i64, i32, i64, i64 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BAND_AM = common dso_local global i64 0, align 8
@BAND_FM_JAPAN = common dso_local global i64 0, align 8
@BAND_FM = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.snd_tea575x*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.snd_tea575x* @video_drvdata(%struct.file* %9)
  store %struct.snd_tea575x* %10, %struct.snd_tea575x** %8, align 8
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
  br label %76

24:                                               ; preds = %15
  %25 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %26 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %25, i32 0, i32 3
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
  %35 = load i64, i64* @BAND_AM, align 8
  %36 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %37 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %52

38:                                               ; preds = %29, %24
  %39 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %40 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* @BAND_FM_JAPAN, align 8
  %45 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %46 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %51

47:                                               ; preds = %38
  %48 = load i64, i64* @BAND_FM, align 8
  %49 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %50 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* @u32, align 4
  %54 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %58 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %59 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %65 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %66 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clamp_t(i32 %53, i32 %56, i32 %63, i32 %70)
  %72 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %73 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %75 = call i32 @snd_tea575x_set_freq(%struct.snd_tea575x* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %52, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.snd_tea575x* @video_drvdata(%struct.file*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @snd_tea575x_set_freq(%struct.snd_tea575x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
