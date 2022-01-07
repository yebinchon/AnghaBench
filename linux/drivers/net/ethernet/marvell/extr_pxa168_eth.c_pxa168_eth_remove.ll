; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i64 }
%struct.pxa168_eth_private = type { i32, i32, i64, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HASH_ADDR_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa168_eth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_eth_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pxa168_eth_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.pxa168_eth_private* %8, %struct.pxa168_eth_private** %4, align 8
  %9 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %10 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %15 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %14, i32 0, i32 5
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HASH_ADDR_TABLE_SIZE, align 4
  %21 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %22 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %25 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(i32 %19, i32 %20, i32* %23, i32 %26)
  %28 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %29 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %13, %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @phy_disconnect(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %42 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %47 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %52 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mdiobus_unregister(i32 %53)
  %55 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %56 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mdiobus_free(i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @unregister_netdev(%struct.net_device* %59)
  %61 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %62 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %61, i32 0, i32 0
  %63 = call i32 @cancel_work_sync(i32* %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @free_netdev(%struct.net_device* %64)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
