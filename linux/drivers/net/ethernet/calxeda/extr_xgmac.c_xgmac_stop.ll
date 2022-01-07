; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgmac_priv = type { i64, i32 }

@XGMAC_DMA_INTR_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xgmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.xgmac_priv* %5, %struct.xgmac_priv** %3, align 8
  %6 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %7 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XGMAC_DMA_INTR_ENA, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readl(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %15 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %14, i32 0, i32 1
  %16 = call i32 @napi_disable(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %19 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XGMAC_DMA_INTR_ENA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netif_tx_disable(%struct.net_device* %24)
  %26 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %27 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @xgmac_mac_disable(i64 %28)
  %30 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %31 = call i32 @xgmac_free_dma_desc_rings(%struct.xgmac_priv* %30)
  ret i32 0
}

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @xgmac_mac_disable(i64) #1

declare dso_local i32 @xgmac_free_dma_desc_rings(%struct.xgmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
