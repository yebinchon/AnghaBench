; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32, i32, %struct.TYPE_3__*, i64, %struct.sk_buff**, i32, %struct.xgmac_dma_desc* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xgmac_dma_desc = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@DMA_RX_RING_SZ = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"rx ring: head %d, tail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgmac_priv*)* @xgmac_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_rx_refill(%struct.xgmac_priv* %0) #0 {
  %2 = alloca %struct.xgmac_priv*, align 8
  %3 = alloca %struct.xgmac_dma_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %2, align 8
  %8 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %9 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETH_HLEN, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @ETH_FCS_LEN, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %94, %1
  %18 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %19 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %22 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %25 = call i32 @dma_ring_space(i32 %20, i32 %23, i32 %24)
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %114

27:                                               ; preds = %17
  %28 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %32 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %31, i32 0, i32 6
  %33 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %33, i64 %35
  store %struct.xgmac_dma_desc* %36, %struct.xgmac_dma_desc** %3, align 8
  %37 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %38 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %37, i32 0, i32 4
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = icmp eq %struct.sk_buff* %43, null
  br i1 %44, label %45, label %94

45:                                               ; preds = %27
  %46 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %47 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_3__* %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = icmp eq %struct.sk_buff* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %114

57:                                               ; preds = %45
  %58 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %59 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %65 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NET_IP_ALIGN, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_map_single(i32 %60, i32 %63, i64 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %72 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @dma_mapping_error(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %57
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %78)
  br label %114

80:                                               ; preds = %57
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %83 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %82, i32 0, i32 4
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %84, i64 %86
  store %struct.sk_buff* %81, %struct.sk_buff** %87, align 8
  %88 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %91 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @desc_set_buf_addr(%struct.xgmac_dma_desc* %88, i32 %89, i64 %92)
  br label %94

94:                                               ; preds = %80, %27
  %95 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %96 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %99 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %102 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @netdev_dbg(%struct.TYPE_3__* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %106 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %109 = call i32 @dma_ring_incr(i32 %107, i32 %108)
  %110 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %111 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %3, align 8
  %113 = call i32 @desc_set_rx_owner(%struct.xgmac_dma_desc* %112)
  br label %17

114:                                              ; preds = %77, %56, %17
  ret void
}

declare dso_local i32 @dma_ring_space(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @desc_set_buf_addr(%struct.xgmac_dma_desc*, i32, i64) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @dma_ring_incr(i32, i32) #1

declare dso_local i32 @desc_set_rx_owner(%struct.xgmac_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
