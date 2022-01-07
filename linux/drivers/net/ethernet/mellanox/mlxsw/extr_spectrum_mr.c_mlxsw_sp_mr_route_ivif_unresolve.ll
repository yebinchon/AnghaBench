; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_ivif_unresolve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_ivif_unresolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr* }
%struct.mlxsw_sp_mr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mlxsw_sp*, i32, i32)* }
%struct.mlxsw_sp_mr_route_vif_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@MLXSW_SP_MR_ROUTE_ACTION_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route_vif_entry*)* @mlxsw_sp_mr_route_ivif_unresolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_mr_route_ivif_unresolve(%struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_route_vif_entry* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %4 = alloca %struct.mlxsw_sp_mr_route_vif_entry*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_mr*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %3, align 8
  store %struct.mlxsw_sp_mr_route_vif_entry* %1, %struct.mlxsw_sp_mr_route_vif_entry** %4, align 8
  %7 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %5, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %11, align 8
  store %struct.mlxsw_sp_mr* %12, %struct.mlxsw_sp_mr** %6, align 8
  %13 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.mlxsw_sp*, i32, i32)*, i32 (%struct.mlxsw_sp*, i32, i32)** %16, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %19 = load %struct.mlxsw_sp_mr_route_vif_entry*, %struct.mlxsw_sp_mr_route_vif_entry** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, %struct.mlxsw_sp_mr_route_vif_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLXSW_SP_MR_ROUTE_ACTION_TRAP, align 4
  %25 = call i32 %17(%struct.mlxsw_sp* %18, i32 %23, i32 %24)
  %26 = load i32, i32* @MLXSW_SP_MR_ROUTE_ACTION_TRAP, align 4
  %27 = load %struct.mlxsw_sp_mr_route_vif_entry*, %struct.mlxsw_sp_mr_route_vif_entry** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, %struct.mlxsw_sp_mr_route_vif_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.mlxsw_sp_mr_route_vif_entry*, %struct.mlxsw_sp_mr_route_vif_entry** %4, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, %struct.mlxsw_sp_mr_route_vif_entry* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @mlxsw_sp_mr_mfc_offload_update(%struct.TYPE_4__* %33)
  ret void
}

declare dso_local i32 @mlxsw_sp_mr_mfc_offload_update(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
