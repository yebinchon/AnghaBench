; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ag71xx = type { %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.ag71xx_ring }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.sk_buff* }
%struct.ag71xx_desc = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"packet len is too small\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_TX_RING_DS_PER_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"tx queue full\0A\00", align 1
@tx_queued = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"packet injected into TX queue\0A\00", align 1
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@TX_CTRL_TXE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ag71xx_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ag71xx*, align 8
  %12 = alloca %struct.ag71xx_ring*, align 8
  %13 = alloca %struct.ag71xx_desc*, align 8
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %15)
  store %struct.ag71xx* %16, %struct.ag71xx** %11, align 8
  %17 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 2
  store %struct.ag71xx_ring* %18, %struct.ag71xx_ring** %12, align 8
  %19 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %20 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BIT(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %34 = load i32, i32* @tx_err, align 4
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netif_dbg(%struct.ag71xx* %33, i32 %34, %struct.net_device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %170

37:                                               ; preds = %2
  %38 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %39 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i64 @dma_map_single(i32* %41, i32 %44, i32 %47, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %55, i32 %56)
  store %struct.ag71xx_desc* %57, %struct.ag71xx_desc** %13, align 8
  %58 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %59 = load i64, i64* %14, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %65 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %63, %68
  %70 = call i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring* %58, i32 %60, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %37
  br label %159

74:                                               ; preds = %37
  %75 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %76 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %87 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %85, i32* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %96 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %95, i32 0, i32 3
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store %struct.sk_buff* %94, %struct.sk_buff** %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netdev_sent_queue(%struct.net_device* %103, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call i32 @skb_tx_timestamp(%struct.sk_buff* %108)
  %110 = load i32, i32* @DESC_EMPTY, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %13, align 8
  %113 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %118 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = call i32 (...) @wmb()
  store i32 2, i32* %8, align 4
  %122 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %123 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %74
  %127 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %128 = load i32, i32* %8, align 4
  %129 = mul nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %74
  %131 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %132 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %12, align 8
  %135 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 %138, %139
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %130
  %143 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %144 = load i32, i32* @tx_err, align 4
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @netif_dbg(%struct.ag71xx* %143, i32 %144, %struct.net_device* %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = call i32 @netif_stop_queue(%struct.net_device* %147)
  br label %149

149:                                              ; preds = %142, %130
  %150 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %151 = load i32, i32* @tx_queued, align 4
  %152 = load %struct.net_device*, %struct.net_device** %5, align 8
  %153 = call i32 @netif_dbg(%struct.ag71xx* %150, i32 %151, %struct.net_device* %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %154 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %155 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %156 = load i32, i32* @TX_CTRL_TXE, align 4
  %157 = call i32 @ag71xx_wr(%struct.ag71xx* %154, i32 %155, i32 %156)
  %158 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %158, i32* %3, align 4
  br label %179

159:                                              ; preds = %73
  %160 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  %161 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @DMA_TO_DEVICE, align 4
  %169 = call i32 @dma_unmap_single(i32* %163, i64 %164, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %159, %32
  %171 = load %struct.net_device*, %struct.net_device** %5, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call i32 @dev_kfree_skb(%struct.sk_buff* %176)
  %178 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %170, %149
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring*, i32, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
