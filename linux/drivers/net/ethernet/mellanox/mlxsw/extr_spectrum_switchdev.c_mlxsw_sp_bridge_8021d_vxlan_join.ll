; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_vxlan_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_vxlan_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_nve_params = type { %struct.net_device*, i32, i32 }
%struct.mlxsw_sp_fid = type { i32 }

@MLXSW_SP_NVE_TYPE_VXLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Did not find a corresponding FID\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"VNI is already set on FID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_8021d_vxlan_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_bridge_8021d_vxlan_join(%struct.mlxsw_sp_bridge_device* %0, %struct.net_device* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca %struct.vxlan_dev*, align 8
  %12 = alloca %struct.mlxsw_sp_nve_params, align 8
  %13 = alloca %struct.mlxsw_sp_fid*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.TYPE_4__* %17)
  store %struct.mlxsw_sp* %18, %struct.mlxsw_sp** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %19)
  store %struct.vxlan_dev* %20, %struct.vxlan_dev** %11, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %12, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %22, %struct.net_device** %21, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %12, i32 0, i32 1
  %24 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %25 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %23, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %12, i32 0, i32 2
  %29 = load i32, i32* @MLXSW_SP_NVE_TYPE_VXLAN, align 4
  store i32 %29, i32* %28, align 4
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %31 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021d_lookup(%struct.mlxsw_sp* %30, i32 %35)
  store %struct.mlxsw_sp_fid* %36, %struct.mlxsw_sp_fid** %13, align 8
  %37 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %38 = icmp ne %struct.mlxsw_sp_fid* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %4
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %41 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %69

44:                                               ; preds = %4
  %45 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %46 = call i64 @mlxsw_sp_fid_vni_is_set(%struct.mlxsw_sp_fid* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %50 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %65

53:                                               ; preds = %44
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %55 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %57 = call i32 @mlxsw_sp_nve_fid_enable(%struct.mlxsw_sp* %54, %struct.mlxsw_sp_fid* %55, %struct.mlxsw_sp_nve_params* %12, %struct.netlink_ext_ack* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %64

61:                                               ; preds = %53
  %62 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %63 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %62)
  store i32 0, i32* %5, align 4
  br label %69

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %67 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %61, %39
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.TYPE_4__*) #1

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021d_lookup(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @mlxsw_sp_fid_vni_is_set(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_nve_fid_enable(%struct.mlxsw_sp*, %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_nve_params*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
