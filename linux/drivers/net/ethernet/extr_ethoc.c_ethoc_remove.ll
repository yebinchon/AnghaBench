; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ethoc = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ethoc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethoc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ethoc* @netdev_priv(%struct.net_device* %7)
  store %struct.ethoc* %8, %struct.ethoc** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %13 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %12, i32 0, i32 2
  %14 = call i32 @netif_napi_del(i32* %13)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_disconnect(i32 %17)
  %19 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %20 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %25 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mdiobus_unregister(i64 %26)
  %28 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %29 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mdiobus_free(i64 %30)
  br label %32

32:                                               ; preds = %23, %11
  %33 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %34 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @unregister_netdev(%struct.net_device* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @free_netdev(%struct.net_device* %39)
  br label %41

41:                                               ; preds = %32, %1
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @mdiobus_free(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
