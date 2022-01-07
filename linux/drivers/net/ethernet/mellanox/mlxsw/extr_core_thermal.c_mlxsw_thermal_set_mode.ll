; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32, i32 }

@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @mlxsw_thermal_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_set_mode(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_thermal*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %7 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 2
  %8 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  store %struct.mlxsw_thermal* %8, %struct.mlxsw_thermal** %5, align 8
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %20 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %23 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %26 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %32 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %33 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %31, i32 %32)
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
