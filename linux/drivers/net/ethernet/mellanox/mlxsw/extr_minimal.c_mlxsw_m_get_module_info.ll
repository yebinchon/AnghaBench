; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32 }
%struct.mlxsw_m_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_core* }
%struct.mlxsw_core = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @mlxsw_m_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_m_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_modinfo*, align 8
  %5 = alloca %struct.mlxsw_m_port*, align 8
  %6 = alloca %struct.mlxsw_core*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlxsw_m_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mlxsw_m_port* %8, %struct.mlxsw_m_port** %5, align 8
  %9 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  store %struct.mlxsw_core* %13, %struct.mlxsw_core** %6, align 8
  %14 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %15 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %4, align 8
  %19 = call i32 @mlxsw_env_get_module_info(%struct.mlxsw_core* %14, i32 %17, %struct.ethtool_modinfo* %18)
  ret i32 %19
}

declare dso_local %struct.mlxsw_m_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_env_get_module_info(%struct.mlxsw_core*, i32, %struct.ethtool_modinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
