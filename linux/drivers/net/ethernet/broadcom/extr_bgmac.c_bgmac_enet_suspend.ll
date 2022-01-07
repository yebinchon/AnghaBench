; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enet_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enet_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgmac_enet_suspend(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %4 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %5 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call i32 @netif_running(%struct.TYPE_6__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %12 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_stop(i32 %15)
  %17 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %18 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @netif_stop_queue(%struct.TYPE_6__* %19)
  %21 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %22 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %21, i32 0, i32 1
  %23 = call i32 @napi_disable(i32* %22)
  %24 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %25 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @netif_tx_lock(%struct.TYPE_6__* %26)
  %28 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %29 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @netif_device_detach(%struct.TYPE_6__* %30)
  %32 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @netif_tx_unlock(%struct.TYPE_6__* %34)
  %36 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %37 = call i32 @bgmac_chip_intrs_off(%struct.bgmac* %36)
  %38 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %39 = call i32 @bgmac_chip_reset(%struct.bgmac* %38)
  %40 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %41 = call i32 @bgmac_dma_cleanup(%struct.bgmac* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %10, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @netif_running(%struct.TYPE_6__*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_device_detach(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_tx_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @bgmac_chip_intrs_off(%struct.bgmac*) #1

declare dso_local i32 @bgmac_chip_reset(%struct.bgmac*) #1

declare dso_local i32 @bgmac_dma_cleanup(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
