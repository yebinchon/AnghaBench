; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32, i32, %struct.sk_buff**, i32, i32, %struct.xgmac_dma_desc* }
%struct.sk_buff = type { i32 }
%struct.xgmac_dma_desc = type { i32 }

@DMA_TX_RING_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tx ring: curr %d, dirty %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgmac_priv*)* @xgmac_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_tx_complete(%struct.xgmac_priv* %0) #0 {
  %2 = alloca %struct.xgmac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xgmac_dma_desc*, align 8
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %2, align 8
  br label %6

6:                                                ; preds = %81, %1
  %7 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %11 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %14 = call i64 @dma_ring_cnt(i32 %9, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %93

16:                                               ; preds = %6
  %17 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  %20 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %21 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %20, i32 0, i32 2
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %24
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %4, align 8
  %27 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %28 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %27, i32 0, i32 5
  %29 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %29, i64 %31
  store %struct.xgmac_dma_desc* %32, %struct.xgmac_dma_desc** %5, align 8
  %33 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %34 = call i64 @desc_get_owner(%struct.xgmac_dma_desc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %93

37:                                               ; preds = %16
  %38 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %39 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %42 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %45 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netdev_dbg(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %49 = call i64 @desc_get_tx_fs(%struct.xgmac_dma_desc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %37
  %52 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %53 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %56 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %55)
  %57 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %58 = call i32 @desc_get_buf_len(%struct.xgmac_dma_desc* %57)
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_single(i32 %54, i32 %56, i32 %58, i32 %59)
  br label %71

61:                                               ; preds = %37
  %62 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %63 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %66 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %65)
  %67 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %68 = call i32 @desc_get_buf_len(%struct.xgmac_dma_desc* %67)
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_unmap_page(i32 %64, i32 %66, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %51
  %72 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %73 = call i64 @desc_get_tx_ls(%struct.xgmac_dma_desc* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %77 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %78 = call i32 @desc_get_tx_status(%struct.xgmac_priv* %76, %struct.xgmac_dma_desc* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @dev_consume_skb_any(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %83 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %82, i32 0, i32 2
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %84, i64 %86
  store %struct.sk_buff* null, %struct.sk_buff** %87, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %90 = call i32 @dma_ring_incr(i32 %88, i32 %89)
  %91 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %92 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %6

93:                                               ; preds = %36, %6
  %94 = call i32 (...) @smp_mb()
  %95 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %96 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @netif_queue_stopped(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %102 = call i64 @tx_dma_ring_space(%struct.xgmac_priv* %101)
  %103 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %104 = icmp sgt i64 %102, %103
  br label %105

105:                                              ; preds = %100, %93
  %106 = phi i1 [ false, %93 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %112 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @netif_wake_queue(i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  ret void
}

declare dso_local i64 @dma_ring_cnt(i32, i32, i32) #1

declare dso_local i64 @desc_get_owner(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @desc_get_tx_fs(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @desc_get_buf_addr(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @desc_get_buf_len(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i64 @desc_get_tx_ls(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @desc_get_tx_status(%struct.xgmac_priv*, %struct.xgmac_dma_desc*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dma_ring_incr(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @tx_dma_ring_space(%struct.xgmac_priv*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
