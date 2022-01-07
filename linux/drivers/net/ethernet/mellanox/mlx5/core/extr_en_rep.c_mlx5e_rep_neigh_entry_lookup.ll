; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_entry_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_entry_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_neigh_hash_entry = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.mlx5e_neigh_update_table }
%struct.mlx5e_neigh_update_table = type { i32 }
%struct.mlx5e_neigh = type { i32 }

@mlx5e_neigh_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_neigh_hash_entry* (%struct.mlx5e_priv*, %struct.mlx5e_neigh*)* @mlx5e_rep_neigh_entry_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_neigh_hash_entry* @mlx5e_rep_neigh_entry_lookup(%struct.mlx5e_priv* %0, %struct.mlx5e_neigh* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_neigh*, align 8
  %5 = alloca %struct.mlx5e_rep_priv*, align 8
  %6 = alloca %struct.mlx5e_neigh_update_table*, align 8
  %7 = alloca %struct.mlx5e_neigh_hash_entry*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_neigh* %1, %struct.mlx5e_neigh** %4, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %9, align 8
  store %struct.mlx5e_rep_priv* %10, %struct.mlx5e_rep_priv** %5, align 8
  %11 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %11, i32 0, i32 0
  store %struct.mlx5e_neigh_update_table* %12, %struct.mlx5e_neigh_update_table** %6, align 8
  %13 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %13, i32 0, i32 0
  %15 = load %struct.mlx5e_neigh*, %struct.mlx5e_neigh** %4, align 8
  %16 = load i32, i32* @mlx5e_neigh_ht_params, align 4
  %17 = call %struct.mlx5e_neigh_hash_entry* @rhashtable_lookup_fast(i32* %14, %struct.mlx5e_neigh* %15, i32 %16)
  store %struct.mlx5e_neigh_hash_entry* %17, %struct.mlx5e_neigh_hash_entry** %7, align 8
  %18 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %7, align 8
  %19 = icmp ne %struct.mlx5e_neigh_hash_entry* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %7, align 8
  %22 = call i64 @mlx5e_rep_neigh_entry_hold(%struct.mlx5e_neigh_hash_entry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %7, align 8
  br label %27

26:                                               ; preds = %20, %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi %struct.mlx5e_neigh_hash_entry* [ %25, %24 ], [ null, %26 ]
  ret %struct.mlx5e_neigh_hash_entry* %28
}

declare dso_local %struct.mlx5e_neigh_hash_entry* @rhashtable_lookup_fast(i32*, %struct.mlx5e_neigh*, i32) #1

declare dso_local i64 @mlx5e_rep_neigh_entry_hold(%struct.mlx5e_neigh_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
