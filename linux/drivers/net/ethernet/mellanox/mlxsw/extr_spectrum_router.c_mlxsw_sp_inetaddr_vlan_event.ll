; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_vlan_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_vlan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*)* @mlxsw_sp_inetaddr_vlan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_inetaddr_vlan_event(%struct.mlxsw_sp* %0, %struct.net_device* %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %12)
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call i32 @vlan_dev_vlan_id(%struct.net_device* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call i64 @netif_is_bridge_port(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = call i64 @mlxsw_sp_port_dev_check(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %30 = call i32 @mlxsw_sp_inetaddr_port_vlan_event(%struct.net_device* %25, %struct.net_device* %26, i64 %27, i32 %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %5, align 4
  br label %59

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = call i64 @netif_is_lag_master(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %41 = call i32 @__mlxsw_sp_inetaddr_lag_event(%struct.net_device* %36, %struct.net_device* %37, i64 %38, i32 %39, %struct.netlink_ext_ack* %40)
  store i32 %41, i32* %5, align 4
  br label %59

42:                                               ; preds = %31
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = call i64 @netif_is_bridge_master(%struct.net_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = call i64 @br_vlan_enabled(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %55 = call i32 @mlxsw_sp_inetaddr_bridge_event(%struct.mlxsw_sp* %51, %struct.net_device* %52, i64 %53, %struct.netlink_ext_ack* %54)
  store i32 %55, i32* %5, align 4
  br label %59

56:                                               ; preds = %46, %42
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %50, %35, %24, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i64 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local i64 @mlxsw_sp_port_dev_check(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_port_vlan_event(%struct.net_device*, %struct.net_device*, i64, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i32 @__mlxsw_sp_inetaddr_lag_event(%struct.net_device*, %struct.net_device*, i64, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local i64 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_inetaddr_bridge_event(%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
