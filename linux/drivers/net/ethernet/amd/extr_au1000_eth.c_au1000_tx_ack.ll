; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_tx_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_tx_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { i64, i64, %struct.tx_dma** }
%struct.tx_dma = type { i32, i64, i32 }

@TX_T_DONE = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @au1000_tx_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_tx_ack(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca %struct.tx_dma*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %5)
  store %struct.au1000_private* %6, %struct.au1000_private** %3, align 8
  %7 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %8 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %7, i32 0, i32 2
  %9 = load %struct.tx_dma**, %struct.tx_dma*** %8, align 8
  %10 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %11 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.tx_dma*, %struct.tx_dma** %9, i64 %12
  %14 = load %struct.tx_dma*, %struct.tx_dma** %13, align 8
  store %struct.tx_dma* %14, %struct.tx_dma** %4, align 8
  br label %15

15:                                               ; preds = %64, %1
  %16 = load %struct.tx_dma*, %struct.tx_dma** %4, align 8
  %17 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TX_T_DONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load %struct.tx_dma*, %struct.tx_dma** %4, align 8
  %25 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @au1000_update_tx_stats(%struct.net_device* %23, i32 %26)
  %28 = load i32, i32* @TX_T_DONE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.tx_dma*, %struct.tx_dma** %4, align 8
  %31 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.tx_dma*, %struct.tx_dma** %4, align 8
  %35 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = call i32 (...) @wmb()
  %37 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %38 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = load i32, i32* @NUM_TX_DMA, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  %45 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %46 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %48 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %47, i32 0, i32 2
  %49 = load %struct.tx_dma**, %struct.tx_dma*** %48, align 8
  %50 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %51 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.tx_dma*, %struct.tx_dma** %49, i64 %52
  %54 = load %struct.tx_dma*, %struct.tx_dma** %53, align 8
  store %struct.tx_dma* %54, %struct.tx_dma** %4, align 8
  %55 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %56 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %22
  %60 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %61 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @netif_wake_queue(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %59, %22
  br label %15

65:                                               ; preds = %15
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @au1000_update_tx_stats(%struct.net_device*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
