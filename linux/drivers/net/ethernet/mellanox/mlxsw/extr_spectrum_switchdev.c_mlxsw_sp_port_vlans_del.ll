; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlans_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlans_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_obj_port_vlan*)* @mlxsw_sp_port_vlans_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_vlans_del(%struct.mlxsw_sp_port* %0, %struct.switchdev_obj_port_vlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %9 = alloca i64, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_obj_port_vlan** %5, align 8
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %6, align 8
  %13 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %14 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i64 @netif_is_bridge_master(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32 %26, %struct.net_device* %27)
  store %struct.mlxsw_sp_bridge_port* %28, %struct.mlxsw_sp_bridge_port** %8, align 8
  %29 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  %30 = icmp ne %struct.mlxsw_sp_bridge_port* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %23
  %39 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %48 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %61, %46
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %53 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %58 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @mlxsw_sp_bridge_port_vlan_del(%struct.mlxsw_sp_port* %57, %struct.mlxsw_sp_bridge_port* %58, i64 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %50

64:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %45, %35, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32, %struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_bridge_port_vlan_del(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
