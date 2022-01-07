; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_rxq_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_rxq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pxa168_eth_private = type { i64, i64, i32, %struct.TYPE_4__, i64, %struct.sk_buff**, %struct.TYPE_3__*, %struct.rx_desc*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rx_desc = type { i32, i32, i32 }

@SKB_DMA_REALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BUF_OWNED_BY_DMA = common dso_local global i32 0, align 4
@RX_EN_INT = common dso_local global i32 0, align 4
@ETH_HW_IP_ALIGN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rxq_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxq_refill(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pxa168_eth_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pxa168_eth_private* %9, %struct.pxa168_eth_private** %3, align 8
  br label %10

10:                                               ; preds = %34, %1
  %11 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %12 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %15 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %98

18:                                               ; preds = %10
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %21 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %19, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %98

27:                                               ; preds = %18
  %28 = load i64, i64* @SKB_DMA_REALIGN, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i64, i64* @SKB_DMA_REALIGN, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %36 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %40 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %43 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %42, i32 0, i32 7
  %44 = load %struct.rx_desc*, %struct.rx_desc** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %44, i64 %46
  store %struct.rx_desc* %47, %struct.rx_desc** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_end_pointer(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %55 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_map_single(i32* %57, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %65 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %68 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %71 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %70, i32 0, i32 5
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %74
  store %struct.sk_buff* %69, %struct.sk_buff** %75, align 8
  %76 = call i32 (...) @dma_wmb()
  %77 = load i32, i32* @BUF_OWNED_BY_DMA, align 4
  %78 = load i32, i32* @RX_EN_INT, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %81 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = call i32 (...) @dma_wmb()
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %87 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = srem i64 %85, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %92 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %94 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i64, i64* @ETH_HW_IP_ALIGN, align 8
  %97 = call i32 @skb_reserve(%struct.sk_buff* %95, i64 %96)
  br label %10

98:                                               ; preds = %26, %10
  %99 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %100 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load i64, i64* @jiffies, align 8
  %105 = load i32, i32* @HZ, align 4
  %106 = sdiv i32 %105, 10
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %110 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %113 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %112, i32 0, i32 3
  %114 = call i32 @add_timer(%struct.TYPE_4__* %113)
  br label %115

115:                                              ; preds = %103, %98
  ret void
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
