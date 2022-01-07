; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i64, i64 }
%struct.file = type { i32 }
%struct.radio_tea5777 = type { i32 }

@bands = common dso_local global %struct.v4l2_frequency_band* null, align 8
@BAND_AM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @vidioc_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency_band*, align 8
  %8 = alloca %struct.radio_tea5777*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.radio_tea5777* @video_drvdata(%struct.file* %9)
  store %struct.radio_tea5777* %10, %struct.radio_tea5777** %8, align 8
  %11 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %3
  %16 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %19)
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %15
  %23 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %24 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BAND_AM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %15, %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %27, %22
  %37 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %38 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %39 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %38, i64 %41
  %43 = bitcast %struct.v4l2_frequency_band* %37 to i8*
  %44 = bitcast %struct.v4l2_frequency_band* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.radio_tea5777* @video_drvdata(%struct.file*) #1

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
