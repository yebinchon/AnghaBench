; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlans_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlans_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_bridge_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_BRENTRY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_obj_port_vlan*, %struct.switchdev_trans*, %struct.netlink_ext_ack*)* @mlxsw_sp_port_vlans_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_vlans_add(%struct.mlxsw_sp_port* %0, %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_trans* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.switchdev_trans*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_obj_port_vlan** %7, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %18 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %19 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %24 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %28, i32 0, i32 0
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %29, align 8
  store %struct.mlxsw_sp* %30, %struct.mlxsw_sp** %12, align 8
  %31 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %32 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %13, align 8
  %35 = load %struct.net_device*, %struct.net_device** %13, align 8
  %36 = call i64 @netif_is_bridge_master(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %39 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %40 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %13, align 8
  %47 = call i64 @br_vlan_enabled(%struct.net_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.switchdev_trans*, %struct.switchdev_trans** %8, align 8
  %51 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %55 = load %struct.net_device*, %struct.net_device** %13, align 8
  %56 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %57 = call i32 @mlxsw_sp_br_ban_rif_pvid_change(%struct.mlxsw_sp* %54, %struct.net_device* %55, %struct.switchdev_obj_port_vlan* %56)
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %53, %49, %45, %38
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %5, align 4
  br label %121

66:                                               ; preds = %4
  %67 = load %struct.switchdev_trans*, %struct.switchdev_trans** %8, align 8
  %68 = call i64 @switchdev_trans_ph_commit(%struct.switchdev_trans* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %121

71:                                               ; preds = %66
  %72 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.net_device*, %struct.net_device** %13, align 8
  %76 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32 %74, %struct.net_device* %75)
  store %struct.mlxsw_sp_bridge_port* %76, %struct.mlxsw_sp_bridge_port** %14, align 8
  %77 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %14, align 8
  %78 = icmp ne %struct.mlxsw_sp_bridge_port* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %121

86:                                               ; preds = %71
  %87 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %14, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %121

94:                                               ; preds = %86
  %95 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %96 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %15, align 8
  br label %98

98:                                               ; preds = %117, %94
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %101 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %99, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %106 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %111 = call i32 @mlxsw_sp_bridge_port_vlan_add(%struct.mlxsw_sp_port* %105, %struct.mlxsw_sp_bridge_port* %106, i64 %107, i32 %108, i32 %109, %struct.netlink_ext_ack* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %5, align 4
  br label %121

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %15, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %15, align 8
  br label %98

120:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %114, %93, %83, %70, %64
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i64 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local i64 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @mlxsw_sp_br_ban_rif_pvid_change(%struct.mlxsw_sp*, %struct.net_device*, %struct.switchdev_obj_port_vlan*) #1

declare dso_local i64 @switchdev_trans_ph_commit(%struct.switchdev_trans*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32, %struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_bridge_port_vlan_add(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, i64, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
