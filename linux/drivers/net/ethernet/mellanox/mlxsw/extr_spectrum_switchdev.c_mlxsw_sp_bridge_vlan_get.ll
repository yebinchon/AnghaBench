; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_vlan_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_vlan_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_vlan = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_bridge_vlan* (%struct.mlxsw_sp_bridge_port*, i32)* @mlxsw_sp_bridge_vlan_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_get(%struct.mlxsw_sp_bridge_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge_vlan*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_bridge_vlan*, align 8
  store %struct.mlxsw_sp_bridge_port* %0, %struct.mlxsw_sp_bridge_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_find(%struct.mlxsw_sp_bridge_port* %7, i32 %8)
  store %struct.mlxsw_sp_bridge_vlan* %9, %struct.mlxsw_sp_bridge_vlan** %6, align 8
  %10 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_bridge_vlan* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %6, align 8
  store %struct.mlxsw_sp_bridge_vlan* %13, %struct.mlxsw_sp_bridge_vlan** %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_create(%struct.mlxsw_sp_bridge_port* %15, i32 %16)
  store %struct.mlxsw_sp_bridge_vlan* %17, %struct.mlxsw_sp_bridge_vlan** %3, align 8
  br label %18

18:                                               ; preds = %14, %12
  %19 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %3, align 8
  ret %struct.mlxsw_sp_bridge_vlan* %19
}

declare dso_local %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_find(%struct.mlxsw_sp_bridge_port*, i32) #1

declare dso_local %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_create(%struct.mlxsw_sp_bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
