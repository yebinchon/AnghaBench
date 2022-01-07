; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.xgmac_priv = type { i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgmac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xgmac_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.xgmac_priv* %9, %struct.xgmac_priv** %4, align 8
  %10 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xgmac_mac_disable(i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.net_device* %17)
  %19 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %20 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @unregister_netdev(%struct.net_device* %24)
  %26 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %26, i32 0, i32 1
  %28 = call i32 @netif_napi_del(i32* %27)
  %29 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %30 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i32 @release_mem_region(i32 %38, i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @free_netdev(%struct.net_device* %42)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xgmac_mac_disable(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
