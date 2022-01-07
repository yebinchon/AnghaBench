; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_free_rx_mpwqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_free_rx_mpwqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32 }
%struct.mlx5e_mpw_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32 }

@MLX5_MPWRQ_PAGES_PER_WQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.mlx5e_mpw_info*, i32)* @mlx5e_free_rx_mpwqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_free_rx_mpwqe(%struct.mlx5e_rq* %0, %struct.mlx5e_mpw_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_mpw_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_dma_info*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_mpw_info* %1, %struct.mlx5e_mpw_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  store %struct.mlx5e_dma_info* %13, %struct.mlx5e_dma_info** %8, align 8
  %14 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MLX5_MPWRQ_PAGES_PER_WQE, align 4
  %18 = call i64 @bitmap_full(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLX5_MPWRQ_PAGES_PER_WQE, align 4
  %26 = call i32 @bitmap_empty(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %50, %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MLX5_MPWRQ_PAGES_PER_WQE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @test_bit(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34, %31
  %42 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %43 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %43, i64 %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mlx5e_page_release(%struct.mlx5e_rq* %42, %struct.mlx5e_dma_info* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %27

53:                                               ; preds = %20, %27
  ret void
}

declare dso_local i64 @bitmap_full(i32, i32) #1

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mlx5e_page_release(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
