; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.nixge_priv = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nixge_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nixge_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nixge_priv* %8, %struct.nixge_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @of_phy_is_fixed_link(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_phy_deregister_fixed_link(i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @of_node_put(i32 %26)
  %28 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %29 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mdiobus_unregister(i64 %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @free_netdev(%struct.net_device* %38)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @of_phy_deregister_fixed_link(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
