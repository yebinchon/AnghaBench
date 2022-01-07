; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_dev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32, i32 }
%struct.emac_priv = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EMAC_SOFTRESET = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DaVinci EMAC: %s stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_dev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dev_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.emac_priv*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.emac_priv* %9, %struct.emac_priv** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %15 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %14, i32 0, i32 3
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_carrier_off(%struct.net_device* %17)
  %19 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %20 = call i32 @emac_int_disable(%struct.emac_priv* %19)
  %21 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %22 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpdma_ctlr_stop(i32 %23)
  %25 = load i32, i32* @EMAC_SOFTRESET, align 4
  %26 = call i32 @emac_write(i32 %25, i32 1)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @phy_disconnect(i64 %34)
  br label %36

36:                                               ; preds = %31, %1
  br label %37

37:                                               ; preds = %64, %36
  %38 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %39 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @IORESOURCE_IRQ, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %40, i32 %41, i32 %42)
  store %struct.resource* %43, %struct.resource** %3, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load %struct.resource*, %struct.resource** %3, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %61, %45
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.resource*, %struct.resource** %3, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %58 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @free_irq(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %37

67:                                               ; preds = %37
  %68 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %69 = call i64 @netif_msg_drv(%struct.emac_priv* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_notice(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %67
  %78 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %79 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @pm_runtime_put(i32* %81)
  ret i32 0
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @emac_int_disable(%struct.emac_priv*) #1

declare dso_local i32 @cpdma_ctlr_stop(i32) #1

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
