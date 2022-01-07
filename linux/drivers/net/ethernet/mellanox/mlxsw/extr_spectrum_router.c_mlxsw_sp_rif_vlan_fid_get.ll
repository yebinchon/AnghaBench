; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_vlan_fid_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_vlan_fid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_rif = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't determine bridge PVID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fid* (%struct.mlxsw_sp_rif*, %struct.netlink_ext_ack*)* @mlxsw_sp_rif_vlan_fid_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fid* @mlxsw_sp_rif_vlan_fid_get(%struct.mlxsw_sp_rif* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_fid*, align 8
  %4 = alloca %struct.mlxsw_sp_rif*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %9 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = call i64 @is_vlan_dev(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = call i32 @vlan_dev_vlan_id(%struct.net_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %22, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %24)
  store %struct.net_device* %25, %struct.net_device** %6, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i32 @netif_is_bridge_master(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.mlxsw_sp_fid* @ERR_PTR(i32 %35)
  store %struct.mlxsw_sp_fid* %36, %struct.mlxsw_sp_fid** %3, align 8
  br label %63

37:                                               ; preds = %17
  br label %55

38:                                               ; preds = %2
  %39 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %39, i32 0, i32 1
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = call i32 @br_vlan_get_pvid(%struct.net_device* %41, i32* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %50 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.mlxsw_sp_fid* @ERR_PTR(i32 %52)
  store %struct.mlxsw_sp_fid* %53, %struct.mlxsw_sp_fid** %3, align 8
  br label %63

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %62 = call %struct.mlxsw_sp_fid* @mlxsw_sp_bridge_fid_get(i32 %58, %struct.net_device* %59, i32 %60, %struct.netlink_ext_ack* %61)
  store %struct.mlxsw_sp_fid* %62, %struct.mlxsw_sp_fid** %3, align 8
  br label %63

63:                                               ; preds = %55, %48, %33
  %64 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  ret %struct.mlxsw_sp_fid* %64
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_fid* @ERR_PTR(i32) #1

declare dso_local i32 @br_vlan_get_pvid(%struct.net_device*, i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_bridge_fid_get(i32, %struct.net_device*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
