; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i64, i64 }
%struct.file = type { i32 }
%struct.si476x_radio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@si476x_bands = common dso_local global %struct.v4l2_frequency_band* null, align 8
@SI476X_BAND_FM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @si476x_radio_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.si476x_radio*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.si476x_radio* @video_drvdata(%struct.file* %10)
  store %struct.si476x_radio* %11, %struct.si476x_radio** %9, align 8
  %12 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %21 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %64 [
    i32 130, label %25
    i32 129, label %25
    i32 128, label %45
  ]

25:                                               ; preds = %19, %19
  %26 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @si476x_bands, align 8
  %30 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %34 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @si476x_bands, align 8
  %35 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %34, i64 %37
  %39 = bitcast %struct.v4l2_frequency_band* %33 to i8*
  %40 = bitcast %struct.v4l2_frequency_band* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %32
  br label %67

45:                                               ; preds = %19
  %46 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SI476X_BAND_FM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %53 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @si476x_bands, align 8
  %54 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %53, i64 %56
  %58 = bitcast %struct.v4l2_frequency_band* %52 to i8*
  %59 = bitcast %struct.v4l2_frequency_band* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %63

60:                                               ; preds = %45
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %67

64:                                               ; preds = %19
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %63, %44
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.si476x_radio* @video_drvdata(%struct.file*) #1

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
