; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_fid_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_fid_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_fid*, i32, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@MLXSW_SP_FLOOD_TYPE_BC = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_MC = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_UC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port_vlan*)* @mlxsw_sp_port_vlan_fid_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_vlan_fid_leave(%struct.mlxsw_sp_port_vlan* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_port_vlan** %2, align 8
  %7 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %7, i32 0, i32 2
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  store %struct.mlxsw_sp_port* %9, %struct.mlxsw_sp_port** %3, align 8
  %10 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %11, align 8
  store %struct.mlxsw_sp_fid* %12, %struct.mlxsw_sp_fid** %4, align 8
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %19, i32 0, i32 0
  store %struct.mlxsw_sp_fid* null, %struct.mlxsw_sp_fid** %20, align 8
  %21 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid* %21, %struct.mlxsw_sp_port* %22, i32 %23)
  %25 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %26 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_BC, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %30 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %34 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_UC, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %38 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %37)
  ret void
}

declare dso_local i32 @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
