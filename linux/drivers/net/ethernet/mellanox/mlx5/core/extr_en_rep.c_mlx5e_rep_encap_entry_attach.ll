; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_encap_entry_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_encap_entry_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.TYPE_2__, %struct.mlx5_rep_uplink_priv }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_rep_uplink_priv = type { %struct.mlx5_tun_entropy }
%struct.mlx5_tun_entropy = type { i32 }
%struct.mlx5e_encap_entry = type { i32, %struct.mlx5e_neigh_hash_entry*, i32, i32 }
%struct.mlx5e_neigh_hash_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_rep_encap_entry_attach(%struct.mlx5e_priv* %0, %struct.mlx5e_encap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_encap_entry*, align 8
  %6 = alloca %struct.mlx5e_rep_priv*, align 8
  %7 = alloca %struct.mlx5_rep_uplink_priv*, align 8
  %8 = alloca %struct.mlx5_tun_entropy*, align 8
  %9 = alloca %struct.mlx5e_neigh_hash_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_encap_entry* %1, %struct.mlx5e_encap_entry** %5, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %12, align 8
  store %struct.mlx5e_rep_priv* %13, %struct.mlx5e_rep_priv** %6, align 8
  %14 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %14, i32 0, i32 1
  store %struct.mlx5_rep_uplink_priv* %15, %struct.mlx5_rep_uplink_priv** %7, align 8
  %16 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %16, i32 0, i32 0
  store %struct.mlx5_tun_entropy* %17, %struct.mlx5_tun_entropy** %8, align 8
  %18 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %8, align 8
  %19 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlx5_tun_entropy_refcount_inc(%struct.mlx5_tun_entropy* %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %2
  %28 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %33, i32 0, i32 3
  %35 = call %struct.mlx5e_neigh_hash_entry* @mlx5e_rep_neigh_entry_lookup(%struct.mlx5e_priv* %32, i32* %34)
  store %struct.mlx5e_neigh_hash_entry* %35, %struct.mlx5e_neigh_hash_entry** %9, align 8
  %36 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %9, align 8
  %37 = icmp ne %struct.mlx5e_neigh_hash_entry* %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %27
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %40 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %5, align 8
  %41 = call i32 @mlx5e_rep_neigh_entry_create(%struct.mlx5e_priv* %39, %struct.mlx5e_encap_entry* %40, %struct.mlx5e_neigh_hash_entry** %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %8, align 8
  %50 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mlx5_tun_entropy_refcount_dec(%struct.mlx5_tun_entropy* %49, i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %9, align 8
  %58 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %58, i32 0, i32 1
  store %struct.mlx5e_neigh_hash_entry* %57, %struct.mlx5e_neigh_hash_entry** %59, align 8
  %60 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %9, align 8
  %61 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, %struct.mlx5e_neigh_hash_entry* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %63, i32 0, i32 0
  %65 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, %struct.mlx5e_neigh_hash_entry* %65, i32 0, i32 1
  %67 = call i32 @list_add_rcu(i32* %64, i32* %66)
  %68 = load %struct.mlx5e_neigh_hash_entry*, %struct.mlx5e_neigh_hash_entry** %9, align 8
  %69 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, %struct.mlx5e_neigh_hash_entry* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %56, %44, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mlx5_tun_entropy_refcount_inc(%struct.mlx5_tun_entropy*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5e_neigh_hash_entry* @mlx5e_rep_neigh_entry_lookup(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_rep_neigh_entry_create(%struct.mlx5e_priv*, %struct.mlx5e_encap_entry*, %struct.mlx5e_neigh_hash_entry**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_tun_entropy_refcount_dec(%struct.mlx5_tun_entropy*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
