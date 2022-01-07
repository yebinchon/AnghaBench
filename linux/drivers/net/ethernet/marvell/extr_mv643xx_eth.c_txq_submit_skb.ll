; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_submit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_submit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i64, i64, i64, i32, i32, i32*, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i32, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.mv643xx_eth_private = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"tx queue full?!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TX_FIRST_DESC = common dso_local global i32 0, align 4
@GEN_CRC = common dso_local global i32 0, align 4
@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@DESC_DMA_MAP_SINGLE = common dso_local global i32 0, align 4
@ZERO_PADDING = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@TX_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_queue*, %struct.sk_buff*, %struct.net_device*)* @txq_submit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_submit_skb(%struct.tx_queue* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mv643xx_eth_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tx_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tx_queue* %0, %struct.tx_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %16 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %17 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %16)
  store %struct.mv643xx_eth_private* %17, %struct.mv643xx_eth_private** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %22 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %23 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %26 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %30 = add nsw i64 %29, 1
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = call i64 (...) @net_ratelimit()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %158

41:                                               ; preds = %3
  %42 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @skb_tx_csum(%struct.mv643xx_eth_private* %42, %struct.sk_buff* %43, i64* %13, i32* %12, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %4, align 4
  br label %158

52:                                               ; preds = %41
  %53 = load i32, i32* @TX_FIRST_DESC, align 4
  %54 = load i32, i32* @GEN_CRC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %61 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = trunc i64 %62 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %66 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %69 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %52
  %73 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %74 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %52
  %76 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %77 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %76, i32 0, i32 6
  %78 = load %struct.tx_desc*, %struct.tx_desc** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %78, i64 %80
  store %struct.tx_desc* %81, %struct.tx_desc** %11, align 8
  %82 = load i32, i32* @DESC_DMA_MAP_SINGLE, align 4
  %83 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %84 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %75
  %92 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @txq_submit_frag_skb(%struct.tx_queue* %92, %struct.sk_buff* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i32 @skb_headlen(%struct.sk_buff* %95)
  store i32 %96, i32* %14, align 4
  br label %108

97:                                               ; preds = %75
  %98 = load i32, i32* @ZERO_PADDING, align 4
  %99 = load i32, i32* @TX_LAST_DESC, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TX_ENABLE_INTERRUPT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %97, %91
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %111 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %114 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %8, align 8
  %116 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @DMA_TO_DEVICE, align 4
  %126 = call i32 @dma_map_single(i32 %120, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %128 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %130 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %129, i32 0, i32 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call i32 @__skb_queue_tail(i32* %130, %struct.sk_buff* %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = call i32 @skb_tx_timestamp(%struct.sk_buff* %133)
  %135 = call i32 (...) @wmb()
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %138 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %140 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 1, %141
  %143 = xor i32 %142, -1
  %144 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %8, align 8
  %145 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = call i32 (...) @wmb()
  %149 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %150 = call i32 @txq_enable(%struct.tx_queue* %149)
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = load %struct.tx_queue*, %struct.tx_queue** %5, align 8
  %155 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %108, %50, %38
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_tx_csum(%struct.mv643xx_eth_private*, %struct.sk_buff*, i64*, i32*, i32) #1

declare dso_local i32 @txq_submit_frag_skb(%struct.tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @txq_enable(%struct.tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
