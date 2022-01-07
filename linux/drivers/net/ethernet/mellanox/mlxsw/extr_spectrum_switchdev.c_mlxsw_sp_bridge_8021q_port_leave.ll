; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_port_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_port_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@MLXSW_SP_DEFAULT_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*)* @mlxsw_sp_bridge_8021q_port_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_bridge_8021q_port_leave(%struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_port* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %4, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %5, align 8
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %6, align 8
  %7 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %8 = load i32, i32* @MLXSW_SP_DEFAULT_VID, align 4
  %9 = call i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port* %7, i32 %8)
  ret void
}

declare dso_local i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
