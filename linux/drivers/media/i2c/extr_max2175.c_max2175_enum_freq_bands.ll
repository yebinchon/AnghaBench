; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency_band = type { i64, i64 }
%struct.max2175 = type { %struct.v4l2_frequency_band* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)* @max2175_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_enum_freq_bands(%struct.v4l2_subdev* %0, %struct.v4l2_frequency_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency_band*, align 8
  %6 = alloca %struct.max2175*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency_band* %1, %struct.v4l2_frequency_band** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.max2175* @max2175_from_sd(%struct.v4l2_subdev* %7)
  store %struct.max2175* %8, %struct.max2175** %6, align 8
  %9 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %13
  %22 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %23 = load %struct.max2175*, %struct.max2175** %6, align 8
  %24 = getelementptr inbounds %struct.max2175, %struct.max2175* %23, i32 0, i32 0
  %25 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %24, align 8
  %26 = bitcast %struct.v4l2_frequency_band* %22 to i8*
  %27 = bitcast %struct.v4l2_frequency_band* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.max2175* @max2175_from_sd(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
