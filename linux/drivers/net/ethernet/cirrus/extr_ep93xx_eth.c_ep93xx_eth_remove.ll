; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_eth_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_eth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_eth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_eth_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ep93xx_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp eq %struct.net_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ep93xx_priv* %13, %struct.ep93xx_priv** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @unregister_netdev(%struct.net_device* %14)
  %16 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %17 = call i32 @ep93xx_free_buffers(%struct.ep93xx_priv* %16)
  %18 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @iounmap(i32* %25)
  br label %27

27:                                               ; preds = %22, %11
  %28 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @release_resource(i32* %35)
  %37 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @free_netdev(%struct.net_device* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ep93xx_free_buffers(%struct.ep93xx_priv*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
