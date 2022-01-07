; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlans_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlans_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_port_obj_info = type { i32, i32, %struct.switchdev_trans*, i32 }
%struct.switchdev_trans = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i64, i64 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_notifier_port_obj_info*)* @mlxsw_sp_switchdev_vxlan_vlans_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_switchdev_vxlan_vlans_add(%struct.net_device* %0, %struct.switchdev_notifier_port_obj_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_notifier_port_obj_info*, align 8
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.switchdev_trans*, align 8
  %10 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_notifier_port_obj_info* %1, %struct.switchdev_notifier_port_obj_info** %5, align 8
  %16 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %5, align 8
  %17 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(i32 %18)
  store %struct.switchdev_obj_port_vlan* %19, %struct.switchdev_obj_port_vlan** %6, align 8
  %20 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %21 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %26 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %5, align 8
  %31 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %30, i32 0, i32 2
  %32 = load %struct.switchdev_trans*, %struct.switchdev_trans** %31, align 8
  store %struct.switchdev_trans* %32, %struct.switchdev_trans** %9, align 8
  %33 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %5, align 8
  %34 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %33, i32 0, i32 1
  %35 = call %struct.netlink_ext_ack* @switchdev_notifier_info_to_extack(i32* %34)
  store %struct.netlink_ext_ack* %35, %struct.netlink_ext_ack** %11, align 8
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %36)
  store %struct.net_device* %37, %struct.net_device** %13, align 8
  %38 = load %struct.net_device*, %struct.net_device** %13, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

41:                                               ; preds = %2
  %42 = load %struct.net_device*, %struct.net_device** %13, align 8
  %43 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %42)
  store %struct.mlxsw_sp* %43, %struct.mlxsw_sp** %12, align 8
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %45 = icmp ne %struct.mlxsw_sp* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %99

47:                                               ; preds = %41
  %48 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %5, align 8
  %49 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.switchdev_trans*, %struct.switchdev_trans** %9, align 8
  %51 = call i64 @switchdev_trans_ph_commit(%struct.switchdev_trans* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %99

54:                                               ; preds = %47
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %13, align 8
  %59 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %57, %struct.net_device* %58)
  store %struct.mlxsw_sp_bridge_device* %59, %struct.mlxsw_sp_bridge_device** %10, align 8
  %60 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %61 = icmp ne %struct.mlxsw_sp_bridge_device* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %99

65:                                               ; preds = %54
  %66 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %99

71:                                               ; preds = %65
  %72 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %73 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %95, %71
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %78 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %76, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %83 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %89 = call i32 @mlxsw_sp_switchdev_vxlan_vlan_add(%struct.mlxsw_sp* %82, %struct.mlxsw_sp_bridge_device* %83, %struct.net_device* %84, i64 %85, i32 %86, i32 %87, %struct.netlink_ext_ack* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %3, align 4
  br label %99

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %14, align 8
  br label %75

98:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %92, %70, %62, %53, %46, %40
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(i32) #1

declare dso_local %struct.netlink_ext_ack* @switchdev_notifier_info_to_extack(i32*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local i64 @switchdev_trans_ph_commit(%struct.switchdev_trans*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_switchdev_vxlan_vlan_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, %struct.net_device*, i64, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
