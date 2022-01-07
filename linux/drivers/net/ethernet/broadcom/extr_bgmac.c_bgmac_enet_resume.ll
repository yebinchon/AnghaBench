; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enet_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enet_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgmac_enet_resume(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %5 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %6 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call i32 @netif_running(%struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %13 = call i32 @bgmac_dma_init(%struct.bgmac* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %11
  %19 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %20 = call i32 @bgmac_chip_init(%struct.bgmac* %19)
  %21 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %22 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %21, i32 0, i32 1
  %23 = call i32 @napi_enable(i32* %22)
  %24 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %25 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @netif_tx_lock(%struct.TYPE_6__* %26)
  %28 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %29 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @netif_device_attach(%struct.TYPE_6__* %30)
  %32 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @netif_tx_unlock(%struct.TYPE_6__* %34)
  %36 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %37 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @netif_start_queue(%struct.TYPE_6__* %38)
  %40 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %41 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @phy_start(i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %18, %16, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @netif_running(%struct.TYPE_6__*) #1

declare dso_local i32 @bgmac_dma_init(%struct.bgmac*) #1

declare dso_local i32 @bgmac_chip_init(%struct.bgmac*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_tx_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_device_attach(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_tx_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_start_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @phy_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
