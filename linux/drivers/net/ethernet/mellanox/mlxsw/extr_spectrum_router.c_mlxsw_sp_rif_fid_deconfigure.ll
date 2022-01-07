; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_fid_deconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_fid_deconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.mlxsw_sp_fid*, %struct.TYPE_2__*, %struct.mlxsw_sp* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp = type { i32 }

@MLXSW_SP_FLOOD_TYPE_BC = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_MC = common dso_local global i32 0, align 4
@MLXSW_REG_RITR_FID_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*)* @mlxsw_sp_rif_fid_deconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rif_fid_deconfigure(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_rif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fid*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %2, align 8
  %6 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %6, i32 0, i32 0
  %8 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %9 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %10, i32 0, i32 2
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %4, align 8
  %13 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %14, align 8
  store %struct.mlxsw_sp_fid* %15, %struct.mlxsw_sp_fid** %5, align 8
  %16 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %17 = call i32 @mlxsw_sp_fid_rif_set(%struct.mlxsw_sp_fid* %16, i32* null)
  %18 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %18, i32 0, i32 2
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %19, align 8
  %21 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %27 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %26)
  %28 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %20, i32 %25, i32 %27, i32 0)
  %29 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %30 = call i32 @mlxsw_sp_rif_macvlan_flush(%struct.mlxsw_sp_rif* %29)
  %31 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %31, i32 0, i32 0
  %33 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %32, align 8
  %34 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_BC, align 4
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %36 = call i32 @mlxsw_sp_router_port(%struct.mlxsw_sp* %35)
  %37 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %33, i32 %34, i32 %36, i32 0)
  %38 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %38, i32 0, i32 0
  %40 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %39, align 8
  %41 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %43 = call i32 @mlxsw_sp_router_port(%struct.mlxsw_sp* %42)
  %44 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %40, i32 %41, i32 %43, i32 0)
  %45 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %46 = load i32, i32* @MLXSW_REG_RITR_FID_IF, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @mlxsw_sp_rif_vlan_fid_op(%struct.mlxsw_sp_rif* %45, i32 %46, i32 %47, i32 0)
  ret void
}

declare dso_local i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_fid_rif_set(%struct.mlxsw_sp_fid*, i32*) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_rif_macvlan_flush(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_router_port(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_rif_vlan_fid_op(%struct.mlxsw_sp_rif*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
