; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-sdr-cap.c_vivid_sdr_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-sdr-cap.c_vivid_sdr_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i32, i64 }
%struct.file = type { i32 }

@bands_adc = common dso_local global %struct.v4l2_frequency_band* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@bands_fm = common dso_local global %struct.v4l2_frequency_band* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_sdr_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency_band*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %7, align 8
  %8 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %49 [
    i32 0, label %11
    i32 1, label %30
  ]

11:                                               ; preds = %3
  %12 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_adc, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %11
  %22 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %23 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_adc, align 8
  %24 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %23, i64 %26
  %28 = bitcast %struct.v4l2_frequency_band* %22 to i8*
  %29 = bitcast %struct.v4l2_frequency_band* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_fm, align 8
  %35 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %34)
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %30
  %41 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %42 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_fm, align 8
  %43 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %42, i64 %45
  %47 = bitcast %struct.v4l2_frequency_band* %41 to i8*
  %48 = bitcast %struct.v4l2_frequency_band* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %40, %37, %21, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @ARRAY_SIZE(%struct.v4l2_frequency_band*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
