; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32*, i32 }
%struct.ep93xx_eth_data = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ep93xx_ethtool_ops = common dso_local global i32 0, align 4
@ep93xx_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ep93xx_eth_data*)* @ep93xx_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ep93xx_dev_alloc(%struct.ep93xx_eth_data* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ep93xx_eth_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.ep93xx_eth_data* %0, %struct.ep93xx_eth_data** %3, align 8
  %5 = call %struct.net_device* @alloc_etherdev(i32 4)
  store %struct.net_device* %5, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = icmp eq %struct.net_device* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ep93xx_eth_data*, %struct.ep93xx_eth_data** %3, align 8
  %14 = getelementptr inbounds %struct.ep93xx_eth_data, %struct.ep93xx_eth_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memcpy(i32 %12, i32 %15, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  store i32* @ep93xx_ethtool_ops, i32** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  store i32* @ep93xx_netdev_ops, i32** %21, align 8
  %22 = load i32, i32* @NETIF_F_SG, align 4
  %23 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %29, %struct.net_device** %2, align 8
  br label %30

30:                                               ; preds = %9, %8
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %31
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
