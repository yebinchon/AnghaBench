; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_tz_score_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_tz_score_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal = type { i32, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32 }
%struct.mlxsw_thermal_trip = type { i32 }

@MLXSW_THERMAL_TEMP_SCORE_MAX = common dso_local global i32 0, align 4
@MLXSW_THERMAL_TEMP_TRIP_NORM = common dso_local global i32 0, align 4
@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_thermal*, %struct.thermal_zone_device*, %struct.mlxsw_thermal_trip*, i32)* @mlxsw_thermal_tz_score_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_thermal_tz_score_update(%struct.mlxsw_thermal* %0, %struct.thermal_zone_device* %1, %struct.mlxsw_thermal_trip* %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_thermal*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca %struct.mlxsw_thermal_trip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_thermal_trip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_thermal* %0, %struct.mlxsw_thermal** %5, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %6, align 8
  store %struct.mlxsw_thermal_trip* %2, %struct.mlxsw_thermal_trip** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %7, align 8
  store %struct.mlxsw_thermal_trip* %14, %struct.mlxsw_thermal_trip** %9, align 8
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* @MLXSW_THERMAL_TEMP_SCORE_MAX, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @MLXSW_THERMAL_TEMP_TRIP_NORM, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %41, %4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %9, align 8
  %24 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %9, align 8
  %30 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  %34 = call i32 @DIV_ROUND_CLOSEST(i32 %28, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul i32 %35, %36
  store i32 %37, i32* %10, align 4
  br label %46

38:                                               ; preds = %21
  %39 = load i32, i32* %13, align 4
  %40 = mul i32 %39, 256
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %9, align 8
  %45 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %44, i32 1
  store %struct.mlxsw_thermal_trip* %45, %struct.mlxsw_thermal_trip** %9, align 8
  br label %17

46:                                               ; preds = %27, %17
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %5, align 8
  %49 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %57 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %5, align 8
  %58 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %57, i32 0, i32 1
  store %struct.thermal_zone_device* %56, %struct.thermal_zone_device** %58, align 8
  br label %59

59:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
