; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_free_tx_skbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_free_tx_skbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32**, i32, %struct.xgmac_dma_desc* }
%struct.xgmac_dma_desc = type { i32 }

@DMA_TX_RING_SZ = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgmac_priv*)* @xgmac_free_tx_skbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_free_tx_skbufs(%struct.xgmac_priv* %0) #0 {
  %2 = alloca %struct.xgmac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgmac_dma_desc*, align 8
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %2, align 8
  %5 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %6 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %5, i32 0, i32 0
  %7 = load i32**, i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %78

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %75, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %75

25:                                               ; preds = %15
  %26 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %27 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %26, i32 0, i32 2
  %28 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %28, i64 %30
  store %struct.xgmac_dma_desc* %31, %struct.xgmac_dma_desc** %4, align 8
  %32 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %33 = call i64 @desc_get_tx_fs(%struct.xgmac_dma_desc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %37 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %40 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %39)
  %41 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %42 = call i32 @desc_get_buf_len(%struct.xgmac_dma_desc* %41)
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(i32 %38, i32 %40, i32 %42, i32 %43)
  br label %55

45:                                               ; preds = %25
  %46 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %47 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %50 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %49)
  %51 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %52 = call i32 @desc_get_buf_len(%struct.xgmac_dma_desc* %51)
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_unmap_page(i32 %48, i32 %50, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %35
  %56 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %57 = call i64 @desc_get_tx_ls(%struct.xgmac_dma_desc* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %61 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @dev_kfree_skb_any(i32* %66)
  br label %68

68:                                               ; preds = %59, %55
  %69 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %70 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %24
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %11

78:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @desc_get_tx_fs(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @desc_get_buf_addr(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @desc_get_buf_len(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i64 @desc_get_tx_ls(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
