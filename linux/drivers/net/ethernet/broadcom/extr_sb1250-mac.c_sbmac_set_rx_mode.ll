; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sbmac_softc = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sbmac_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbmac_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sbmac_softc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sbmac_softc* @netdev_priv(%struct.net_device* %5)
  store %struct.sbmac_softc* %6, %struct.sbmac_softc** %4, align 8
  %7 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %8 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %7, i32 0, i32 1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %15 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %13, %16
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %30 = call i32 @sbmac_promiscuous_mode(%struct.sbmac_softc* %29, i32 1)
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %33 = call i32 @sbmac_promiscuous_mode(%struct.sbmac_softc* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %37 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %41 = call i32 @sbmac_setmulti(%struct.sbmac_softc* %40)
  ret void
}

declare dso_local %struct.sbmac_softc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sbmac_promiscuous_mode(%struct.sbmac_softc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sbmac_setmulti(%struct.sbmac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
