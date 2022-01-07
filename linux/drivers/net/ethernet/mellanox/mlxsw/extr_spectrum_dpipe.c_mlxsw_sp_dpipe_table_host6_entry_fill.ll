; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host6_entry_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host6_entry_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { i32 }
%struct.mlxsw_sp_neigh_entry = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_dpipe_entry*, %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_rif*)* @mlxsw_sp_dpipe_table_host6_entry_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_dpipe_table_host6_entry_fill(%struct.devlink_dpipe_entry* %0, %struct.mlxsw_sp_neigh_entry* %1, %struct.mlxsw_sp_rif* %2) #0 {
  %4 = alloca %struct.devlink_dpipe_entry*, align 8
  %5 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_rif*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i8*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %4, align 8
  store %struct.mlxsw_sp_neigh_entry* %1, %struct.mlxsw_sp_neigh_entry** %5, align 8
  store %struct.mlxsw_sp_rif* %2, %struct.mlxsw_sp_rif** %6, align 8
  %9 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %10 = call i8* @mlxsw_sp_neigh_entry_ha(%struct.mlxsw_sp_neigh_entry* %9)
  store i8* %10, i8** %8, align 8
  %11 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %12 = call %struct.in6_addr* @mlxsw_sp_neigh6_entry_dip(%struct.mlxsw_sp_neigh_entry* %11)
  store %struct.in6_addr* %12, %struct.in6_addr** %7, align 8
  %13 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %4, align 8
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %17 = call i32 @__mlxsw_sp_dpipe_table_host_entry_fill(%struct.devlink_dpipe_entry* %13, %struct.mlxsw_sp_rif* %14, i8* %15, %struct.in6_addr* %16)
  ret void
}

declare dso_local i8* @mlxsw_sp_neigh_entry_ha(%struct.mlxsw_sp_neigh_entry*) #1

declare dso_local %struct.in6_addr* @mlxsw_sp_neigh6_entry_dip(%struct.mlxsw_sp_neigh_entry*) #1

declare dso_local i32 @__mlxsw_sp_dpipe_table_host_entry_fill(%struct.devlink_dpipe_entry*, %struct.mlxsw_sp_rif*, i8*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
