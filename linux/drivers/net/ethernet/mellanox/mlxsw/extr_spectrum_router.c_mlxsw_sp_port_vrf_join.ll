; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_port_vrf_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_port_vrf_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@NETDEV_DOWN = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_port_vrf_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_vrf_join(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %8, %struct.net_device* %9)
  store %struct.mlxsw_sp_rif* %10, %struct.mlxsw_sp_rif** %7, align 8
  %11 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %12 = icmp ne %struct.mlxsw_sp_rif* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32, i32* @NETDEV_DOWN, align 4
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %18 = call i32 @__mlxsw_sp_inetaddr_event(%struct.mlxsw_sp* %14, %struct.net_device* %15, i32 %16, %struct.netlink_ext_ack* %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* @NETDEV_UP, align 4
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %24 = call i32 @__mlxsw_sp_inetaddr_event(%struct.mlxsw_sp* %20, %struct.net_device* %21, i32 %22, %struct.netlink_ext_ack* %23)
  ret i32 %24
}

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @__mlxsw_sp_inetaddr_event(%struct.mlxsw_sp*, %struct.net_device*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
