; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_enet_pdata = type { %struct.TYPE_2__*, i32, i64, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*)* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_enet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.xgene_enet_pdata* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.xgene_enet_pdata* %6, %struct.xgene_enet_pdata** %3, align 8
  %7 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %7, i32 0, i32 3
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
  %19 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %20 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %25 = call i32 @xgene_enet_phy_disconnect(%struct.xgene_enet_pdata* %24)
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @phy_interface_mode_is_rgmii(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %34 = call i32 @xgene_enet_mdio_remove(%struct.xgene_enet_pdata* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @unregister_netdev(%struct.net_device* %37)
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %40 = call i32 @xgene_enet_delete_desc_rings(%struct.xgene_enet_pdata* %39)
  %41 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %42 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.xgene_enet_pdata*)*, i32 (%struct.xgene_enet_pdata*)** %44, align 8
  %46 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %47 = call i32 %45(%struct.xgene_enet_pdata* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @free_netdev(%struct.net_device* %48)
  ret i32 0
}

declare dso_local %struct.xgene_enet_pdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @xgene_enet_phy_disconnect(%struct.xgene_enet_pdata*) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i32) #1

declare dso_local i32 @xgene_enet_mdio_remove(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @xgene_enet_delete_desc_rings(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
