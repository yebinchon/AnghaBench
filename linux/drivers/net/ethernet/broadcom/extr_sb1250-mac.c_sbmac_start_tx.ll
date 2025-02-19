; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.sbmac_softc = type { i32, i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sbmac_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbmac_start_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sbmac_softc*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.sbmac_softc* @netdev_priv(%struct.net_device* %8)
  store %struct.sbmac_softc* %9, %struct.sbmac_softc** %6, align 8
  %10 = load %struct.sbmac_softc*, %struct.sbmac_softc** %6, align 8
  %11 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sbmac_softc*, %struct.sbmac_softc** %6, align 8
  %15 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i64 @sbdma_add_txbuffer(i32* %15, %struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_stop_queue(%struct.net_device* %20)
  %22 = load %struct.sbmac_softc*, %struct.sbmac_softc** %6, align 8
  %23 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.sbmac_softc*, %struct.sbmac_softc** %6, align 8
  %29 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.sbmac_softc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sbdma_add_txbuffer(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
