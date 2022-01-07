; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_fdb_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_fdb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_notifier_fdb_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32, i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, i32, i32, %struct.mlxsw_sp_bridge_device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_notifier_fdb_info*, i32)* @mlxsw_sp_port_fdb_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_fdb_set(%struct.mlxsw_sp_port* %0, %struct.switchdev_notifier_fdb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.switchdev_notifier_fdb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %11 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %12 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.switchdev_notifier_fdb_info* %1, %struct.switchdev_notifier_fdb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %16, align 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %8, align 8
  %18 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %6, align 8
  %19 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32 %24, %struct.net_device* %25)
  store %struct.mlxsw_sp_bridge_port* %26, %struct.mlxsw_sp_bridge_port** %12, align 8
  %27 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %28 = icmp ne %struct.mlxsw_sp_bridge_port* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %80

32:                                               ; preds = %3
  %33 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %33, i32 0, i32 3
  %35 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %34, align 8
  store %struct.mlxsw_sp_bridge_device* %35, %struct.mlxsw_sp_bridge_device** %11, align 8
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %37 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %38 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %6, align 8
  %39 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_bridge(%struct.mlxsw_sp_port* %36, %struct.mlxsw_sp_bridge_device* %37, i32 %40)
  store %struct.mlxsw_sp_port_vlan* %41, %struct.mlxsw_sp_port_vlan** %10, align 8
  %42 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %43 = icmp ne %struct.mlxsw_sp_port_vlan* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %80

45:                                               ; preds = %32
  %46 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlxsw_sp_fid_index(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %45
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %59 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %6, align 8
  %63 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mlxsw_sp_port_fdb_uc_op(%struct.mlxsw_sp* %58, i32 %61, i32 %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %4, align 4
  br label %80

68:                                               ; preds = %45
  %69 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %70 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %6, align 8
  %74 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @mlxsw_sp_port_fdb_uc_lag_op(%struct.mlxsw_sp* %69, i32 %72, i32 %75, i32 %76, i32 %77, i32 %78, i32 0)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %68, %57, %44, %29
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_bridge(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_device*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local i32 @mlxsw_sp_port_fdb_uc_op(%struct.mlxsw_sp*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_fdb_uc_lag_op(%struct.mlxsw_sp*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
