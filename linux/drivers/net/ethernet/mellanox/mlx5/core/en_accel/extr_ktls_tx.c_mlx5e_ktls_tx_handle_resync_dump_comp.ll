; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_mlx5e_ktls_tx_handle_resync_dump_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_mlx5e_ktls_tx_handle_resync_dump_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, %struct.mlx5e_sq_stats* }
%struct.mlx5e_sq_stats = type { i32, i32 }
%struct.mlx5e_tx_wqe_info = type { i64, i32 }
%struct.mlx5e_sq_dma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_ktls_tx_handle_resync_dump_comp(%struct.mlx5e_txqsq* %0, %struct.mlx5e_tx_wqe_info* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5e_txqsq*, align 8
  %5 = alloca %struct.mlx5e_tx_wqe_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_sq_stats*, align 8
  %8 = alloca %struct.mlx5e_sq_dma*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %4, align 8
  store %struct.mlx5e_tx_wqe_info* %1, %struct.mlx5e_tx_wqe_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = call %struct.mlx5e_sq_dma* @mlx5e_dma_get(%struct.mlx5e_txqsq* %15, i32 %17)
  store %struct.mlx5e_sq_dma* %19, %struct.mlx5e_sq_dma** %8, align 8
  %20 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %20, i32 0, i32 1
  %22 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %21, align 8
  store %struct.mlx5e_sq_stats* %22, %struct.mlx5e_sq_stats** %7, align 8
  %23 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %8, align 8
  %27 = call i32 @mlx5e_tx_dma_unmap(i32 %25, %struct.mlx5e_sq_dma* %26)
  %28 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @put_page(i32 %30)
  %32 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %45

45:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.mlx5e_sq_dma* @mlx5e_dma_get(%struct.mlx5e_txqsq*, i32) #1

declare dso_local i32 @mlx5e_tx_dma_unmap(i32, %struct.mlx5e_sq_dma*) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
