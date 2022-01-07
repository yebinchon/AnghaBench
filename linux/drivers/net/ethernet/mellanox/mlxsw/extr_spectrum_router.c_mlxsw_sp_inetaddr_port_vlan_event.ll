; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_port_vlan_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_port_vlan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, i64, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_inetaddr_port_vlan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_inetaddr_port_vlan_event(%struct.net_device* %0, %struct.net_device* %1, i64 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp_port*, align 8
  %13 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %14)
  store %struct.mlxsw_sp_port* %15, %struct.mlxsw_sp_port** %12, align 8
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port* %16, i32 %17)
  store %struct.mlxsw_sp_port_vlan* %18, %struct.mlxsw_sp_port_vlan** %13, align 8
  %19 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %13, align 8
  %20 = icmp ne %struct.mlxsw_sp_port_vlan* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  switch i64 %29, label %38 [
    i64 128, label %30
    i64 129, label %35
  ]

30:                                               ; preds = %28
  %31 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %13, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %34 = call i32 @mlxsw_sp_port_vlan_router_join(%struct.mlxsw_sp_port_vlan* %31, %struct.net_device* %32, %struct.netlink_ext_ack* %33)
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %13, align 8
  %37 = call i32 @mlxsw_sp_port_vlan_router_leave(%struct.mlxsw_sp_port_vlan* %36)
  br label %38

38:                                               ; preds = %28, %35
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %30, %25
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_router_join(%struct.mlxsw_sp_port_vlan*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_router_leave(%struct.mlxsw_sp_port_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
