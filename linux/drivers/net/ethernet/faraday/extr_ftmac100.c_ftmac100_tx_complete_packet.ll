; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_tx_complete_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_tx_complete_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ftmac100_txdes = type { i32 }
%struct.sk_buff = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftmac100*)* @ftmac100_tx_complete_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_tx_complete_packet(%struct.ftmac100* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftmac100*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ftmac100_txdes*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %3, align 8
  %8 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %9 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %12 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %18 = call %struct.ftmac100_txdes* @ftmac100_current_clean_txdes(%struct.ftmac100* %17)
  store %struct.ftmac100_txdes* %18, %struct.ftmac100_txdes** %5, align 8
  %19 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %5, align 8
  %20 = call i64 @ftmac100_txdes_owned_by_dma(%struct.ftmac100_txdes* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %89

23:                                               ; preds = %16
  %24 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %5, align 8
  %25 = call %struct.sk_buff* @ftmac100_txdes_get_skb(%struct.ftmac100_txdes* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %5, align 8
  %27 = call i32 @ftmac100_txdes_get_dma_addr(%struct.ftmac100_txdes* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %5, align 8
  %29 = call i64 @ftmac100_txdes_excessive_collision(%struct.ftmac100_txdes* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %5, align 8
  %33 = call i64 @ftmac100_txdes_late_collision(%struct.ftmac100_txdes* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i1 [ true, %23 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %62

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %54
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %46, %40
  %63 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %64 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @skb_headlen(%struct.sk_buff* %67)
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32 %65, i32 %66, i32 %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i32 @dev_kfree_skb(%struct.sk_buff* %71)
  %73 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %5, align 8
  %74 = call i32 @ftmac100_txdes_reset(%struct.ftmac100_txdes* %73)
  %75 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %76 = call i32 @ftmac100_tx_clean_pointer_advance(%struct.ftmac100* %75)
  %77 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %78 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %77, i32 0, i32 1
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %81 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %85 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i32 @netif_wake_queue(%struct.net_device* %87)
  store i32 1, i32* %2, align 4
  br label %89

89:                                               ; preds = %62, %22, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.ftmac100_txdes* @ftmac100_current_clean_txdes(%struct.ftmac100*) #1

declare dso_local i64 @ftmac100_txdes_owned_by_dma(%struct.ftmac100_txdes*) #1

declare dso_local %struct.sk_buff* @ftmac100_txdes_get_skb(%struct.ftmac100_txdes*) #1

declare dso_local i32 @ftmac100_txdes_get_dma_addr(%struct.ftmac100_txdes*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ftmac100_txdes_excessive_collision(%struct.ftmac100_txdes*) #1

declare dso_local i64 @ftmac100_txdes_late_collision(%struct.ftmac100_txdes*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ftmac100_txdes_reset(%struct.ftmac100_txdes*) #1

declare dso_local i32 @ftmac100_tx_clean_pointer_advance(%struct.ftmac100*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
