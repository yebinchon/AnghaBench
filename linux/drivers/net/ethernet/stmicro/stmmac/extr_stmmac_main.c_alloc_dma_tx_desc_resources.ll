; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_alloc_dma_tx_desc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_alloc_dma_tx_desc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i64, %struct.stmmac_tx_queue*, %struct.TYPE_2__* }
%struct.stmmac_tx_queue = type { i64, i8*, i32, i8*, i8*, i8*, %struct.stmmac_priv* }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_TX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @alloc_dma_tx_desc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dma_tx_desc_resources(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.stmmac_tx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %98, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %101

19:                                               ; preds = %15
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %21 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %20, i32 0, i32 2
  %22 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %22, i64 %23
  store %struct.stmmac_tx_queue* %24, %struct.stmmac_tx_queue** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %27 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %29 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %30 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %29, i32 0, i32 6
  store %struct.stmmac_priv* %28, %struct.stmmac_priv** %30, align 8
  %31 = load i32, i32* @DMA_TX_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 1, i32 %32)
  %34 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %35 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %37 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %19
  br label %102

41:                                               ; preds = %19
  %42 = load i32, i32* @DMA_TX_SIZE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %42, i32 8, i32 %43)
  %45 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %46 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %48 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %102

52:                                               ; preds = %41
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DMA_TX_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %66 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %65, i32 0, i32 2
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @dma_alloc_coherent(i32 %60, i32 %64, i32* %66, i32 %67)
  %69 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %70 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %72 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %57
  br label %102

76:                                               ; preds = %57
  br label %97

77:                                               ; preds = %52
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %79 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DMA_TX_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %86 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %85, i32 0, i32 2
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @dma_alloc_coherent(i32 %80, i32 %84, i32* %86, i32 %87)
  %89 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %90 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %92 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %77
  br label %102

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %15

101:                                              ; preds = %15
  store i32 0, i32* %2, align 4
  br label %106

102:                                              ; preds = %95, %75, %51, %40
  %103 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %104 = call i32 @free_dma_tx_desc_resources(%struct.stmmac_priv* %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %101
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @free_dma_tx_desc_resources(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
