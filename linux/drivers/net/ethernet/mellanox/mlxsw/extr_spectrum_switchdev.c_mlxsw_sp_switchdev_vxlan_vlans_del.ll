; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlans_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlans_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_port_obj_info = type { i32, i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.switchdev_notifier_port_obj_info*)* @mlxsw_sp_switchdev_vxlan_vlans_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_switchdev_vxlan_vlans_del(%struct.net_device* %0, %struct.switchdev_notifier_port_obj_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_notifier_port_obj_info*, align 8
  %5 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %6 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_notifier_port_obj_info* %1, %struct.switchdev_notifier_port_obj_info** %4, align 8
  %10 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %4, align 8
  %11 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(i32 %12)
  store %struct.switchdev_obj_port_vlan* %13, %struct.switchdev_obj_port_vlan** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %20)
  store %struct.mlxsw_sp* %21, %struct.mlxsw_sp** %7, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %23 = icmp ne %struct.mlxsw_sp* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %61

25:                                               ; preds = %19
  %26 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %4, align 8
  %27 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %30, %struct.net_device* %31)
  store %struct.mlxsw_sp_bridge_device* %32, %struct.mlxsw_sp_bridge_device** %6, align 8
  %33 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %6, align 8
  %34 = icmp ne %struct.mlxsw_sp_bridge_device* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %61

36:                                               ; preds = %25
  %37 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %61

42:                                               ; preds = %36
  %43 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %44 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %58, %42
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %49 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %54 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %6, align 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @mlxsw_sp_switchdev_vxlan_vlan_del(%struct.mlxsw_sp* %53, %struct.mlxsw_sp_bridge_device* %54, %struct.net_device* %55, i64 %56)
  br label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %9, align 8
  br label %46

61:                                               ; preds = %18, %24, %35, %41, %46
  ret void
}

declare dso_local %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(i32) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_switchdev_vxlan_vlan_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, %struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
