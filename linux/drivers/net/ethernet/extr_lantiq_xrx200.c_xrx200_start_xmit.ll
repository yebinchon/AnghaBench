; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xrx200_priv = type { i32, %struct.xrx200_chan }
%struct.xrx200_chan = type { i64, %struct.TYPE_3__, %struct.sk_buff** }
%struct.TYPE_3__ = type { i64, %struct.ltq_dma_desc* }
%struct.ltq_dma_desc = type { i32, i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@LTQ_DMA_OWN = common dso_local global i32 0, align 4
@LTQ_DMA_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tx ring full\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@LTQ_DMA_SOP = common dso_local global i32 0, align 4
@LTQ_DMA_EOP = common dso_local global i32 0, align 4
@LTQ_DMA_SIZE_MASK = common dso_local global i32 0, align 4
@LTQ_DESC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xrx200_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xrx200_priv*, align 8
  %7 = alloca %struct.xrx200_chan*, align 8
  %8 = alloca %struct.ltq_dma_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.xrx200_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.xrx200_priv* %13, %struct.xrx200_priv** %6, align 8
  %14 = load %struct.xrx200_priv*, %struct.xrx200_priv** %6, align 8
  %15 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %14, i32 0, i32 1
  store %struct.xrx200_chan* %15, %struct.xrx200_chan** %7, align 8
  %16 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %17 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %18, align 8
  %20 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %21 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %19, i64 %23
  store %struct.ltq_dma_desc* %24, %struct.ltq_dma_desc** %8, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @ETH_ZLEN, align 4
  %30 = call i64 @skb_put_padto(%struct.sk_buff* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %159

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %8, align 8
  %44 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LTQ_DMA_OWN, align 4
  %47 = load i32, i32* @LTQ_DMA_C, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %39
  %52 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %53 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %52, i32 0, i32 2
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %53, align 8
  %55 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %56 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %54, i64 %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %51, %39
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @netif_stop_queue(%struct.net_device* %65)
  %67 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %67, i32* %3, align 4
  br label %159

68:                                               ; preds = %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %71 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %70, i32 0, i32 2
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %74 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %76
  store %struct.sk_buff* %69, %struct.sk_buff** %77, align 8
  %78 = load %struct.xrx200_priv*, %struct.xrx200_priv** %6, align 8
  %79 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_map_single(i32 %80, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.xrx200_priv*, %struct.xrx200_priv** %6, align 8
  %88 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @dma_mapping_error(i32 %89, i32 %90)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %68
  br label %145

95:                                               ; preds = %68
  %96 = load i32, i32* %10, align 4
  %97 = srem i32 %96, 16
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %8, align 8
  %102 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = call i32 (...) @wmb()
  %104 = load i32, i32* @LTQ_DMA_OWN, align 4
  %105 = load i32, i32* @LTQ_DMA_SOP, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @LTQ_DMA_EOP, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @LTQ_DMA_TX_OFFSET(i32 %109)
  %111 = or i32 %108, %110
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @LTQ_DMA_SIZE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = or i32 %111, %114
  %116 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %8, align 8
  %117 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %119 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load i64, i64* @LTQ_DESC_NUM, align 8
  %124 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %125 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = urem i64 %127, %123
  store i64 %128, i64* %126, align 8
  %129 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %130 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.xrx200_chan*, %struct.xrx200_chan** %7, align 8
  %134 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %95
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = call i32 @netif_stop_queue(%struct.net_device* %138)
  br label %140

140:                                              ; preds = %137, %95
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @netdev_sent_queue(%struct.net_device* %141, i32 %142)
  %144 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %144, i32* %3, align 4
  br label %159

145:                                              ; preds = %94
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @dev_kfree_skb(%struct.sk_buff* %146)
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %145, %140, %62, %32
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.xrx200_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_put_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @LTQ_DMA_TX_OFFSET(i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
