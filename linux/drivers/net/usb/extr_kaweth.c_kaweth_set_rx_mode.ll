; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kaweth_device = type { i32 }

@KAWETH_PACKET_FILTER_DIRECTED = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_BROADCAST = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_MULTICAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Setting Rx mode to %d\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_PROMISCUOUS = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_ALL_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @kaweth_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %5)
  store %struct.kaweth_device* %6, %struct.kaweth_device** %3, align 8
  %7 = load i32, i32* @KAWETH_PACKET_FILTER_DIRECTED, align 4
  %8 = load i32, i32* @KAWETH_PACKET_FILTER_BROADCAST, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @KAWETH_PACKET_FILTER_MULTICAST, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @netdev_dbg(%struct.net_device* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_stop_queue(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @KAWETH_PACKET_FILTER_PROMISCUOUS, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @netdev_mc_empty(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_ALLMULTI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31, %27
  %39 = load i32, i32* @KAWETH_PACKET_FILTER_ALL_MULTICAST, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %46 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @netif_wake_queue(%struct.net_device* %47)
  ret void
}

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
