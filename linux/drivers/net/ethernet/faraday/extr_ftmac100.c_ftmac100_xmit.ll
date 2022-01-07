; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ftmac100_txdes = type { i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftmac100*, %struct.sk_buff*, i32)* @ftmac100_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_xmit(%struct.ftmac100* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ftmac100*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ftmac100_txdes*, align 8
  %9 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %11 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_ZLEN, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ETH_ZLEN, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %27 = call %struct.ftmac100_txdes* @ftmac100_current_txdes(%struct.ftmac100* %26)
  store %struct.ftmac100_txdes* %27, %struct.ftmac100_txdes** %8, align 8
  %28 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %29 = call i32 @ftmac100_tx_pointer_advance(%struct.ftmac100* %28)
  %30 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @ftmac100_txdes_set_skb(%struct.ftmac100_txdes* %30, %struct.sk_buff* %31)
  %33 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ftmac100_txdes_set_dma_addr(%struct.ftmac100_txdes* %33, i32 %34)
  %36 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %37 = call i32 @ftmac100_txdes_set_first_segment(%struct.ftmac100_txdes* %36)
  %38 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %39 = call i32 @ftmac100_txdes_set_last_segment(%struct.ftmac100_txdes* %38)
  %40 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %41 = call i32 @ftmac100_txdes_set_txint(%struct.ftmac100_txdes* %40)
  %42 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ftmac100_txdes_set_buffer_size(%struct.ftmac100_txdes* %42, i32 %43)
  %45 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %46 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %49 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %53 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TX_QUEUE_ENTRIES, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %24
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @netif_stop_queue(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %24
  %61 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %8, align 8
  %62 = call i32 @ftmac100_txdes_set_dma_own(%struct.ftmac100_txdes* %61)
  %63 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %64 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %67 = call i32 @ftmac100_txdma_start_polling(%struct.ftmac100* %66)
  %68 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %68
}

declare dso_local %struct.ftmac100_txdes* @ftmac100_current_txdes(%struct.ftmac100*) #1

declare dso_local i32 @ftmac100_tx_pointer_advance(%struct.ftmac100*) #1

declare dso_local i32 @ftmac100_txdes_set_skb(%struct.ftmac100_txdes*, %struct.sk_buff*) #1

declare dso_local i32 @ftmac100_txdes_set_dma_addr(%struct.ftmac100_txdes*, i32) #1

declare dso_local i32 @ftmac100_txdes_set_first_segment(%struct.ftmac100_txdes*) #1

declare dso_local i32 @ftmac100_txdes_set_last_segment(%struct.ftmac100_txdes*) #1

declare dso_local i32 @ftmac100_txdes_set_txint(%struct.ftmac100_txdes*) #1

declare dso_local i32 @ftmac100_txdes_set_buffer_size(%struct.ftmac100_txdes*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ftmac100_txdes_set_dma_own(%struct.ftmac100_txdes*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ftmac100_txdma_start_polling(%struct.ftmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
