; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_core_bus_device_reload_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_core_bus_device_reload_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.netlink_ext_ack*)* @mlxsw_devlink_core_bus_device_reload_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_core_bus_device_reload_up(%struct.devlink* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca %struct.mlxsw_core*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  %6 = load %struct.devlink*, %struct.devlink** %3, align 8
  %7 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %6)
  store %struct.mlxsw_core* %7, %struct.mlxsw_core** %5, align 8
  %8 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.devlink*, %struct.devlink** %3, align 8
  %18 = call i32 @mlxsw_core_bus_device_register(i32 %10, i32 %13, i32 %16, i32 1, %struct.devlink* %17)
  ret i32 %18
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlxsw_core_bus_device_register(i32, i32, i32, i32, %struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
