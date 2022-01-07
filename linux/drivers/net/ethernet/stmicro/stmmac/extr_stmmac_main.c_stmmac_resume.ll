; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, i32, i32, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.net_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

14:                                               ; preds = %1
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @device_may_wakeup(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @stmmac_pmt(%struct.stmmac_priv* %24, i32 %27, i32 0)
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  br label %75

34:                                               ; preds = %14
  %35 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %36 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pinctrl_pm_select_default_state(i32 %37)
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @clk_prepare_enable(i64 %43)
  %45 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %46 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @clk_prepare_enable(i64 %49)
  %51 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %52 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %34
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @clk_prepare_enable(i64 %62)
  br label %64

64:                                               ; preds = %57, %34
  %65 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %66 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @stmmac_mdio_reset(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %20
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i32 @netif_device_attach(%struct.net_device* %76)
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %79 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %78, i32 0, i32 2
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %82 = call i32 @stmmac_reset_queues_param(%struct.stmmac_priv* %81)
  %83 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %84 = call i32 @stmmac_clear_descriptors(%struct.stmmac_priv* %83)
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 @stmmac_hw_setup(%struct.net_device* %85, i32 0)
  %87 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %88 = call i32 @stmmac_init_coalesce(%struct.stmmac_priv* %87)
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 @stmmac_set_rx_mode(%struct.net_device* %89)
  %91 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %92 = call i32 @stmmac_enable_all_queues(%struct.stmmac_priv* %91)
  %93 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %94 = call i32 @stmmac_start_all_queues(%struct.stmmac_priv* %93)
  %95 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %96 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %99 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @device_may_wakeup(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %75
  %104 = call i32 (...) @rtnl_lock()
  %105 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %106 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @phylink_start(i32 %107)
  %109 = call i32 (...) @rtnl_unlock()
  br label %110

110:                                              ; preds = %103, %75
  %111 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %112 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @phylink_mac_change(i32 %113, i32 1)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stmmac_pmt(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @stmmac_mdio_reset(i64) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @stmmac_reset_queues_param(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_clear_descriptors(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_hw_setup(%struct.net_device*, i32) #1

declare dso_local i32 @stmmac_init_coalesce(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @stmmac_enable_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_start_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @phylink_start(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @phylink_mac_change(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
