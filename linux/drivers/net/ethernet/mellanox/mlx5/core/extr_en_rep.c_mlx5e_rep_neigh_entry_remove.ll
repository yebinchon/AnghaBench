; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_entry_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_entry_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_neigh_hash_entry = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@mlx5e_neigh_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_neigh_hash_entry*)* @mlx5e_rep_neigh_entry_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_rep_neigh_entry_remove(%struct.mlx5e_neigh_hash_entry* %0) #0 {
  %2 = alloca %struct.mlx5e_neigh_hash_entry*, align 8
  %3 = alloca %struct.mlx5e_rep_priv*, align 8
  store %struct.mlx5e_neigh_hash_entry* %0, %struct.mlx5e_neigh_hash_entry** %2, align 8
  %4 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, %struct.mlx5e_neigh_hash_entry* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  store %struct.mlx5e_rep_priv* %8, %struct.mlx5e_rep_priv** %3, align 8
  %9 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, %struct.mlx5e_neigh_hash_entry* %13, i32 0, i32 1
  %15 = call i32 @list_del_rcu(i32* %14)
  %16 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, %struct.mlx5e_neigh_hash_entry* %19, i32 0, i32 0
  %21 = load i32, i32* @mlx5e_neigh_ht_params, align 4
  %22 = call i32 @rhashtable_remove_fast(i32* %18, i32* %20, i32 %21)
  %23 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
