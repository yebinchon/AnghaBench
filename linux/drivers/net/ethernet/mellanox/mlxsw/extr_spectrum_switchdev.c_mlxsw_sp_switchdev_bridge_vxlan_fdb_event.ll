; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_bridge_vxlan_fdb_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_bridge_vxlan_fdb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_switchdev_event_work = type { i32, %struct.switchdev_notifier_fdb_info, %struct.net_device* }
%struct.switchdev_notifier_fdb_info = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32, i32, i32, i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@SWITCHDEV_VXLAN_FDB_OFFLOADED = common dso_local global i32 0, align 4
@SWITCHDEV_FDB_OFFLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_fid*, i32)* @mlxsw_sp_switchdev_bridge_vxlan_fdb_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_switchdev_bridge_vxlan_fdb_event(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_switchdev_event_work* %1, %struct.mlxsw_sp_fid* %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_switchdev_event_work*, align 8
  %7 = alloca %struct.mlxsw_sp_fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.switchdev_notifier_vxlan_fdb_info, align 4
  %10 = alloca %struct.switchdev_notifier_fdb_info*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.mlxsw_sp_l3addr, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_switchdev_event_work* %1, %struct.mlxsw_sp_switchdev_event_work** %6, align 8
  store %struct.mlxsw_sp_fid* %2, %struct.mlxsw_sp_fid** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %11, align 8
  %18 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %18, i32 0, i32 1
  store %struct.switchdev_notifier_fdb_info* %19, %struct.switchdev_notifier_fdb_info** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %11, align 8
  %21 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %22 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @vxlan_fdb_find_uc(%struct.net_device* %20, i32 %23, i32 %24, %struct.switchdev_notifier_vxlan_fdb_info* %9)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %73

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 3
  %31 = call i32 @mlxsw_sp_switchdev_vxlan_addr_convert(i32* %30, i32* %12, %union.mlxsw_sp_l3addr* %13)
  %32 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %6, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %73 [
    i32 129, label %35
    i32 128, label %60
  ]

35:                                               ; preds = %29
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %40 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %39)
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp* %36, i32 %38, i32 %40, i32 %41, %union.mlxsw_sp_l3addr* %13, i32 1, i32 0)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %73

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @SWITCHDEV_VXLAN_FDB_OFFLOADED, align 4
  %49 = load %struct.net_device*, %struct.net_device** %11, align 8
  %50 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 1
  %51 = call i32 @call_switchdev_notifiers(i32 %48, %struct.net_device* %49, i32* %50, i32* null)
  %52 = load i32, i32* @SWITCHDEV_FDB_OFFLOADED, align 4
  %53 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %56 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %11, align 8
  %59 = call i32 @mlxsw_sp_fdb_call_notifiers(i32 %52, i32 %54, i32 %57, %struct.net_device* %58, i32 1)
  br label %73

60:                                               ; preds = %29
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %62 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %65 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp* %61, i32 %63, i32 %65, i32 %66, %union.mlxsw_sp_l3addr* %13, i32 0, i32 0)
  store i32 %67, i32* %14, align 4
  %68 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @SWITCHDEV_VXLAN_FDB_OFFLOADED, align 4
  %70 = load %struct.net_device*, %struct.net_device** %11, align 8
  %71 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %9, i32 0, i32 1
  %72 = call i32 @call_switchdev_notifiers(i32 %69, %struct.net_device* %70, i32* %71, i32* null)
  br label %73

73:                                               ; preds = %28, %45, %29, %60, %46
  ret void
}

declare dso_local i32 @vxlan_fdb_find_uc(%struct.net_device*, i32, i32, %struct.switchdev_notifier_vxlan_fdb_info*) #1

declare dso_local i32 @mlxsw_sp_switchdev_vxlan_addr_convert(i32*, i32*, %union.mlxsw_sp_l3addr*) #1

declare dso_local i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp*, i32, i32, i32, %union.mlxsw_sp_l3addr*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @call_switchdev_notifiers(i32, %struct.net_device*, i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_fdb_call_notifiers(i32, i32, i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
