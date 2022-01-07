; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_vxlan_call_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_vxlan_call_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32, i32, i8*, i32, i64, i8*, i32, i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SWITCHDEV_VXLAN_FDB_ADD_TO_BRIDGE = common dso_local global i32 0, align 4
@SWITCHDEV_VXLAN_FDB_DEL_TO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i32, %union.mlxsw_sp_l3addr*, i8*, i32)* @mlxsw_sp_fdb_vxlan_call_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fdb_vxlan_call_notifiers(%struct.net_device* %0, i8* %1, i32 %2, %union.mlxsw_sp_l3addr* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.mlxsw_sp_l3addr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.switchdev_notifier_vxlan_fdb_info, align 8
  %14 = alloca %struct.vxlan_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %union.mlxsw_sp_l3addr* %3, %union.mlxsw_sp_l3addr** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %16)
  store %struct.vxlan_dev* %17, %struct.vxlan_dev** %14, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @SWITCHDEV_VXLAN_FDB_ADD_TO_BRIDGE, align 4
  br label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @SWITCHDEV_VXLAN_FDB_DEL_TO_BRIDGE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %10, align 8
  %28 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 7
  %29 = call i32 @mlxsw_sp_switchdev_addr_vxlan_convert(i32 %26, %union.mlxsw_sp_l3addr* %27, i32* %28)
  %30 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %31 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 6
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @ether_addr_copy(i32 %39, i8* %40)
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %13, i32 0, i32 1
  %49 = call i32 @call_switchdev_notifiers(i32 %46, %struct.net_device* %47, i32* %48, i32* null)
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_switchdev_addr_vxlan_convert(i32, %union.mlxsw_sp_l3addr*, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @call_switchdev_notifiers(i32, %struct.net_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
