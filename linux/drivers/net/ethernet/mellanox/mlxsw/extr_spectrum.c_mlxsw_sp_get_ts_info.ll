; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp*, %struct.ethtool_ts_info*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @mlxsw_sp_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mlxsw_sp_port* %8, %struct.mlxsw_sp_port** %5, align 8
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  store %struct.mlxsw_sp* %11, %struct.mlxsw_sp** %6, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mlxsw_sp*, %struct.ethtool_ts_info*)*, i32 (%struct.mlxsw_sp*, %struct.ethtool_ts_info*)** %15, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %18 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %19 = call i32 %16(%struct.mlxsw_sp* %17, %struct.ethtool_ts_info* %18)
  ret i32 %19
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
