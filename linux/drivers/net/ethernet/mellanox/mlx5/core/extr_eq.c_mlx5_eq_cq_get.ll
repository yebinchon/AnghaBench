; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_cq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_cq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_cq = type { i32 }
%struct.mlx5_eq = type { %struct.mlx5_cq_table }
%struct.mlx5_cq_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_core_cq* (%struct.mlx5_eq*, i32)* @mlx5_eq_cq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_core_cq* @mlx5_eq_cq_get(%struct.mlx5_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_eq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cq_table*, align 8
  %6 = alloca %struct.mlx5_core_cq*, align 8
  store %struct.mlx5_eq* %0, %struct.mlx5_eq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %7, i32 0, i32 0
  store %struct.mlx5_cq_table* %8, %struct.mlx5_cq_table** %5, align 8
  store %struct.mlx5_core_cq* null, %struct.mlx5_core_cq** %6, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.mlx5_core_cq* @radix_tree_lookup(i32* %11, i32 %12)
  store %struct.mlx5_core_cq* %13, %struct.mlx5_core_cq** %6, align 8
  %14 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  %15 = call i64 @likely(%struct.mlx5_core_cq* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  %19 = call i32 @mlx5_cq_hold(%struct.mlx5_core_cq* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  ret %struct.mlx5_core_cq* %22
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mlx5_core_cq* @radix_tree_lookup(i32*, i32) #1

declare dso_local i64 @likely(%struct.mlx5_core_cq*) #1

declare dso_local i32 @mlx5_cq_hold(%struct.mlx5_core_cq*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
