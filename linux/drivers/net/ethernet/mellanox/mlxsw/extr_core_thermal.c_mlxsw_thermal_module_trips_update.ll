; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_trips_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_trips_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.mlxsw_thermal_module = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SFP_TEMP_HIGH_WARN = common dso_local global i32 0, align 4
@SFP_TEMP_HIGH_ALARM = common dso_local global i32 0, align 4
@MLXSW_THERMAL_MODULE_TEMP_SHIFT = common dso_local global i32 0, align 4
@MLXSW_THERMAL_TEMP_TRIP_NORM = common dso_local global i64 0, align 8
@MLXSW_THERMAL_TEMP_TRIP_HIGH = common dso_local global i64 0, align 8
@MLXSW_THERMAL_TEMP_TRIP_HOT = common dso_local global i64 0, align 8
@MLXSW_THERMAL_TEMP_TRIP_CRIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mlxsw_core*, %struct.mlxsw_thermal_module*)* @mlxsw_thermal_module_trips_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_trips_update(%struct.device* %0, %struct.mlxsw_core* %1, %struct.mlxsw_thermal_module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.mlxsw_thermal_module*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mlxsw_core* %1, %struct.mlxsw_core** %6, align 8
  store %struct.mlxsw_thermal_module* %2, %struct.mlxsw_thermal_module** %7, align 8
  %11 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %12 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %13 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SFP_TEMP_HIGH_WARN, align 4
  %16 = call i32 @mlxsw_env_module_temp_thresholds_get(%struct.mlxsw_core* %11, i32 %14, i32 %15, i32* %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %91

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %23 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %24 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SFP_TEMP_HIGH_ALARM, align 4
  %27 = call i32 @mlxsw_env_module_temp_thresholds_get(%struct.mlxsw_core* %22, i32 %25, i32 %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %91

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MLXSW_THERMAL_MODULE_TEMP_SHIFT, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MLXSW_THERMAL_MODULE_TEMP_SHIFT, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %41 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_NORM, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  br label %54

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %49 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_NORM, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %36
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %57 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_HIGH, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %64 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_HOT, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %54
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MLXSW_THERMAL_MODULE_TEMP_SHIFT, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %77 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_CRIT, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %75, i32* %81, align 4
  br label %90

82:                                               ; preds = %54
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %7, align 8
  %85 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @MLXSW_THERMAL_TEMP_TRIP_CRIT, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %72
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %30, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @mlxsw_env_module_temp_thresholds_get(%struct.mlxsw_core*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
