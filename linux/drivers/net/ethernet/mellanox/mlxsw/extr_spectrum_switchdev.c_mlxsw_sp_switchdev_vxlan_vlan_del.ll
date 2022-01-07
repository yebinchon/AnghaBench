; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, %struct.net_device*, i64)* @mlxsw_sp_switchdev_vxlan_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_switchdev_vxlan_vlan_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_bridge_device* %1, %struct.net_device* %2, i64 %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vxlan_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_sp_fid*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_bridge_device* %1, %struct.mlxsw_sp_bridge_device** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %12)
  store %struct.vxlan_dev* %13, %struct.vxlan_dev** %9, align 8
  %14 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %15 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup_by_vni(%struct.mlxsw_sp* %23, i32 %24)
  store %struct.mlxsw_sp_fid* %25, %struct.mlxsw_sp_fid** %11, align 8
  %26 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %11, align 8
  %27 = icmp ne %struct.mlxsw_sp_fid* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %42

29:                                               ; preds = %22
  %30 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %11, align 8
  %31 = call i64 @mlxsw_sp_fid_8021q_vid(%struct.mlxsw_sp_fid* %30)
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @mlxsw_sp_bridge_vxlan_leave(%struct.mlxsw_sp* %36, %struct.net_device* %37)
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %11, align 8
  %41 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %40)
  br label %42

42:                                               ; preds = %39, %28, %21
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup_by_vni(%struct.mlxsw_sp*, i32) #1

declare dso_local i64 @mlxsw_sp_fid_8021q_vid(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_bridge_vxlan_leave(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
