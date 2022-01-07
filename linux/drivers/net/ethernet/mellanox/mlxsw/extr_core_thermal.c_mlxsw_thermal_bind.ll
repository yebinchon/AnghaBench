; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { %struct.mlxsw_thermal_trip*, %struct.TYPE_2__* }
%struct.mlxsw_thermal_trip = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.thermal_cooling_device = type { i32 }

@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@THERMAL_WEIGHT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to bind cooling device to trip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @mlxsw_thermal_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_bind(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.mlxsw_thermal*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_thermal_trip*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %12, align 8
  store %struct.mlxsw_thermal* %13, %struct.mlxsw_thermal** %6, align 8
  %14 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %20 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %21 = call i64 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal* %19, %struct.thermal_cooling_device* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %30, i32 0, i32 0
  %32 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %32, i64 %34
  store %struct.mlxsw_thermal_trip* %35, %struct.mlxsw_thermal_trip** %10, align 8
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %39 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %10, align 8
  %40 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %10, align 8
  %43 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @THERMAL_WEIGHT_DEFAULT, align 4
  %46 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %36, i32 %37, %struct.thermal_cooling_device* %38, i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %25

58:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %49, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal*, %struct.thermal_cooling_device*) #1

declare dso_local i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
