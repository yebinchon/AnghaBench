; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh6_entry_dip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh6_entry_dip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.mlxsw_sp_neigh_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.neighbour* }
%struct.neighbour = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addr* @mlxsw_sp_neigh6_entry_dip(%struct.mlxsw_sp_neigh_entry* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %3 = alloca %struct.neighbour*, align 8
  store %struct.mlxsw_sp_neigh_entry* %0, %struct.mlxsw_sp_neigh_entry** %2, align 8
  %4 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  store %struct.neighbour* %7, %struct.neighbour** %3, align 8
  %8 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %9 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.in6_addr*
  ret %struct.in6_addr* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
