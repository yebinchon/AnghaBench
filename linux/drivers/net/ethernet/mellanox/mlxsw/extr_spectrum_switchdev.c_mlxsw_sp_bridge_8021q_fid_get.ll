; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_fid_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_fid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_8021q_fid_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fid* @mlxsw_sp_bridge_8021q_fid_get(%struct.mlxsw_sp_bridge_device* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlxsw_sp_fid*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(i32 %14)
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %8, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021q_get(%struct.mlxsw_sp* %16, i32 %17)
  store %struct.mlxsw_sp_fid* %18, %struct.mlxsw_sp_fid** %10, align 8
  %19 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %20 = call i64 @IS_ERR(%struct.mlxsw_sp_fid* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %23, %struct.mlxsw_sp_fid** %4, align 8
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %26 = call i64 @mlxsw_sp_fid_vni_is_set(%struct.mlxsw_sp_fid* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %29, %struct.mlxsw_sp_fid** %4, align 8
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.net_device* @mlxsw_sp_bridge_8021q_vxlan_dev_find(i32 %33, i32 %34)
  store %struct.net_device* %35, %struct.net_device** %9, align 8
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %39, %struct.mlxsw_sp_fid** %4, align 8
  br label %62

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = call i32 @netif_running(%struct.net_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %45, %struct.mlxsw_sp_fid** %4, align 8
  br label %62

46:                                               ; preds = %40
  %47 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %51 = call i32 @mlxsw_sp_bridge_8021q_vxlan_join(%struct.mlxsw_sp_bridge_device* %47, %struct.net_device* %48, i32 %49, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %46
  %56 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %56, %struct.mlxsw_sp_fid** %4, align 8
  br label %62

57:                                               ; preds = %54
  %58 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %59 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %58)
  %60 = load i32, i32* %11, align 4
  %61 = call %struct.mlxsw_sp_fid* @ERR_PTR(i32 %60)
  store %struct.mlxsw_sp_fid* %61, %struct.mlxsw_sp_fid** %4, align 8
  br label %62

62:                                               ; preds = %57, %55, %44, %38, %28, %22
  %63 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  ret %struct.mlxsw_sp_fid* %63
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(i32) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021q_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_fid*) #1

declare dso_local i64 @mlxsw_sp_fid_vni_is_set(%struct.mlxsw_sp_fid*) #1

declare dso_local %struct.net_device* @mlxsw_sp_bridge_8021q_vxlan_dev_find(i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_8021q_vxlan_join(%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local %struct.mlxsw_sp_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
