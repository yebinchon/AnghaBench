; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_encap_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_encap_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_encap_entry = type { i64, i32, i32, i32, i32, i32, i32 }

@MLX5_ENCAP_ENTRY_VALID = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_encap_entry*)* @mlx5e_encap_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_encap_dealloc(%struct.mlx5e_priv* %0, %struct.mlx5e_encap_entry* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_encap_entry*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_encap_entry* %1, %struct.mlx5e_encap_entry** %4, align 8
  %5 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %5, i32 0, i32 6
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netdev_priv(i32 %19)
  %21 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %22 = call i32 @mlx5e_rep_encap_entry_detach(i32 %20, %struct.mlx5e_encap_entry* %21)
  %23 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MLX5_ENCAP_ENTRY_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlx5_packet_reformat_dealloc(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %16
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kfree(i32 %41)
  %43 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %4, align 8
  %48 = load i32, i32* @rcu, align 4
  %49 = call i32 @kfree_rcu(%struct.mlx5e_encap_entry* %47, i32 %48)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mlx5e_rep_encap_entry_detach(i32, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @netdev_priv(i32) #1

declare dso_local i32 @mlx5_packet_reformat_dealloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfree_rcu(%struct.mlx5e_encap_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
