; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_vlan_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_vlan_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.switchdev_notifier_fdb_info = type { i8*, i32, i32 }

@SWITCHDEV_FDB_DEL_TO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*, i8*)* @mlxsw_sp_rif_vlan_fdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rif_vlan_fdb_del(%struct.mlxsw_sp_rif* %0, i8* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_notifier_fdb_info, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mlxsw_sp_fid_8021q_vid(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = call i64 @is_vlan_dev(%struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %21)
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi %struct.net_device* [ %22, %18 ], [ %26, %23 ]
  store %struct.net_device* %28, %struct.net_device** %7, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.net_device* @br_fdb_find_port(%struct.net_device* %29, i8* %30, i32 %31)
  store %struct.net_device* %32, %struct.net_device** %8, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %45

36:                                               ; preds = %27
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @SWITCHDEV_FDB_DEL_TO_BRIDGE, align 4
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %6, i32 0, i32 1
  %44 = call i32 @call_switchdev_notifiers(i32 %41, %struct.net_device* %42, i32* %43, i32* null)
  br label %45

45:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @mlxsw_sp_fid_8021q_vid(i32) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @br_fdb_find_port(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @call_switchdev_notifiers(i32, %struct.net_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
