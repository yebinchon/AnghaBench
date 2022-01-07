; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_free_txqsq_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_free_txqsq_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i64, i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mlx5e_tx_wqe_info* }
%struct.mlx5e_tx_wqe_info = type { i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mlx5e_sq_dma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_free_txqsq_descs(%struct.mlx5e_txqsq* %0) #0 {
  %2 = alloca %struct.mlx5e_txqsq*, align 8
  %3 = alloca %struct.mlx5e_tx_wqe_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_sq_dma*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %2, align 8
  %10 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %68, %38, %1
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %16
  %23 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %23, i32 0, i32 5
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @mlx5_wq_cyc_ctr2ix(i32* %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %30, i64 %31
  store %struct.mlx5e_tx_wqe_info* %32, %struct.mlx5e_tx_wqe_info** %3, align 8
  %33 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %33, i32 0, i32 2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %22
  %39 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %40 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %3, align 8
  %41 = call i32 @mlx5e_ktls_tx_handle_resync_dump_comp(%struct.mlx5e_txqsq* %39, %struct.mlx5e_tx_wqe_info* %40, i64* %5)
  %42 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %16

47:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %5, align 8
  %58 = trunc i64 %56 to i32
  %59 = call %struct.mlx5e_sq_dma* @mlx5e_dma_get(%struct.mlx5e_txqsq* %55, i32 %58)
  store %struct.mlx5e_sq_dma* %59, %struct.mlx5e_sq_dma** %9, align 8
  %60 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %9, align 8
  %64 = call i32 @mlx5e_tx_dma_unmap(i32 %62, %struct.mlx5e_sq_dma* %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %69)
  %71 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %16

76:                                               ; preds = %16
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %79 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %82 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  ret void
}

declare dso_local i64 @mlx5_wq_cyc_ctr2ix(i32*, i64) #1

declare dso_local i32 @mlx5e_ktls_tx_handle_resync_dump_comp(%struct.mlx5e_txqsq*, %struct.mlx5e_tx_wqe_info*, i64*) #1

declare dso_local %struct.mlx5e_sq_dma* @mlx5e_dma_get(%struct.mlx5e_txqsq*, i32) #1

declare dso_local i32 @mlx5e_tx_dma_unmap(i32, %struct.mlx5e_sq_dma*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
