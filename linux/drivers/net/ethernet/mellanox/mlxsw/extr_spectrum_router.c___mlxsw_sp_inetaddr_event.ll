; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_inetaddr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_inetaddr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*)* @__mlxsw_sp_inetaddr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_inetaddr_event(%struct.mlxsw_sp* %0, %struct.net_device* %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %7, align 8
  %11 = call i64 @mlxsw_sp_port_dev_check(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %17 = call i32 @mlxsw_sp_inetaddr_port_event(%struct.net_device* %14, i64 %15, %struct.netlink_ext_ack* %16)
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i64 @netif_is_lag_master(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %26 = call i32 @mlxsw_sp_inetaddr_lag_event(%struct.net_device* %23, i64 %24, %struct.netlink_ext_ack* %25)
  store i32 %26, i32* %5, align 4
  br label %58

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call i64 @netif_is_bridge_master(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %36 = call i32 @mlxsw_sp_inetaddr_bridge_event(%struct.mlxsw_sp* %32, %struct.net_device* %33, i64 %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %5, align 4
  br label %58

37:                                               ; preds = %27
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i64 @is_vlan_dev(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %46 = call i32 @mlxsw_sp_inetaddr_vlan_event(%struct.mlxsw_sp* %42, %struct.net_device* %43, i64 %44, %struct.netlink_ext_ack* %45)
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %37
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = call i64 @netif_is_macvlan(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %56 = call i32 @mlxsw_sp_inetaddr_macvlan_event(%struct.mlxsw_sp* %52, %struct.net_device* %53, i64 %54, %struct.netlink_ext_ack* %55)
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %51, %41, %31, %22, %13
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @mlxsw_sp_port_dev_check(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_port_event(%struct.net_device*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_lag_event(%struct.net_device*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_bridge_event(%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_vlan_event(%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_macvlan_event(%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
