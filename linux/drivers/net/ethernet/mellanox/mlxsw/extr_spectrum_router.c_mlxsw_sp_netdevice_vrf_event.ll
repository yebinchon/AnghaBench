; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_vrf_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_vrf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.netlink_ext_ack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_netdevice_vrf_event(%struct.net_device* %0, i64 %1, %struct.netdev_notifier_changeupper_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netdev_notifier_changeupper_info* %2, %struct.netdev_notifier_changeupper_info** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %11)
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %14 = icmp ne %struct.mlxsw_sp* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i64 @netif_is_macvlan(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  switch i64 %21, label %41 [
    i64 128, label %22
    i64 129, label %23
  ]

22:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %43

23:                                               ; preds = %20
  %24 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %7, align 8
  %25 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %7, align 8
  %30 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %29, i32 0, i32 0
  %31 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32* %30)
  store %struct.netlink_ext_ack* %31, %struct.netlink_ext_ack** %10, align 8
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %35 = call i32 @mlxsw_sp_port_vrf_join(%struct.mlxsw_sp* %32, %struct.net_device* %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @mlxsw_sp_port_vrf_leave(%struct.mlxsw_sp* %37, %struct.net_device* %38)
  br label %40

40:                                               ; preds = %36, %28
  br label %41

41:                                               ; preds = %20, %40
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %22, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local i64 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @mlxsw_sp_port_vrf_join(%struct.mlxsw_sp*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_port_vrf_leave(%struct.mlxsw_sp*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
