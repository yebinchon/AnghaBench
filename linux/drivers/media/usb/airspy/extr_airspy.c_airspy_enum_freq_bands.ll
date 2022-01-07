; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i32, i64 }
%struct.file = type { i32 }

@bands = common dso_local global %struct.v4l2_frequency_band* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@bands_rf = common dso_local global %struct.v4l2_frequency_band* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @airspy_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency_band*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %6, align 8
  %8 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %9 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %31

22:                                               ; preds = %12
  %23 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %24 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %25 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %24, i64 %27
  %29 = bitcast %struct.v4l2_frequency_band* %23 to i8*
  %30 = bitcast %struct.v4l2_frequency_band* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %22, %19
  br label %61

32:                                               ; preds = %3
  %33 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_rf, align 8
  %42 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %41)
  %43 = icmp uge i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %56

47:                                               ; preds = %37
  %48 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %49 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_rf, align 8
  %50 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %49, i64 %52
  %54 = bitcast %struct.v4l2_frequency_band* %48 to i8*
  %55 = bitcast %struct.v4l2_frequency_band* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %47, %44
  br label %60

57:                                               ; preds = %32
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %56
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %7, align 4
  ret i32 %62
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
