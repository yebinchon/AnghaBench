; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_queue = type { i64, i64, i64, i32, %struct.sk_buff**, %struct.rx_desc* }
%struct.sk_buff = type { i32 }
%struct.rx_desc = type { i32, i32, i32 }
%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SKB_DMA_REALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@RX_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_queue*, i32)* @rxq_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_refill(%struct.rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv643xx_eth_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.rx_queue* %0, %struct.rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %12 = call %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue* %11)
  store %struct.mv643xx_eth_private* %12, %struct.mv643xx_eth_private** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %69, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br label %25

25:                                               ; preds = %17, %13
  %26 = phi i1 [ false, %13 ], [ %24, %17 ]
  br i1 %26, label %27, label %115

27:                                               ; preds = %25
  %28 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %29 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %32 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_4__* %30, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = icmp eq %struct.sk_buff* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %39 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %130

40:                                               ; preds = %27
  %41 = load i32, i32* @SKB_DMA_REALIGN, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load i32, i32* @SKB_DMA_REALIGN, align 4
  %46 = call i32 @skb_reserve(%struct.sk_buff* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %51 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %55 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = trunc i64 %56 to i32
  store i32 %58, i32* %8, align 4
  %59 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %60 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %63 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %47
  %67 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %68 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %47
  %70 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %71 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %70, i32 0, i32 5
  %72 = load %struct.rx_desc*, %struct.rx_desc** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %72, i64 %74
  store %struct.rx_desc* %75, %struct.rx_desc** %9, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i32 @skb_end_pointer(%struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %83 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %93 = call i32 @dma_map_single(i32 %87, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %95 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %98 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %101 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %100, i32 0, i32 4
  %102 = load %struct.sk_buff**, %struct.sk_buff*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %102, i64 %104
  store %struct.sk_buff* %99, %struct.sk_buff** %105, align 8
  %106 = call i32 (...) @wmb()
  %107 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %108 = load i32, i32* @RX_ENABLE_INTERRUPT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %111 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = call i32 (...) @wmb()
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = call i32 @skb_reserve(%struct.sk_buff* %113, i32 2)
  br label %13

115:                                              ; preds = %25
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %121 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 1, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %126 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %119, %115
  br label %130

130:                                              ; preds = %129, %37
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
