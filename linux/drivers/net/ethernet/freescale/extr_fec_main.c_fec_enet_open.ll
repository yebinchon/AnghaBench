; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.fec_enet_private = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@FEC_QUIRK_ERR006687 = common dso_local global i32 0, align 4
@FEC_WOL_FLAG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %4, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %115

18:                                               ; preds = %1
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %20 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @pinctrl_pm_select_default_state(i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @fec_enet_clk_enable(%struct.net_device* %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %98

29:                                               ; preds = %18
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %43

42:                                               ; preds = %34, %29
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @fec_enet_alloc_buffers(%struct.net_device* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %95

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @fec_restart(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @fec_enet_mii_probe(%struct.net_device* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %92

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @phy_reset_after_clk_enable(%struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %67 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FEC_QUIRK_ERR006687, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 (...) @imx6q_cpuidle_fec_irqs_used()
  br label %74

74:                                               ; preds = %72, %65
  %75 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %76 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %75, i32 0, i32 3
  %77 = call i32 @napi_enable(i32* %76)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @phy_start(%struct.TYPE_5__* %80)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @netif_tx_start_all_queues(%struct.net_device* %82)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %87 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FEC_WOL_FLAG_ENABLE, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @device_set_wakeup_enable(i32* %85, i32 %90)
  store i32 0, i32* %2, align 4
  br label %115

92:                                               ; preds = %56
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @fec_enet_free_buffers(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %48
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i32 @fec_enet_clk_enable(%struct.net_device* %96, i32 0)
  br label %98

98:                                               ; preds = %95, %28
  %99 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %100 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @pm_runtime_mark_last_busy(i32* %102)
  %104 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %105 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 @pm_runtime_put_autosuspend(i32* %107)
  %109 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %110 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i32 @pinctrl_pm_select_sleep_state(i32* %112)
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %98, %74, %16
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32*) #1

declare dso_local i32 @fec_enet_clk_enable(%struct.net_device*, i32) #1

declare dso_local i32 @fec_enet_alloc_buffers(%struct.net_device*) #1

declare dso_local i32 @fec_restart(%struct.net_device*) #1

declare dso_local i32 @fec_enet_mii_probe(%struct.net_device*) #1

declare dso_local i32 @phy_reset_after_clk_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @imx6q_cpuidle_fec_irqs_used(...) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @phy_start(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @fec_enet_free_buffers(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
