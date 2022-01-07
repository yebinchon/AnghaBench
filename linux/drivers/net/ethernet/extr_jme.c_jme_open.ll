; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32, i32, i32, i32, i32, i32 }

@jme_link_change_tasklet = common dso_local global i32 0, align 4
@jme_tx_clean_tasklet = common dso_local global i32 0, align 4
@jme_rx_clean_tasklet = common dso_local global i32 0, align 4
@jme_rx_empty_tasklet = common dso_local global i32 0, align 4
@JME_FLAG_SSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @jme_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.jme_adapter* %7, %struct.jme_adapter** %4, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %9 = call i32 @jme_clear_pm_disable_wol(%struct.jme_adapter* %8)
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %11 = call i32 @JME_NAPI_ENABLE(%struct.jme_adapter* %10)
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 5
  %14 = load i32, i32* @jme_link_change_tasklet, align 4
  %15 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %16 = ptrtoint %struct.jme_adapter* %15 to i64
  %17 = call i32 @tasklet_init(i32* %13, i32 %14, i64 %16)
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 4
  %20 = load i32, i32* @jme_tx_clean_tasklet, align 4
  %21 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %22 = ptrtoint %struct.jme_adapter* %21 to i64
  %23 = call i32 @tasklet_init(i32* %19, i32 %20, i64 %22)
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 3
  %26 = load i32, i32* @jme_rx_clean_tasklet, align 4
  %27 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %28 = ptrtoint %struct.jme_adapter* %27 to i64
  %29 = call i32 @tasklet_init(i32* %25, i32 %26, i64 %28)
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* @jme_rx_empty_tasklet, align 4
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %34 = ptrtoint %struct.jme_adapter* %33 to i64
  %35 = call i32 @tasklet_init(i32* %31, i32 %32, i64 %34)
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %37 = call i32 @jme_request_irq(%struct.jme_adapter* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %66

41:                                               ; preds = %1
  %42 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %43 = call i32 @jme_start_irq(%struct.jme_adapter* %42)
  %44 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %45 = call i32 @jme_phy_on(%struct.jme_adapter* %44)
  %46 = load i32, i32* @JME_FLAG_SSET, align 4
  %47 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %53, i32 0, i32 0
  %55 = call i32 @jme_set_link_ksettings(%struct.net_device* %52, i32* %54)
  br label %59

56:                                               ; preds = %41
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %58 = call i32 @jme_reset_phy_processor(%struct.jme_adapter* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %61 = call i32 @jme_phy_calibration(%struct.jme_adapter* %60)
  %62 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %63 = call i32 @jme_phy_setEA(%struct.jme_adapter* %62)
  %64 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %65 = call i32 @jme_reset_link(%struct.jme_adapter* %64)
  store i32 0, i32* %2, align 4
  br label %72

66:                                               ; preds = %40
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netif_stop_queue(%struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @netif_carrier_off(%struct.net_device* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jme_clear_pm_disable_wol(%struct.jme_adapter*) #1

declare dso_local i32 @JME_NAPI_ENABLE(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @jme_request_irq(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_irq(%struct.jme_adapter*) #1

declare dso_local i32 @jme_phy_on(%struct.jme_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jme_set_link_ksettings(%struct.net_device*, i32*) #1

declare dso_local i32 @jme_reset_phy_processor(%struct.jme_adapter*) #1

declare dso_local i32 @jme_phy_calibration(%struct.jme_adapter*) #1

declare dso_local i32 @jme_phy_setEA(%struct.jme_adapter*) #1

declare dso_local i32 @jme_reset_link(%struct.jme_adapter*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
