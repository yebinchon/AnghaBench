; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.bcm63xx_enet_platform_data = type { i32 (%struct.net_device*, i32, i32, i32)* }

@ENET_MIISC_REG = common dso_local global i32 0, align 4
@bcm_enet_mdio_read_mii = common dso_local global i32 0, align 4
@bcm_enet_mdio_write_mii = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_enet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bcm63xx_enet_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_enet_priv* %9, %struct.bcm_enet_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @unregister_netdev(%struct.net_device* %10)
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %13 = load i32, i32* @ENET_MIISC_REG, align 4
  %14 = call i32 @enet_writel(%struct.bcm_enet_priv* %12, i32 0, i32 %13)
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %21 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mdiobus_unregister(i32 %22)
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mdiobus_free(i32 %26)
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.bcm63xx_enet_platform_data* @dev_get_platdata(i32* %30)
  store %struct.bcm63xx_enet_platform_data* %31, %struct.bcm63xx_enet_platform_data** %5, align 8
  %32 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %5, align 8
  %33 = icmp ne %struct.bcm63xx_enet_platform_data* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %35, i32 0, i32 0
  %37 = load i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.net_device*, i32, i32, i32)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %40, i32 0, i32 0
  %42 = load i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32)** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @bcm_enet_mdio_read_mii, align 4
  %45 = load i32, i32* @bcm_enet_mdio_write_mii, align 4
  %46 = call i32 %42(%struct.net_device* %43, i32 0, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %34, %28
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %50 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  %53 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %54 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @free_netdev(%struct.net_device* %57)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local %struct.bcm63xx_enet_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
