; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_vidioc_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_vidioc_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i64, i64 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.v4l2_frequency_band* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @vidioc_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency_band*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %7, align 8
  %8 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %19)
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %15
  %26 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %27 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands, align 8
  %28 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %27, i64 %30
  %32 = bitcast %struct.v4l2_frequency_band* %26 to i8*
  %33 = bitcast %struct.v4l2_frequency_band* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %22, %12
  %35 = load i32, i32* %4, align 4
  ret i32 %35
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
