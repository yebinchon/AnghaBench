; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.hip04_priv = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hip04_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hip04_priv*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hip04_priv* %9, %struct.hip04_priv** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %13 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %18 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @phy_disconnect(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @hip04_free_ring(%struct.net_device* %22, %struct.device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @unregister_netdev(%struct.net_device* %25)
  %27 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %28 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_node_put(i32 %29)
  %31 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %32 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %31, i32 0, i32 0
  %33 = call i32 @cancel_work_sync(i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @free_netdev(%struct.net_device* %34)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @hip04_free_ring(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
