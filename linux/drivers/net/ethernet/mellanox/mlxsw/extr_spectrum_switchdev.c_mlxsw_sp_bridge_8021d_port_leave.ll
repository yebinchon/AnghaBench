; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_port_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_port_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32 }

@MLXSW_SP_DEFAULT_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*)* @mlxsw_sp_bridge_8021d_port_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_bridge_8021d_port_leave(%struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_port* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %4, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %5, align 8
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %6, align 8
  %10 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = call i64 @is_vlan_dev(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call i32 @vlan_dev_vlan_id(%struct.net_device* %17)
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MLXSW_SP_DEFAULT_VID, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port* %23, i32 %24)
  store %struct.mlxsw_sp_port_vlan* %25, %struct.mlxsw_sp_port_vlan** %7, align 8
  %26 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %7, align 8
  %27 = icmp ne %struct.mlxsw_sp_port_vlan* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %7, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %21
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %7, align 8
  %36 = call i32 @mlxsw_sp_port_vlan_bridge_leave(%struct.mlxsw_sp_port_vlan* %35)
  br label %37

37:                                               ; preds = %34, %33
  ret void
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_bridge_leave(%struct.mlxsw_sp_port_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
