; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_bridge_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_bridge_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, %struct.net_device*, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown upper device type\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"macvlan is only supported on top of router interfaces\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i8*)* @mlxsw_sp_netdevice_bridge_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_bridge_event(%struct.net_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %12)
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %15, %struct.netdev_notifier_changeupper_info** %9, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %17 = icmp ne %struct.mlxsw_sp* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %21 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %20, i32 0, i32 2
  %22 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32* %21)
  store %struct.netlink_ext_ack* %22, %struct.netlink_ext_ack** %10, align 8
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %87 [
    i64 128, label %24
    i64 129, label %61
  ]

24:                                               ; preds = %19
  %25 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %26 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %25, i32 0, i32 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %11, align 8
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = call i32 @is_vlan_dev(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %11, align 8
  %33 = call i32 @netif_is_macvlan(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %88

40:                                               ; preds = %31, %24
  %41 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %42 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %87

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %11, align 8
  %48 = call i32 @netif_is_macvlan(%struct.net_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %51, %struct.net_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %57 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %88

60:                                               ; preds = %50, %46
  br label %87

61:                                               ; preds = %19
  %62 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %63 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %62, i32 0, i32 1
  %64 = load %struct.net_device*, %struct.net_device** %63, align 8
  store %struct.net_device* %64, %struct.net_device** %11, align 8
  %65 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %66 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %87

70:                                               ; preds = %61
  %71 = load %struct.net_device*, %struct.net_device** %11, align 8
  %72 = call i32 @is_vlan_dev(%struct.net_device* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = call i32 @mlxsw_sp_rif_destroy_by_dev(%struct.mlxsw_sp* %75, %struct.net_device* %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.net_device*, %struct.net_device** %11, align 8
  %80 = call i32 @netif_is_macvlan(%struct.net_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %84 = load %struct.net_device*, %struct.net_device** %11, align 8
  %85 = call i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp* %83, %struct.net_device* %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %19, %86, %69, %60, %45
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %55, %35, %18
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_destroy_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
