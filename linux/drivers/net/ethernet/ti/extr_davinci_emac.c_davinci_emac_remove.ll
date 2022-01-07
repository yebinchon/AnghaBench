; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_davinci_emac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_davinci_emac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32 }
%struct.emac_priv = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"DaVinci EMAC: davinci_emac_remove()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_emac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_emac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.emac_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.emac_priv* %9, %struct.emac_priv** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = call i32 @dev_notice(i32* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %18 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %23 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @cpdma_chan_destroy(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %28 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @cpdma_chan_destroy(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %38 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpdma_ctlr_destroy(i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @unregister_netdev(%struct.net_device* %41)
  %43 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %44 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @of_node_put(i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_disable(%struct.TYPE_2__* %48)
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = call i64 @of_phy_is_fixed_link(%struct.device_node* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %54)
  br label %56

56:                                               ; preds = %53, %36
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @free_netdev(%struct.net_device* %57)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @cpdma_chan_destroy(i64) #1

declare dso_local i32 @cpdma_ctlr_destroy(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_2__*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
