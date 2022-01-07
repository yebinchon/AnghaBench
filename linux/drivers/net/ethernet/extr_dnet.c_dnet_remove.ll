; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32, i64 }
%struct.dnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dnet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dnet*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.dnet* @netdev_priv(%struct.net_device* %10)
  store %struct.dnet* %11, %struct.dnet** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @phy_disconnect(i64 %19)
  br label %21

21:                                               ; preds = %16, %9
  %22 = load %struct.dnet*, %struct.dnet** %4, align 8
  %23 = getelementptr inbounds %struct.dnet, %struct.dnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mdiobus_unregister(i32 %24)
  %26 = load %struct.dnet*, %struct.dnet** %4, align 8
  %27 = getelementptr inbounds %struct.dnet, %struct.dnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mdiobus_free(i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @unregister_netdev(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @free_netdev(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.dnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
