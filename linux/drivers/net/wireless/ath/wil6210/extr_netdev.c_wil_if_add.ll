; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_if_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, i32, i64, i32, %struct.net_device*, %struct.wiphy* }
%struct.net_device = type { i32 }
%struct.wiphy = type { i32 }
%struct.wil6210_vif = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to register wiphy, err %d\0A\00", align 1
@wil6210_netdev_poll_rx_edma = common dso_local global i32 0, align 4
@WIL6210_NAPI_BUDGET = common dso_local global i32 0, align 4
@wil6210_netdev_poll_tx_edma = common dso_local global i32 0, align 4
@wil6210_netdev_poll_rx = common dso_local global i32 0, align 4
@wil6210_netdev_poll_tx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_if_add(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %9 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %8, i32 0, i32 6
  %10 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  store %struct.wiphy* %10, %struct.wiphy** %4, align 8
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %12 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %11, i32 0, i32 5
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %14)
  store %struct.wil6210_vif* %15, %struct.wil6210_vif** %6, align 8
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %17 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %19 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %26 = call i32 @wiphy_register(%struct.wiphy* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @wil_err(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %1
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %36 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %35, i32 0, i32 1
  %37 = call i32 @init_dummy_netdev(i32* %36)
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %39 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %44 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %43, i32 0, i32 1
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %46 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %45, i32 0, i32 2
  %47 = load i32, i32* @wil6210_netdev_poll_rx_edma, align 4
  %48 = load i32, i32* @WIL6210_NAPI_BUDGET, align 4
  %49 = call i32 @netif_napi_add(i32* %44, i32* %46, i32 %47, i32 %48)
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %51 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %50, i32 0, i32 1
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 0
  %54 = load i32, i32* @wil6210_netdev_poll_tx_edma, align 4
  %55 = load i32, i32* @WIL6210_NAPI_BUDGET, align 4
  %56 = call i32 @netif_tx_napi_add(i32* %51, i32* %53, i32 %54, i32 %55)
  br label %72

57:                                               ; preds = %34
  %58 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %59 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %58, i32 0, i32 1
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %61 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %60, i32 0, i32 2
  %62 = load i32, i32* @wil6210_netdev_poll_rx, align 4
  %63 = load i32, i32* @WIL6210_NAPI_BUDGET, align 4
  %64 = call i32 @netif_napi_add(i32* %59, i32* %61, i32 %62, i32 %63)
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 1
  %67 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %68 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %67, i32 0, i32 0
  %69 = load i32, i32* @wil6210_netdev_poll_tx, align 4
  %70 = load i32, i32* @WIL6210_NAPI_BUDGET, align 4
  %71 = call i32 @netif_tx_napi_add(i32* %66, i32* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %57, %42
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %74 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %75 = call i32 @wil_update_net_queues_bh(%struct.wil6210_priv* %73, %struct.wil6210_vif* %74, i32* null, i32 1)
  %76 = call i32 (...) @rtnl_lock()
  %77 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %78 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %79 = call i32 @wil_vif_add(%struct.wil6210_priv* %77, %struct.wil6210_vif* %78)
  store i32 %79, i32* %7, align 4
  %80 = call i32 (...) @rtnl_unlock()
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %89

85:                                               ; preds = %83
  %86 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %87 = call i32 @wiphy_unregister(%struct.wiphy* %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %84, %29
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @wiphy_register(%struct.wiphy*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @init_dummy_netdev(i32*) #1

declare dso_local i32 @netif_napi_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @netif_tx_napi_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @wil_update_net_queues_bh(%struct.wil6210_priv*, %struct.wil6210_vif*, i32*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @wil_vif_add(%struct.wil6210_priv*, %struct.wil6210_vif*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @wiphy_unregister(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
