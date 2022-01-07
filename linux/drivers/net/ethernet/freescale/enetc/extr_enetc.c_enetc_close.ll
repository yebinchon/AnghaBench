; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.enetc_ndev_priv = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enetc_ndev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.enetc_ndev_priv* %6, %struct.enetc_ndev_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @phy_stop(i64 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @phy_disconnect(i64 %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netif_carrier_off(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %13
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %29 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %34 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @napi_synchronize(i32* %40)
  %42 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %43 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @napi_disable(i32* %49)
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %56 = call i32 @enetc_disable_interrupts(%struct.enetc_ndev_priv* %55)
  %57 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %58 = call i32 @enetc_clear_bdrs(%struct.enetc_ndev_priv* %57)
  %59 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %60 = call i32 @enetc_free_rxtx_rings(%struct.enetc_ndev_priv* %59)
  %61 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %62 = call i32 @enetc_free_rx_resources(%struct.enetc_ndev_priv* %61)
  %63 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %64 = call i32 @enetc_free_tx_resources(%struct.enetc_ndev_priv* %63)
  %65 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %66 = call i32 @enetc_free_irqs(%struct.enetc_ndev_priv* %65)
  ret i32 0
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @enetc_disable_interrupts(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_clear_bdrs(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_rxtx_rings(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_rx_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_tx_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_irqs(%struct.enetc_ndev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
