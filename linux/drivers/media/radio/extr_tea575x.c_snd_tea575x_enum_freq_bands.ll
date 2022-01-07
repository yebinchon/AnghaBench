; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i64, i32, i32 }
%struct.snd_tea575x = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BAND_FM_JAPAN = common dso_local global i32 0, align 4
@BAND_FM = common dso_local global i32 0, align 4
@BAND_AM = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.v4l2_frequency_band* null, align 8
@V4L2_TUNER_CAP_HWSEEK_BOUNDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tea575x_enum_freq_bands(%struct.snd_tea575x* %0, %struct.v4l2_frequency_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tea575x*, align 8
  %5 = alloca %struct.v4l2_frequency_band*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %4, align 8
  store %struct.v4l2_frequency_band* %1, %struct.v4l2_frequency_band** %5, align 8
  %7 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %36 [
    i32 0, label %18
    i32 1, label %28
  ]

18:                                               ; preds = %14
  %19 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %20 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @BAND_FM_JAPAN, align 4
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @BAND_FM, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %39

28:                                               ; preds = %14
  %29 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %30 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @BAND_AM, align 4
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %14, %35
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %33, %27
  %40 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %41 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %41, i64 %43
  %45 = bitcast %struct.v4l2_frequency_band* %40 to i8*
  %46 = bitcast %struct.v4l2_frequency_band* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %48 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_BOUNDED, align 4
  %53 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %39
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %36, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
