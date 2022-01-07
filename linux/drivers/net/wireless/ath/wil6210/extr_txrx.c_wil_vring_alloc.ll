; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_vring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_vring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_ring = type { i32, i32*, i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"vring_alloc:\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_DMA_STATUS_DU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"vring[%d] 0x%p:%pad 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil_ring*)* @wil_vring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_vring_alloc(%struct.wil6210_priv* %0, %struct.wil_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.wil_ring*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vring_tx_desc*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.wil_ring* %1, %struct.wil_ring** %5, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %11 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %13 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  store i64 %16, i64* %7, align 8
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %18 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @BUILD_BUG_ON(i32 1)
  %20 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %21 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %23 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %25 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %30 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %32 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %37 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %36, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %37, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %120

40:                                               ; preds = %2
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %42 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 32
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @DMA_BIT_MASK(i32 32)
  %48 = call i32 @dma_set_mask_and_coherent(%struct.device* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %53 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %52, i32 0, i32 2
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.TYPE_6__* @dma_alloc_coherent(%struct.device* %50, i64 %51, i32* %53, i32 %54)
  %56 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %57 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %56, i32 0, i32 3
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %57, align 8
  %58 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %59 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %49
  %63 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %64 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %68 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %120

71:                                               ; preds = %49
  %72 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %73 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 32
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %79 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DMA_BIT_MASK(i32 %80)
  %82 = call i32 @dma_set_mask_and_coherent(%struct.device* %77, i32 %81)
  br label %83

83:                                               ; preds = %76, %71
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %87 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %93 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store %struct.vring_tx_desc* %98, %struct.vring_tx_desc** %9, align 8
  %99 = load i32, i32* @TX_DMA_STATUS_DU, align 4
  %100 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %9, align 8
  %101 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store volatile i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %91
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %108 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %109 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %112 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %111, i32 0, i32 3
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %115 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %114, i32 0, i32 2
  %116 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %117 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %110, %struct.TYPE_6__* %113, i32* %115, i32* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %106, %62, %35
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.TYPE_6__* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
