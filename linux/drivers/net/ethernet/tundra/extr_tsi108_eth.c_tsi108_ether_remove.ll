; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_ether_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_ether_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tsi108_ether_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_ether_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tsi108_prv_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.tsi108_prv_data* %8, %struct.tsi108_prv_data** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @tsi108_stop_ethernet(%struct.net_device* %11)
  %13 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %4, align 8
  %14 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iounmap(i32 %15)
  %17 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %4, align 8
  %18 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iounmap(i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @free_netdev(%struct.net_device* %21)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @tsi108_stop_ethernet(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
