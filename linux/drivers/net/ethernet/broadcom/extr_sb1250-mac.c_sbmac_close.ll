; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sbmac_softc = type { i32, i32, i32*, i32 }

@sbmac_state_off = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Shutting down ethercard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sbmac_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbmac_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sbmac_softc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sbmac_softc* @netdev_priv(%struct.net_device* %4)
  store %struct.sbmac_softc* %5, %struct.sbmac_softc** %3, align 8
  %6 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %6, i32 0, i32 3
  %8 = call i32 @napi_disable(i32* %7)
  %9 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @phy_stop(i32* %11)
  %13 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %14 = load i32, i32* @sbmac_state_off, align 4
  %15 = call i32 @sbmac_set_channel_state(%struct.sbmac_softc* %13, i32 %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load i32, i32* @debug, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %27 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @phy_disconnect(i32* %28)
  %30 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.net_device* %35)
  %37 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %37, i32 0, i32 1
  %39 = call i32 @sbdma_emptyring(i32* %38)
  %40 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %41 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %40, i32 0, i32 0
  %42 = call i32 @sbdma_emptyring(i32* %41)
  ret i32 0
}

declare dso_local %struct.sbmac_softc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @sbmac_set_channel_state(%struct.sbmac_softc*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @sbdma_emptyring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
