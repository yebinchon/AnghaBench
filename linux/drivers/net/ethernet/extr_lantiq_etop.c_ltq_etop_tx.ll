; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.ltq_etop_priv = type { i32, %struct.TYPE_3__*, %struct.ltq_etop_chan* }
%struct.TYPE_3__ = type { i32 }
%struct.ltq_etop_chan = type { %struct.TYPE_4__, %struct.sk_buff** }
%struct.TYPE_4__ = type { i64, %struct.ltq_dma_desc* }
%struct.ltq_dma_desc = type { i32, i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@LTQ_DMA_OWN = common dso_local global i32 0, align 4
@LTQ_DMA_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tx ring full\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@LTQ_DMA_SOP = common dso_local global i32 0, align 4
@LTQ_DMA_EOP = common dso_local global i32 0, align 4
@LTQ_DMA_SIZE_MASK = common dso_local global i32 0, align 4
@LTQ_DESC_NUM = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ltq_etop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.ltq_etop_priv*, align 8
  %9 = alloca %struct.ltq_etop_chan*, align 8
  %10 = alloca %struct.ltq_dma_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %16, i32 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.ltq_etop_priv* %20, %struct.ltq_etop_priv** %8, align 8
  %21 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %21, i32 0, i32 2
  %23 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 1
  %26 = or i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %23, i64 %27
  store %struct.ltq_etop_chan* %28, %struct.ltq_etop_chan** %9, align 8
  %29 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %30 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %31, align 8
  %33 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %34 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %32, i64 %36
  store %struct.ltq_dma_desc* %37, %struct.ltq_dma_desc** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ZLEN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ETH_ZLEN, align 4
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %10, align 8
  %52 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LTQ_DMA_OWN, align 4
  %55 = load i32, i32* @LTQ_DMA_C, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %49
  %60 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %61 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %60, i32 0, i32 1
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %61, align 8
  %63 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %64 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %62, i64 %66
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %59, %49
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %71)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %76 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %75)
  %77 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %77, i32* %3, align 4
  br label %163

78:                                               ; preds = %59
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CPHYSADDR(i32 %81)
  %83 = srem i32 %82, 16
  store i32 %83, i32* %13, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %86 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %85, i32 0, i32 1
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %86, align 8
  %88 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %89 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %87, i64 %91
  store %struct.sk_buff* %84, %struct.sk_buff** %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = call i32 @netif_trans_update(%struct.net_device* %93)
  %95 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %8, align 8
  %96 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %8, align 8
  %100 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @DMA_TO_DEVICE, align 4
  %108 = call i64 @dma_map_single(i32* %102, i32 %105, i32 %106, i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %13, align 4
  %111 = sub i32 %109, %110
  %112 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %10, align 8
  %113 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = call i32 (...) @wmb()
  %115 = load i32, i32* @LTQ_DMA_OWN, align 4
  %116 = load i32, i32* @LTQ_DMA_SOP, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @LTQ_DMA_EOP, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @LTQ_DMA_TX_OFFSET(i32 %120)
  %122 = or i32 %119, %121
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @LTQ_DMA_SIZE_MASK, align 4
  %125 = and i32 %123, %124
  %126 = or i32 %122, %125
  %127 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %10, align 8
  %128 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %130 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load i64, i64* @LTQ_DESC_NUM, align 8
  %135 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %136 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = urem i64 %138, %134
  store i64 %139, i64* %137, align 8
  %140 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %8, align 8
  %141 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %140, i32 0, i32 0
  %142 = load i64, i64* %12, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %145 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %146, align 8
  %148 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %9, align 8
  %149 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %147, i64 %151
  %153 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @LTQ_DMA_OWN, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %78
  %159 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %160 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %159)
  br label %161

161:                                              ; preds = %158, %78
  %162 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %70
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @CPHYSADDR(i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @LTQ_DMA_TX_OFFSET(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
