; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xge_pdata = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xge_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xge_pdata*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.xge_pdata* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.xge_pdata* %6, %struct.xge_pdata** %3, align 8
  %7 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i64 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @dev_close(%struct.net_device* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = call i32 (...) @rtnl_unlock()
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @xge_mdio_remove(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @unregister_netdev(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @free_netdev(%struct.net_device* %23)
  ret i32 0
}

declare dso_local %struct.xge_pdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @xge_mdio_remove(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
