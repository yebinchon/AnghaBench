; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.mlxsw_sp_bridge = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  store %struct.mlxsw_sp_bridge* %0, %struct.mlxsw_sp_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mlxsw_sp_bridge_port* null, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(%struct.mlxsw_sp_bridge* %14, %struct.net_device* %15)
  store %struct.mlxsw_sp_bridge_device* %16, %struct.mlxsw_sp_bridge_device** %7, align 8
  %17 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %18 = icmp ne %struct.mlxsw_sp_bridge_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.mlxsw_sp_bridge_port* null, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.mlxsw_sp_bridge_port* @__mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge_device* %21, %struct.net_device* %22)
  store %struct.mlxsw_sp_bridge_port* %23, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %24

24:                                               ; preds = %20, %19, %12
  %25 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %3, align 8
  ret %struct.mlxsw_sp_bridge_port* %25
}

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(%struct.mlxsw_sp_bridge*, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @__mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
