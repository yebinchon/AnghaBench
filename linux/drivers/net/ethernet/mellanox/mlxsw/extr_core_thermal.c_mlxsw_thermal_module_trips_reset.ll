; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_trips_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_trips_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal_module = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MLXSW_THERMAL_TEMP_TRIP_NORM = common dso_local global i64 0, align 8
@MLXSW_THERMAL_TEMP_TRIP_HIGH = common dso_local global i64 0, align 8
@MLXSW_THERMAL_TEMP_TRIP_HOT = common dso_local global i64 0, align 8
@MLXSW_THERMAL_TEMP_TRIP_CRIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_thermal_module*)* @mlxsw_thermal_module_trips_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_thermal_module_trips_reset(%struct.mlxsw_thermal_module* %0) #0 {
  %2 = alloca %struct.mlxsw_thermal_module*, align 8
  store %struct.mlxsw_thermal_module* %0, %struct.mlxsw_thermal_module** %2, align 8
  %3 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %2, align 8
  %4 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_NORM, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %2, align 8
  %10 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_HIGH, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_HOT, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_CRIT, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
