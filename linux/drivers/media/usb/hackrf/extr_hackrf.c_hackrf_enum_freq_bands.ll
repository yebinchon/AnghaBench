; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i32, i64, i32 }
%struct.file = type { i32 }
%struct.hackrf_dev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"tuner=%d type=%d index=%d\0A\00", align 1
@bands_adc_dac = common dso_local global %struct.v4l2_frequency_band* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@bands_rx_tx = common dso_local global %struct.v4l2_frequency_band* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @hackrf_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency_band*, align 8
  %7 = alloca %struct.hackrf_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %9)
  store %struct.hackrf_dev* %10, %struct.hackrf_dev** %7, align 8
  %11 = load %struct.hackrf_dev*, %struct.hackrf_dev** %7, align 8
  %12 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i64 %22)
  %24 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_adc_dac, align 8
  %33 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %32)
  %34 = icmp uge i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %28
  %39 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %40 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_adc_dac, align 8
  %41 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %40, i64 %43
  %45 = bitcast %struct.v4l2_frequency_band* %39 to i8*
  %46 = bitcast %struct.v4l2_frequency_band* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %38, %35
  br label %77

48:                                               ; preds = %3
  %49 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_rx_tx, align 8
  %58 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %57)
  %59 = icmp uge i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %72

63:                                               ; preds = %53
  %64 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %65 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_rx_tx, align 8
  %66 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %65, i64 %68
  %70 = bitcast %struct.v4l2_frequency_band* %64 to i8*
  %71 = bitcast %struct.v4l2_frequency_band* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %63, %60
  br label %76

73:                                               ; preds = %48
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

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
