; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ep93xx_priv = type { i32, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ep93xx_tdesc* }
%struct.ep93xx_tdesc = type { i32, i32 }

@MAX_PKT_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@TDESC1_EOF = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@REG_TXDENQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ep93xx_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ep93xx_priv*, align 8
  %7 = alloca %struct.ep93xx_tdesc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ep93xx_priv* %10, %struct.ep93xx_priv** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX_PKT_SIZE, align 4
  %15 = icmp sgt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %2
  %29 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %33 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  %39 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %42 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.ep93xx_tdesc*, %struct.ep93xx_tdesc** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ep93xx_tdesc, %struct.ep93xx_tdesc* %45, i64 %47
  store %struct.ep93xx_tdesc* %48, %struct.ep93xx_tdesc** %7, align 8
  %49 = load i32, i32* @TDESC1_EOF, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %49, %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 4095
  %57 = or i32 %52, %56
  %58 = load %struct.ep93xx_tdesc*, %struct.ep93xx_tdesc** %7, align 8
  %59 = getelementptr inbounds %struct.ep93xx_tdesc, %struct.ep93xx_tdesc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ep93xx_tdesc*, %struct.ep93xx_tdesc** %7, align 8
  %65 = getelementptr inbounds %struct.ep93xx_tdesc, %struct.ep93xx_tdesc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @dma_sync_single_for_cpu(i32 %63, i32 %66, i32 %69, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %74 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %72, i32 %79)
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ep93xx_tdesc*, %struct.ep93xx_tdesc** %7, align 8
  %86 = getelementptr inbounds %struct.ep93xx_tdesc, %struct.ep93xx_tdesc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @dma_sync_single_for_device(i32 %84, i32 %87, i32 %90, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @dev_kfree_skb(%struct.sk_buff* %93)
  %95 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %96 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %95, i32 0, i32 2
  %97 = call i32 @spin_lock_irq(i32* %96)
  %98 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %99 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %103 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %28
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = call i32 @netif_stop_queue(%struct.net_device* %108)
  br label %110

110:                                              ; preds = %107, %28
  %111 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %112 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock_irq(i32* %112)
  %114 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %115 = load i32, i32* @REG_TXDENQ, align 4
  %116 = call i32 @wrl(%struct.ep93xx_priv* %114, i32 %115, i32 1)
  %117 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %110, %19
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
