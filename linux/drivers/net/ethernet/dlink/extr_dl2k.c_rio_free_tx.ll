; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_free_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_free_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, i32, %struct.sk_buff**, %struct.TYPE_2__*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@TFDDone = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rio_free_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rio_free_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdev_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %10)
  store %struct.netdev_private* %11, %struct.netdev_private** %5, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TX_RING_SIZE, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %25 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %24, i32 0, i32 3
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %23, %19
  br label %29

29:                                               ; preds = %80, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %29
  %36 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %37 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TFDDone, align 4
  %45 = call i32 @cpu_to_le64(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %93

49:                                               ; preds = %35
  %50 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %51 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %50, i32 0, i32 4
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %9, align 8
  %57 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %61 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = call i32 @desc_to_dma(%struct.TYPE_2__* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %71 = call i32 @pci_unmap_single(i32 %59, i32 %66, i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %49
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %75)
  br label %80

77:                                               ; preds = %49
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i32 @dev_kfree_skb(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %82 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %81, i32 0, i32 4
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %83, i64 %85
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* @TX_RING_SIZE, align 4
  %90 = srem i32 %88, %89
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %29

93:                                               ; preds = %48, %29
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %98 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %97, i32 0, i32 3
  %99 = call i32 @spin_unlock(i32* %98)
  br label %105

100:                                              ; preds = %93
  %101 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %102 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %101, i32 0, i32 3
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %108 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i64 @netif_queue_stopped(%struct.net_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %105
  %113 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %114 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %117 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = load i32, i32* @TX_RING_SIZE, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @TX_RING_SIZE, align 4
  %123 = srem i32 %121, %122
  %124 = load i32, i32* @TX_QUEUE_LEN, align 4
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %112
  %128 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %129 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %112
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = call i32 @netif_wake_queue(%struct.net_device* %133)
  br label %135

135:                                              ; preds = %132, %127, %105
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @desc_to_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
