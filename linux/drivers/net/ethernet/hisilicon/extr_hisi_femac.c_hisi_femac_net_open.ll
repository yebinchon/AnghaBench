; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.hisi_femac_priv = type { i64, i64, i32 }

@IRQ_ENA_PORT0_MASK = common dso_local global i32 0, align 4
@GLB_IRQ_RAW = common dso_local global i64 0, align 8
@IRQ_ENA_ALL = common dso_local global i32 0, align 4
@IRQ_ENA_PORT0 = common dso_local global i32 0, align 4
@DEF_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hisi_femac_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_net_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hisi_femac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hisi_femac_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.hisi_femac_priv* %5, %struct.hisi_femac_priv** %3, align 8
  %6 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %7 = call i32 @hisi_femac_port_reset(%struct.hisi_femac_priv* %6)
  %8 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @hisi_femac_set_hw_mac_addr(%struct.hisi_femac_priv* %8, i32 %11)
  %13 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %14 = call i32 @hisi_femac_rx_refill(%struct.hisi_femac_priv* %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_carrier_off(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netdev_reset_queue(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netif_start_queue(%struct.net_device* %19)
  %21 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %21, i32 0, i32 2
  %23 = call i32 @napi_enable(i32* %22)
  %24 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @phy_start(i64 %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* @IRQ_ENA_PORT0_MASK, align 4
  %37 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %38 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GLB_IRQ_RAW, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %3, align 8
  %44 = load i32, i32* @IRQ_ENA_ALL, align 4
  %45 = load i32, i32* @IRQ_ENA_PORT0, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DEF_INT_MASK, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @hisi_femac_irq_enable(%struct.hisi_femac_priv* %43, i32 %48)
  ret i32 0
}

declare dso_local %struct.hisi_femac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hisi_femac_port_reset(%struct.hisi_femac_priv*) #1

declare dso_local i32 @hisi_femac_set_hw_mac_addr(%struct.hisi_femac_priv*, i32) #1

declare dso_local i32 @hisi_femac_rx_refill(%struct.hisi_femac_priv*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hisi_femac_irq_enable(%struct.hisi_femac_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
