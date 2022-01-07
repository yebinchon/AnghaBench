; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_macvlan_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_macvlan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@NETDEV_PRECHANGEUPPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown upper device type\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i8*)* @mlxsw_sp_netdevice_macvlan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_macvlan_event(%struct.net_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %11)
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %14, %struct.netdev_notifier_changeupper_info** %9, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %16 = icmp ne %struct.mlxsw_sp* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NETDEV_PRECHANGEUPPER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %30

22:                                               ; preds = %17
  %23 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %24 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %23, i32 0, i32 0
  %25 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32* %24)
  store %struct.netlink_ext_ack* %25, %struct.netlink_ext_ack** %10, align 8
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %27 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
