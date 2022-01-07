; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_tx_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_tx_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.moxart_mac_priv_t = type { i32, i32, %struct.TYPE_4__**, i32*, i32* }
%struct.TYPE_4__ = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_WAKE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @moxart_tx_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_tx_finished(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.moxart_mac_priv_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %6)
  store %struct.moxart_mac_priv_t* %7, %struct.moxart_mac_priv_t** %3, align 8
  %8 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %9 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %12 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %18, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %22 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %29 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(i32* %20, i32 %27, i32 %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %43 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %50
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %59 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = call i32 @dev_consume_skb_irq(%struct.TYPE_4__* %64)
  %66 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %67 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @TX_NEXT(i32 %72)
  store i32 %73, i32* %5, align 4
  br label %14

74:                                               ; preds = %14
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %77 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i64 @netif_queue_stopped(%struct.net_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i64 @moxart_tx_queue_space(%struct.net_device* %82)
  %84 = load i64, i64* @TX_WAKE_THRESHOLD, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @netif_wake_queue(%struct.net_device* %87)
  br label %89

89:                                               ; preds = %86, %81, %74
  ret void
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.TYPE_4__*) #1

declare dso_local i32 @TX_NEXT(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @moxart_tx_queue_space(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
