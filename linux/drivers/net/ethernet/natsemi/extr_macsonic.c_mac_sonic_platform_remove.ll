; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_mac_sonic_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_mac_sonic_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.sonic_local = type { i32, i32, i32, i32 }

@SIZEOF_SONIC_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mac_sonic_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_sonic_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sonic_local*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %7)
  store %struct.sonic_local* %8, %struct.sonic_local** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %12 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SIZEOF_SONIC_DESC, align 4
  %15 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %16 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SONIC_BUS_SCALE(i32 %17)
  %19 = mul nsw i32 %14, %18
  %20 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %21 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %24 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_free_coherent(i32 %13, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @free_netdev(%struct.net_device* %27)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @SONIC_BUS_SCALE(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
