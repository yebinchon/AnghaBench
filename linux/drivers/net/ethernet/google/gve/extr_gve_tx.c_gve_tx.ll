; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.gve_priv = type { %struct.TYPE_4__*, %struct.gve_tx_ring*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.gve_tx_ring = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"skb queue index out of range\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gve_priv*, align 8
  %7 = alloca %struct.gve_tx_ring*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.gve_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.gve_priv* %10, %struct.gve_priv** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %11)
  %13 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %14 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %21 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %20, i32 0, i32 1
  %22 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %22, i64 %24
  store %struct.gve_tx_ring* %25, %struct.gve_tx_ring** %7, align 8
  %26 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @gve_maybe_stop_tx(%struct.gve_tx_ring* %26, %struct.sk_buff* %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = call i32 (...) @dma_wmb()
  %33 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %34 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %35 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %38 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gve_tx_put_doorbell(%struct.gve_priv* %33, i32 %36, i32 %39)
  %41 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %2
  %43 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %46 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @gve_tx_add_skb(%struct.gve_tx_ring* %43, %struct.sk_buff* %44, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %51 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netdev_tx_sent_queue(i32 %52, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @skb_tx_timestamp(%struct.sk_buff* %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %61 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %65 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netif_xmit_stopped(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %42
  %70 = call i64 (...) @netdev_xmit_more()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %85

74:                                               ; preds = %69, %42
  %75 = call i32 (...) @dma_wmb()
  %76 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %77 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %78 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %81 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @gve_tx_put_doorbell(%struct.gve_priv* %76, i32 %79, i32 %82)
  %84 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %72, %31
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.gve_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gve_maybe_stop_tx(%struct.gve_tx_ring*, %struct.sk_buff*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @gve_tx_put_doorbell(%struct.gve_priv*, i32, i32) #1

declare dso_local i32 @gve_tx_add_skb(%struct.gve_tx_ring*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_xmit_stopped(i32) #1

declare dso_local i64 @netdev_xmit_more(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
