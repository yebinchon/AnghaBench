; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_bridge_vlan_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_bridge_vlan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, %struct.net_device*, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown upper device type\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"macvlan is only supported on top of router interfaces\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, i64, i8*, i32)* @mlxsw_sp_netdevice_bridge_vlan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_bridge_vlan_event(%struct.net_device* %0, %struct.net_device* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %14 = alloca %struct.netlink_ext_ack*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %16)
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %19, %struct.netdev_notifier_changeupper_info** %13, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %21 = icmp ne %struct.mlxsw_sp* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %80

23:                                               ; preds = %5
  %24 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %13, align 8
  %25 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %24, i32 0, i32 2
  %26 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32* %25)
  store %struct.netlink_ext_ack* %26, %struct.netlink_ext_ack** %14, align 8
  %27 = load i64, i64* %9, align 8
  switch i64 %27, label %79 [
    i64 128, label %28
    i64 129, label %61
  ]

28:                                               ; preds = %23
  %29 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %13, align 8
  %30 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %29, i32 0, i32 1
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %15, align 8
  %32 = load %struct.net_device*, %struct.net_device** %15, align 8
  %33 = call i32 @netif_is_macvlan(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %80

40:                                               ; preds = %28
  %41 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %13, align 8
  %42 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %79

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %15, align 8
  %48 = call i32 @netif_is_macvlan(%struct.net_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = call i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %51, %struct.net_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %57 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %80

60:                                               ; preds = %50, %46
  br label %79

61:                                               ; preds = %23
  %62 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %13, align 8
  %63 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %62, i32 0, i32 1
  %64 = load %struct.net_device*, %struct.net_device** %63, align 8
  store %struct.net_device* %64, %struct.net_device** %15, align 8
  %65 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %13, align 8
  %66 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %79

70:                                               ; preds = %61
  %71 = load %struct.net_device*, %struct.net_device** %15, align 8
  %72 = call i32 @netif_is_macvlan(%struct.net_device* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %76 = load %struct.net_device*, %struct.net_device** %15, align 8
  %77 = call i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp* %75, %struct.net_device* %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %23, %78, %69, %60, %45
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %55, %35, %22
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
