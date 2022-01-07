; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.h_mlx5_cqwq_get_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.h_mlx5_cqwq_get_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cqe64 = type { i64 }
%struct.mlx5_cqwq = type { i32 }

@MLX5_CQE_OWNER_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_cqe64* (%struct.mlx5_cqwq*)* @mlx5_cqwq_get_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_cqe64* @mlx5_cqwq_get_cqe(%struct.mlx5_cqwq* %0) #0 {
  %2 = alloca %struct.mlx5_cqe64*, align 8
  %3 = alloca %struct.mlx5_cqwq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5_cqwq* %0, %struct.mlx5_cqwq** %3, align 8
  %8 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %3, align 8
  %9 = call i32 @mlx5_cqwq_get_ci(%struct.mlx5_cqwq* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(%struct.mlx5_cqwq* %10, i32 %11)
  store %struct.mlx5_cqe64* %12, %struct.mlx5_cqe64** %5, align 8
  %13 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MLX5_CQE_OWNER_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %3, align 8
  %19 = call i32 @mlx5_cqwq_get_wrap_cnt(%struct.mlx5_cqwq* %18)
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store %struct.mlx5_cqe64* null, %struct.mlx5_cqe64** %2, align 8
  br label %29

26:                                               ; preds = %1
  %27 = call i32 (...) @dma_rmb()
  %28 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  store %struct.mlx5_cqe64* %28, %struct.mlx5_cqe64** %2, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %2, align 8
  ret %struct.mlx5_cqe64* %30
}

declare dso_local i32 @mlx5_cqwq_get_ci(%struct.mlx5_cqwq*) #1

declare dso_local %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(%struct.mlx5_cqwq*, i32) #1

declare dso_local i32 @mlx5_cqwq_get_wrap_cnt(%struct.mlx5_cqwq*) #1

declare dso_local i32 @dma_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
