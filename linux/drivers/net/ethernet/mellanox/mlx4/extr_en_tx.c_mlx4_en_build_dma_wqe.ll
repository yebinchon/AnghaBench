; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_build_dma_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_build_dma_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.device* }
%struct.device = type { i32 }
%struct.skb_shared_info = type { i32, i32* }
%struct.mlx4_wqe_data_seg = type { i8*, i8*, i8* }
%struct.sk_buff = type { i64 }
%struct.mlx4_en_tx_info = type { i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.skb_shared_info*, %struct.mlx4_wqe_data_seg*, %struct.sk_buff*, i32, i8*, %struct.mlx4_en_tx_info*)* @mlx4_en_build_dma_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_build_dma_wqe(%struct.mlx4_en_priv* %0, %struct.skb_shared_info* %1, %struct.mlx4_wqe_data_seg* %2, %struct.sk_buff* %3, i32 %4, i8* %5, %struct.mlx4_en_tx_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca %struct.skb_shared_info*, align 8
  %11 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mlx4_en_tx_info*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %9, align 8
  store %struct.skb_shared_info* %1, %struct.skb_shared_info** %10, align 8
  store %struct.mlx4_wqe_data_seg* %2, %struct.mlx4_wqe_data_seg** %11, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.mlx4_en_tx_info* %6, %struct.mlx4_en_tx_info** %15, align 8
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  %24 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %25 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %19, align 4
  br label %28

28:                                               ; preds = %65, %7
  %29 = load i32, i32* %19, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %28
  %32 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %33 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %19, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %20, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = call i64 @skb_frag_size(i32* %38)
  store i64 %39, i64* %18, align 8
  %40 = load %struct.device*, %struct.device** %16, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = load i64, i64* %18, align 8
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @skb_frag_dma_map(%struct.device* %40, i32* %41, i32 0, i64 %42, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.device*, %struct.device** %16, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i64 @dma_mapping_error(%struct.device* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %114

50:                                               ; preds = %31
  %51 = load i32, i32* %17, align 4
  %52 = call i8* @cpu_to_be64(i32 %51)
  %53 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %54 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %57 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = call i32 (...) @dma_wmb()
  %59 = load i64, i64* %18, align 8
  %60 = call i8* @cpu_to_be32(i64 %59)
  %61 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %62 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %64 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %63, i32 -1
  store %struct.mlx4_wqe_data_seg* %64, %struct.mlx4_wqe_data_seg** %11, align 8
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %19, align 4
  br label %28

68:                                               ; preds = %28
  %69 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %15, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = call i64 @skb_headlen(%struct.sk_buff* %74)
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  store i64 %78, i64* %18, align 8
  %79 = load %struct.device*, %struct.device** %16, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i64, i64* %18, align 8
  %87 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %88 = call i32 @dma_map_single(%struct.device* %79, i64 %85, i64 %86, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load %struct.device*, %struct.device** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i64 @dma_mapping_error(%struct.device* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  br label %114

94:                                               ; preds = %73
  %95 = load i32, i32* %17, align 4
  %96 = call i8* @cpu_to_be64(i32 %95)
  %97 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %98 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %101 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = call i32 (...) @dma_wmb()
  %103 = load i64, i64* %18, align 8
  %104 = call i8* @cpu_to_be32(i64 %103)
  %105 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %106 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %94, %68
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %15, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %15, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  store i32 1, i32* %8, align 4
  br label %140

114:                                              ; preds = %93, %49
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %116 = call i32 @en_err(%struct.mlx4_en_priv* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %124, %114
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  %120 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %121 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %117
  %125 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %126 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %125, i32 1
  store %struct.mlx4_wqe_data_seg* %126, %struct.mlx4_wqe_data_seg** %11, align 8
  %127 = load %struct.device*, %struct.device** %16, align 8
  %128 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %129 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @be64_to_cpu(i8* %130)
  %132 = trunc i64 %131 to i32
  %133 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %134 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @be32_to_cpu(i8* %135)
  %137 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %138 = call i32 @dma_unmap_page(%struct.device* %127, i32 %132, i32 %136, i32 %137)
  br label %117

139:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %107
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i8*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
