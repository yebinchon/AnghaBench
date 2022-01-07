; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_get_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_get_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_rsc_common = type { i32 }
%struct.mlx5_qp_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_core_rsc_common* (%struct.mlx5_qp_table*, i32)* @mlx5_get_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_core_rsc_common* @mlx5_get_rsc(%struct.mlx5_qp_table* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_qp_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_rsc_common*, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5_qp_table* %0, %struct.mlx5_qp_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %11, i32 0, i32 1
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.mlx5_core_rsc_common* @radix_tree_lookup(i32* %12, i32 %13)
  store %struct.mlx5_core_rsc_common* %14, %struct.mlx5_core_rsc_common** %5, align 8
  %15 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %5, align 8
  %16 = icmp ne %struct.mlx5_core_rsc_common* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %18, i32 0, i32 0
  %20 = call i32 @refcount_inc(i32* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %5, align 8
  ret %struct.mlx5_core_rsc_common* %26
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mlx5_core_rsc_common* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
