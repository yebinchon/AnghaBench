; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_encap_entry_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_encap_entry_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.mlx5_rep_uplink_priv }
%struct.mlx5_rep_uplink_priv = type { %struct.mlx5_tun_entropy }
%struct.mlx5_tun_entropy = type { i32 }
%struct.mlx5e_encap_entry = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_rep_encap_entry_detach(%struct.mlx5e_priv* %0, %struct.mlx5e_encap_entry* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_encap_entry*, align 8
  %5 = alloca %struct.mlx5e_rep_priv*, align 8
  %6 = alloca %struct.mlx5_rep_uplink_priv*, align 8
  %7 = alloca %struct.mlx5_tun_entropy*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_encap_entry* %1, %struct.mlx5e_encap_entry** %4, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %9, align 8
  store %struct.mlx5e_rep_priv* %10, %struct.mlx5e_rep_priv** %5, align 8
  %11 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %11, i32 0, i32 0
  store %struct.mlx5_rep_uplink_priv* %12, %struct.mlx5_rep_uplink_priv** %6, align 8
  %13 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %13, i32 0, i32 0
  store %struct.mlx5_tun_entropy* %14, %struct.mlx5_tun_entropy** %7, align 8
  %15 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %26, i32 0, i32 2
  %28 = call i32 @list_del_rcu(i32* %27)
  %29 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @mlx5e_rep_neigh_entry_release(%struct.TYPE_2__* %36)
  %38 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %38, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %7, align 8
  %41 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mlx5_tun_entropy_refcount_dec(%struct.mlx5_tun_entropy* %40, i32 %43)
  br label %45

45:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx5e_rep_neigh_entry_release(%struct.TYPE_2__*) #1

declare dso_local i32 @mlx5_tun_entropy_refcount_dec(%struct.mlx5_tun_entropy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
