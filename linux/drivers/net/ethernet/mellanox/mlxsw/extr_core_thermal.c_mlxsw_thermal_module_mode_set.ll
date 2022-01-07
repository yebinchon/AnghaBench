; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { i32, %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32 }

@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @mlxsw_thermal_module_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_mode_set(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_thermal_module*, align 8
  %6 = alloca %struct.mlxsw_thermal*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 2
  %9 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %8, align 8
  store %struct.mlxsw_thermal_module* %9, %struct.mlxsw_thermal_module** %5, align 8
  %10 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %10, i32 0, i32 1
  %12 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %11, align 8
  store %struct.mlxsw_thermal* %12, %struct.mlxsw_thermal** %6, align 8
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %24 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %27 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %30 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %36 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %37 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %35, i32 %36)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
