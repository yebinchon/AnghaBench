; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32 }
%struct.thermal_cooling_device = type { i32 }

@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @mlxsw_thermal_module_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_unbind(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.mlxsw_thermal_module*, align 8
  %7 = alloca %struct.mlxsw_thermal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %11, align 8
  store %struct.mlxsw_thermal_module* %12, %struct.mlxsw_thermal_module** %6, align 8
  %13 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %14, align 8
  store %struct.mlxsw_thermal* %15, %struct.mlxsw_thermal** %7, align 8
  %16 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %17 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %18 = call i64 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal* %16, %struct.thermal_cooling_device* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %30 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %27, i32 %28, %struct.thermal_cooling_device* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @WARN_ON(i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal*, %struct.thermal_cooling_device*) #1

declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
