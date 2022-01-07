; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ace_private = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tx_ring_info* }
%struct.tx_ring_info = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@maplen = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @ace_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_tx_int(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ace_private*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tx_ring_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ace_private* @netdev_priv(%struct.net_device* %10)
  store %struct.ace_private* %11, %struct.ace_private** %7, align 8
  br label %12

12:                                               ; preds = %72, %3
  %13 = load %struct.ace_private*, %struct.ace_private** %7, align 8
  %14 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.tx_ring_info*, %struct.tx_ring_info** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %17, i64 %19
  store %struct.tx_ring_info* %20, %struct.tx_ring_info** %9, align 8
  %21 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %22 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %8, align 8
  %24 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %25 = load i32, i32* @maplen, align 4
  %26 = call i64 @dma_unmap_len(%struct.tx_ring_info* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %12
  %29 = load %struct.ace_private*, %struct.ace_private** %7, align 8
  %30 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %33 = load i32, i32* @mapping, align 4
  %34 = call i32 @dma_unmap_addr(%struct.tx_ring_info* %32, i32 %33)
  %35 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %36 = load i32, i32* @maplen, align 4
  %37 = call i64 @dma_unmap_len(%struct.tx_ring_info* %35, i32 %36)
  %38 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %39 = call i32 @pci_unmap_page(i32 %31, i32 %34, i64 %37, i32 %38)
  %40 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %41 = load i32, i32* @maplen, align 4
  %42 = call i32 @dma_unmap_len_set(%struct.tx_ring_info* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %28, %12
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %54
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %62)
  %64 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %65 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %64, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %65, align 8
  br label %66

66:                                               ; preds = %46, %43
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.ace_private*, %struct.ace_private** %7, align 8
  %70 = call i32 @ACE_TX_RING_ENTRIES(%struct.ace_private* %69)
  %71 = srem i32 %68, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %12, label %76

76:                                               ; preds = %72
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = call i64 @netif_queue_stopped(%struct.net_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netif_wake_queue(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = call i32 (...) @wmb()
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.ace_private*, %struct.ace_private** %7, align 8
  %87 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  ret void
}

declare dso_local %struct.ace_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @dma_unmap_len(%struct.tx_ring_info*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.tx_ring_info*, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.tx_ring_info*, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @ACE_TX_RING_ENTRIES(%struct.ace_private*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
