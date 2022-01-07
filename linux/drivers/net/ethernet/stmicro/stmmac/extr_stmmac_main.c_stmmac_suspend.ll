; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@SPEED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_suspend(%struct.device* %0) #0 {
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
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %104

17:                                               ; preds = %12
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @phylink_mac_change(i32 %20, i32 0)
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_device_detach(%struct.net_device* %25)
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %28 = call i32 @stmmac_stop_all_queues(%struct.stmmac_priv* %27)
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %30 = call i32 @stmmac_disable_all_queues(%struct.stmmac_priv* %29)
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %32 = call i32 @stmmac_stop_all_dma(%struct.stmmac_priv* %31)
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @device_may_wakeup(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %17
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @stmmac_pmt(%struct.stmmac_priv* %39, i32 %42, i32 %45)
  %47 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %48 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %97

49:                                               ; preds = %17
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %51 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = call i32 (...) @rtnl_lock()
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @phylink_stop(i32 %56)
  %58 = call i32 (...) @rtnl_unlock()
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %60 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %59, i32 0, i32 2
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %63 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %64 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @stmmac_mac_set(%struct.stmmac_priv* %62, i32 %65, i32 0)
  %67 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %68 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pinctrl_pm_select_sleep_state(i32 %69)
  %71 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %72 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %49
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %79 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @clk_disable_unprepare(i64 %82)
  br label %84

84:                                               ; preds = %77, %49
  %85 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %86 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @clk_disable_unprepare(i64 %89)
  %91 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %92 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @clk_disable_unprepare(i64 %95)
  br label %97

97:                                               ; preds = %84, %38
  %98 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %99 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* @SPEED_UNKNOWN, align 4
  %102 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %103 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %97, %16
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @phylink_mac_change(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @stmmac_stop_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_disable_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_stop_all_dma(%struct.stmmac_priv*) #1

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @stmmac_pmt(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @phylink_stop(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @stmmac_mac_set(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
