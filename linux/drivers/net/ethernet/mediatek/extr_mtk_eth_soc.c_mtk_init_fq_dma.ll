; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_init_fq_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_init_fq_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MTK_DMA_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_QDMA_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MTK_QDMA_FQ_HEAD = common dso_local global i32 0, align 4
@MTK_QDMA_FQ_TAIL = common dso_local global i32 0, align 4
@MTK_QDMA_FQ_CNT = common dso_local global i32 0, align 4
@MTK_QDMA_FQ_BLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_init_fq_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_init_fq_dma(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %8 = load i32, i32* @MTK_DMA_SIZE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.TYPE_2__* @dma_alloc_coherent(i32 %11, i32 %15, i32* %17, i32 %18)
  %20 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %20, i32 0, i32 1
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %158

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MTK_QDMA_PAGE_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kcalloc(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %158

51:                                               ; preds = %33
  %52 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MTK_QDMA_PAGE_SIZE, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_map_single(i32 %54, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %64 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dma_mapping_error(i32 %65, i32 %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %158

73:                                               ; preds = %51
  %74 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %75 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = add i64 %77, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %132, %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %135

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @MTK_QDMA_PAGE_SIZE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %95 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %88
  %106 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %107 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = add i64 %109, %113
  %115 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %116 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i64 %114, i64* %121, align 8
  br label %122

122:                                              ; preds = %105, %88
  %123 = load i32, i32* @MTK_QDMA_PAGE_SIZE, align 4
  %124 = call i32 @TX_DMA_SDL(i32 %123)
  %125 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %126 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i32 %124, i32* %131, align 4
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %84

135:                                              ; preds = %84
  %136 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %137 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %138 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MTK_QDMA_FQ_HEAD, align 4
  %141 = call i32 @mtk_w32(%struct.mtk_eth* %136, i32 %139, i32 %140)
  %142 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @MTK_QDMA_FQ_TAIL, align 4
  %145 = call i32 @mtk_w32(%struct.mtk_eth* %142, i32 %143, i32 %144)
  %146 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %147 = load i32, i32* %5, align 4
  %148 = shl i32 %147, 16
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @MTK_QDMA_FQ_CNT, align 4
  %152 = call i32 @mtk_w32(%struct.mtk_eth* %146, i32 %150, i32 %151)
  %153 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %154 = load i32, i32* @MTK_QDMA_PAGE_SIZE, align 4
  %155 = shl i32 %154, 16
  %156 = load i32, i32* @MTK_QDMA_FQ_BLEN, align 4
  %157 = call i32 @mtk_w32(%struct.mtk_eth* %153, i32 %155, i32 %156)
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %135, %70, %48, %30
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_2__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @TX_DMA_SDL(i32) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
