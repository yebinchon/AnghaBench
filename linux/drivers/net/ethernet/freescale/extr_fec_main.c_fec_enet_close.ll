; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FEC_QUIRK_ERR006687 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %4)
  store %struct.fec_enet_private* %5, %struct.fec_enet_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @phy_stop(i32 %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i64 @netif_device_present(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 2
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_tx_disable(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @fec_stop(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @phy_disconnect(i32 %24)
  %26 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %27 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FEC_QUIRK_ERR006687, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 (...) @imx6q_cpuidle_fec_irqs_unused()
  br label %34

34:                                               ; preds = %32, %21
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @fec_enet_update_ethtool_stats(%struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @fec_enet_clk_enable(%struct.net_device* %37, i32 0)
  %39 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %40 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @pinctrl_pm_select_sleep_state(i32* %42)
  %44 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %45 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_mark_last_busy(i32* %47)
  %49 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %50 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @pm_runtime_put_autosuspend(i32* %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @fec_enet_free_buffers(%struct.net_device* %54)
  ret i32 0
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i64 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @fec_stop(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @imx6q_cpuidle_fec_irqs_unused(...) #1

declare dso_local i32 @fec_enet_update_ethtool_stats(%struct.net_device*) #1

declare dso_local i32 @fec_enet_clk_enable(%struct.net_device*, i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @fec_enet_free_buffers(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
