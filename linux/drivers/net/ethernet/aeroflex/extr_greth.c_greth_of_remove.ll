; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_of_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_of_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, i32 }
%struct.net_device = type { i64 }
%struct.greth_private = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @greth_of_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_of_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.greth_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.greth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.greth_private* %8, %struct.greth_private** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %12 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %15 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dma_free_coherent(i32* %10, i32 1024, i32 %13, i32 %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %21 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %24 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_free_coherent(i32* %19, i32 1024, i32 %22, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @phy_stop(i64 %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %38 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mdiobus_unregister(i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @unregister_netdev(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @free_netdev(%struct.net_device* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %50 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @resource_size(i32* %55)
  %57 = call i32 @of_iounmap(i32* %48, i32 %51, i32 %56)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
