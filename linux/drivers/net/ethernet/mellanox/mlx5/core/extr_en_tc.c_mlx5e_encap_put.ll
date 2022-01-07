; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_encap_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_encap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_encap_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_encap_put(%struct.mlx5e_priv* %0, %struct.mlx5e_encap_entry* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_encap_entry*, align 8
  %5 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_encap_entry* %1, %struct.mlx5e_encap_entry** %4, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  store %struct.mlx5_eswitch* %11, %struct.mlx5_eswitch** %5, align 8
  %12 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %12, i32 0, i32 1
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @refcount_dec_and_mutex_lock(i32* %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %21, i32 0, i32 0
  %23 = call i32 @hash_del_rcu(i32* %22)
  %24 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %29 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %30 = call i32 @mlx5e_encap_dealloc(%struct.mlx5e_priv* %28, %struct.mlx5e_encap_entry* %29)
  br label %31

31:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5e_encap_dealloc(%struct.mlx5e_priv*, %struct.mlx5e_encap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
