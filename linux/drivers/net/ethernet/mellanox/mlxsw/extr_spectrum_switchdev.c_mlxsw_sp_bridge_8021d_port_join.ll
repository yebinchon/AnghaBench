; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_port_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_port_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i64 }

@MLXSW_SP_DEFAULT_VID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Can not bridge VLAN uppers of the same port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_8021d_port_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_bridge_8021d_port_join(%struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_port* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %6, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %7, align 8
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %11, align 8
  %17 = call i64 @is_vlan_dev(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.net_device*, %struct.net_device** %11, align 8
  %21 = call i32 @vlan_dev_vlan_id(%struct.net_device* %20)
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @MLXSW_SP_DEFAULT_VID, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  store i32 %25, i32* %12, align 4
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port* %26, i32 %27)
  store %struct.mlxsw_sp_port_vlan* %28, %struct.mlxsw_sp_port_vlan** %10, align 8
  %29 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %30 = icmp ne %struct.mlxsw_sp_port_vlan* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %63

38:                                               ; preds = %24
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %40 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %6, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @mlxsw_sp_port_is_br_member(%struct.mlxsw_sp_port* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %47 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %63

50:                                               ; preds = %38
  %51 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %57 = call i32 @mlxsw_sp_port_vlan_router_leave(%struct.mlxsw_sp_port_vlan* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %60 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %7, align 8
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @mlxsw_sp_port_vlan_bridge_join(%struct.mlxsw_sp_port_vlan* %59, %struct.mlxsw_sp_bridge_port* %60, %struct.netlink_ext_ack* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %45, %35
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mlxsw_sp_port_is_br_member(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_router_leave(%struct.mlxsw_sp_port_vlan*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_bridge_join(%struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_bridge_port*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
