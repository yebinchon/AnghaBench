; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_tx_post_resync_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_tx_post_resync_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32, i32, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i8*, i8*, i8* }
%struct.mlx5_wqe_data_seg = type { i8*, i32, i32 }
%struct.mlx5e_dump_wqe = type { %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_ctrl_seg }

@MLX5_SEND_WQE_DS = common dso_local global i32 0, align 4
@MLX5_OPCODE_DUMP = common dso_local global i32 0, align 4
@MLX5_FENCE_MODE_INITIATOR_SMALL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5E_DMA_MAP_PAGE = common dso_local global i32 0, align 4
@MLX5E_KTLS_DUMP_WQEBBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_txqsq*, i32*, i32, i32)* @tx_post_resync_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_post_resync_dump(%struct.mlx5e_txqsq* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_txqsq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %11 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %12 = alloca %struct.mlx5e_dump_wqe*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %18 = call %struct.mlx5e_dump_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq* %17, i32 48, i32* %16)
  store %struct.mlx5e_dump_wqe* %18, %struct.mlx5e_dump_wqe** %12, align 8
  %19 = load i32, i32* @MLX5_SEND_WQE_DS, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 48, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.mlx5e_dump_wqe*, %struct.mlx5e_dump_wqe** %12, align 8
  %24 = getelementptr inbounds %struct.mlx5e_dump_wqe, %struct.mlx5e_dump_wqe* %23, i32 0, i32 1
  store %struct.mlx5_wqe_ctrl_seg* %24, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %25 = load %struct.mlx5e_dump_wqe*, %struct.mlx5e_dump_wqe** %12, align 8
  %26 = getelementptr inbounds %struct.mlx5e_dump_wqe, %struct.mlx5e_dump_wqe* %25, i32 0, i32 0
  store %struct.mlx5_wqe_data_seg* %26, %struct.mlx5_wqe_data_seg** %11, align 8
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* @MLX5_OPCODE_DUMP, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %44 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 8
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %49 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* @MLX5_FENCE_MODE_INITIATOR_SMALL, align 4
  br label %55

54:                                               ; preds = %4
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %58 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @skb_frag_size(i32* %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @skb_frag_dma_map(i32 %63, i32* %64, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @dma_mapping_error(i32 %70, i32 %71)
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %111

78:                                               ; preds = %55
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @cpu_to_be64(i32 %79)
  %81 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %82 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %84 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %87 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i8* @cpu_to_be32(i32 %88)
  %90 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %91 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @MLX5E_DMA_MAP_PAGE, align 4
  %96 = call i32 @mlx5e_dma_push(%struct.mlx5e_txqsq* %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load i64, i64* @MLX5E_KTLS_DUMP_WQEBBS, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @skb_frag_page(i32* %101)
  %103 = call i32 @tx_fill_wi(%struct.mlx5e_txqsq* %97, i32 %98, i64 %99, i32 %100, i32 %102)
  %104 = load i64, i64* @MLX5E_KTLS_DUMP_WQEBBS, align 8
  %105 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %106 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %78, %75
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.mlx5e_dump_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq*, i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mlx5e_dma_push(%struct.mlx5e_txqsq*, i32, i32, i32) #1

declare dso_local i32 @tx_fill_wi(%struct.mlx5e_txqsq*, i32, i64, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
