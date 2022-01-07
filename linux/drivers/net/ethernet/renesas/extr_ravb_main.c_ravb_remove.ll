; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ravb_private = type { i64, i32*, i32, i32, i32 }

@RCAR_GEN2 = common dso_local global i64 0, align 8
@CCC_OPC_RESET = common dso_local global i32 0, align 4
@CCC = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i64 0, align 8
@RAVB_BE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ravb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ravb_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %4, align 8
  %9 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %10 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RCAR_GEN2, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @ravb_ptp_stop(%struct.net_device* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %23 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %26 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %29 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* @CCC_OPC_RESET, align 4
  %34 = load i32, i32* @CCC, align 4
  %35 = call i32 @ravb_write(%struct.net_device* %32, i32 %33, i32 %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @pm_runtime_put_sync(i32* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @unregister_netdev(%struct.net_device* %39)
  %41 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %42 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @RAVB_NC, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @netif_napi_del(i32* %45)
  %47 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %48 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @RAVB_BE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @netif_napi_del(i32* %51)
  %53 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %54 = call i32 @ravb_mdio_release(%struct.ravb_private* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_disable(i32* %56)
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @free_netdev(%struct.net_device* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %60, i32* null)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_ptp_stop(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ravb_mdio_release(%struct.ravb_private*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
