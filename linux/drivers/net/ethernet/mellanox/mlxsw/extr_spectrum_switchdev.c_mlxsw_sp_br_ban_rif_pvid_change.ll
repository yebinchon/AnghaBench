; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_br_ban_rif_pvid_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_br_ban_rif_pvid_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64, i32 }
%struct.mlxsw_sp_rif = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }

@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Can't change PVID, it's used by router interface\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Can't remove PVID, it's used by router interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, %struct.switchdev_obj_port_vlan*)* @mlxsw_sp_br_ban_rif_pvid_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_br_ban_rif_pvid_change(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.mlxsw_sp_rif*, align 8
  %9 = alloca %struct.mlxsw_sp_fid*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %12, %struct.net_device* %13)
  store %struct.mlxsw_sp_rif* %14, %struct.mlxsw_sp_rif** %8, align 8
  %15 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %16 = icmp ne %struct.mlxsw_sp_rif* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %20 = call %struct.mlxsw_sp_fid* @mlxsw_sp_rif_fid(%struct.mlxsw_sp_rif* %19)
  store %struct.mlxsw_sp_fid* %20, %struct.mlxsw_sp_fid** %9, align 8
  %21 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %22 = call i64 @mlxsw_sp_fid_8021q_vid(%struct.mlxsw_sp_fid* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %24 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %60, %18
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %29 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %34 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %39
  br label %59

49:                                               ; preds = %32
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %11, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %26

63:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %53, %43, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_rif_fid(%struct.mlxsw_sp_rif*) #1

declare dso_local i64 @mlxsw_sp_fid_8021q_vid(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
