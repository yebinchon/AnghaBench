; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_mdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_mdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.net_device*, %struct.mlxsw_sp* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_obj_port_mdb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.mlxsw_sp_port_vlan = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { %struct.mlxsw_sp_bridge_device* }
%struct.mlxsw_sp_mid = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to remove port from MC DB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_obj_port_mdb*)* @mlxsw_sp_port_mdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_mdb_del(%struct.mlxsw_sp_port* %0, %struct.switchdev_obj_port_mdb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %9 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %12 = alloca %struct.mlxsw_sp_mid*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_obj_port_mdb** %5, align 8
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %6, align 8
  %17 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  %18 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %10, align 8
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32 %26, %struct.net_device* %27)
  store %struct.mlxsw_sp_bridge_port* %28, %struct.mlxsw_sp_bridge_port** %11, align 8
  %29 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %30 = icmp ne %struct.mlxsw_sp_bridge_port* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

32:                                               ; preds = %2
  %33 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %33, i32 0, i32 0
  %35 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %34, align 8
  store %struct.mlxsw_sp_bridge_device* %35, %struct.mlxsw_sp_bridge_device** %9, align 8
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %37 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %9, align 8
  %38 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  %39 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_bridge(%struct.mlxsw_sp_port* %36, %struct.mlxsw_sp_bridge_device* %37, i32 %40)
  store %struct.mlxsw_sp_port_vlan* %41, %struct.mlxsw_sp_port_vlan** %8, align 8
  %42 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %8, align 8
  %43 = icmp ne %struct.mlxsw_sp_port_vlan* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

45:                                               ; preds = %32
  %46 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %8, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlxsw_sp_fid_index(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %9, align 8
  %51 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  %52 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_get(%struct.mlxsw_sp_bridge_device* %50, i32 %53, i32 %54)
  store %struct.mlxsw_sp_mid* %55, %struct.mlxsw_sp_mid** %12, align 8
  %56 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %12, align 8
  %57 = icmp ne %struct.mlxsw_sp_mid* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %45
  %59 = load %struct.net_device*, %struct.net_device** %10, align 8
  %60 = call i32 @netdev_err(%struct.net_device* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %45
  %64 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %65 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %66 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %12, align 8
  %67 = call i32 @__mlxsw_sp_port_mdb_del(%struct.mlxsw_sp_port* %64, %struct.mlxsw_sp_bridge_port* %65, %struct.mlxsw_sp_mid* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %58, %44, %31
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_bridge(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_device*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_get(%struct.mlxsw_sp_bridge_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @__mlxsw_sp_port_mdb_del(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_mid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
