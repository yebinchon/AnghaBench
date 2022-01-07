; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_mlx5_rl_are_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_mlx5_rl_are_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_rate_limit = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_rl_are_equal(%struct.mlx5_rate_limit* %0, %struct.mlx5_rate_limit* %1) #0 {
  %3 = alloca %struct.mlx5_rate_limit*, align 8
  %4 = alloca %struct.mlx5_rate_limit*, align 8
  store %struct.mlx5_rate_limit* %0, %struct.mlx5_rate_limit** %3, align 8
  store %struct.mlx5_rate_limit* %1, %struct.mlx5_rate_limit** %4, align 8
  %5 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br label %28

28:                                               ; preds = %20, %12, %2
  %29 = phi i1 [ false, %12 ], [ false, %2 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
