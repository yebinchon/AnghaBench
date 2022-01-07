; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ftgmac100 = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftgmac100_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ftgmac100*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %7)
  store %struct.ftgmac100* %8, %struct.ftgmac100** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %12 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %16 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %15, i32 0, i32 3
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @ftgmac100_destroy_mdio(%struct.net_device* %18)
  %20 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %21 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %25 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @release_resource(i32 %26)
  %28 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %29 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %28, i32 0, i32 0
  %30 = call i32 @netif_napi_del(i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @free_netdev(%struct.net_device* %31)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ftgmac100_destroy_mdio(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
