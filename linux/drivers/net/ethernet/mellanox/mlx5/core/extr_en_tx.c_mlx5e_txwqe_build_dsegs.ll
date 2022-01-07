; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_txwqe_build_dsegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_txwqe_build_dsegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.mlx5_wqe_data_seg = type { i8*, i32, i8* }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MLX5E_DMA_MAP_SINGLE = common dso_local global i32 0, align 4
@MLX5E_DMA_MAP_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_txqsq*, %struct.sk_buff*, i8*, i32, %struct.mlx5_wqe_data_seg*)* @mlx5e_txwqe_build_dsegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_txwqe_build_dsegs(%struct.mlx5e_txqsq* %0, %struct.sk_buff* %1, i8* %2, i32 %3, %struct.mlx5_wqe_data_seg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_txqsq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.mlx5_wqe_data_seg* %4, %struct.mlx5_wqe_data_seg** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %5
  %20 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call i32 @dma_map_single(i32 %22, i8* %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @dma_mapping_error(i32 %29, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %119

35:                                               ; preds = %19
  %36 = load i32, i32* %12, align 4
  %37 = call i8* @cpu_to_be64(i32 %36)
  %38 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %39 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %48 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MLX5E_DMA_MAP_SINGLE, align 4
  %53 = call i32 @mlx5e_dma_push(%struct.mlx5e_txqsq* %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %57 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %56, i32 1
  store %struct.mlx5_wqe_data_seg* %57, %struct.mlx5_wqe_data_seg** %11, align 8
  br label %58

58:                                               ; preds = %35, %5
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %114, %58
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %117

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %15, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @skb_frag_size(i32* %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = call i32 @skb_frag_dma_map(i32 %78, i32* %79, i32 0, i32 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %84 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @dma_mapping_error(i32 %85, i32 %86)
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %66
  br label %119

91:                                               ; preds = %66
  %92 = load i32, i32* %12, align 4
  %93 = call i8* @cpu_to_be64(i32 %92)
  %94 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %95 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %97 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %100 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i8* @cpu_to_be32(i32 %101)
  %103 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %104 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* @MLX5E_DMA_MAP_PAGE, align 4
  %109 = call i32 @mlx5e_dma_push(%struct.mlx5e_txqsq* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %113 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %112, i32 1
  store %struct.mlx5_wqe_data_seg* %113, %struct.mlx5_wqe_data_seg** %11, align 8
  br label %114

114:                                              ; preds = %91
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %59

117:                                              ; preds = %59
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %6, align 4
  br label %125

119:                                              ; preds = %90, %34
  %120 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @mlx5e_dma_unmap_wqe_err(%struct.mlx5e_txqsq* %120, i32 %121)
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %119, %117
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5e_dma_push(%struct.mlx5e_txqsq*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5e_dma_unmap_wqe_err(%struct.mlx5e_txqsq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
