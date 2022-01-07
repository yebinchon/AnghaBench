; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.netdata_local = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc_eth_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_eth_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdata_local*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %7)
  store %struct.netdata_local* %8, %struct.netdata_local** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %12 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @use_iram_for_net(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %19 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @lpc32xx_return_iram(i32* null, i32* null)
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17, %1
  %24 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %25 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %29 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %32 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %35 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_free_coherent(i32* %27, i64 %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %23, %17
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.net_device* %42)
  %44 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %45 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @iounmap(i32 %46)
  %48 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %49 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mdiobus_unregister(i32 %50)
  %52 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %53 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mdiobus_free(i32 %54)
  %56 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %57 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @clk_disable_unprepare(i32 %58)
  %60 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %61 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_put(i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @free_netdev(%struct.net_device* %64)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @use_iram_for_net(i32*) #1

declare dso_local i64 @lpc32xx_return_iram(i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
