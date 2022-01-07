; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_bridge_vxlan_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_bridge_vxlan_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Multicast can not be enabled on a bridge with a VxLAN device\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Multiple VxLAN devices are not supported in a VLAN-unaware bridge\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Multiple VxLAN devices cannot have the same VLAN as PVID and egress untagged\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_vxlan_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_bridge_vxlan_is_valid(%struct.net_device* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call i64 @br_multicast_enabled(%struct.net_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %11 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @br_vlan_enabled(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @mlxsw_sp_bridge_has_multiple_vxlans(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %22 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

23:                                               ; preds = %16, %12
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i64 @br_vlan_enabled(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @mlxsw_sp_bridge_vxlan_vlan_is_valid(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %33 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %32, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %27, %23
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %20, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @br_multicast_enabled(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i64 @mlxsw_sp_bridge_has_multiple_vxlans(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_vxlan_vlan_is_valid(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
