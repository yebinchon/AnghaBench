; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_trip_temp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_trip_temp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@MLXSW_THERMAL_TEMP_TRIP_CRIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @mlxsw_thermal_module_trip_temp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_trip_temp_set(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_thermal_module*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %10, align 8
  store %struct.mlxsw_thermal_module* %11, %struct.mlxsw_thermal_module** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_CRIT, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %19, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18, %14, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %8, align 8
  %34 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
