; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_net_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, i64, i32, i32, i32*, i32, i32 }
%struct.tun_struct = type { i32 }

@TUN_TYPE_MASK = common dso_local global i32 0, align 4
@tun_netdev_ops = common dso_local global i32 0, align 4
@ARPHRD_NONE = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@tap_netdev_ops = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@MIN_MTU = common dso_local global i32 0, align 4
@MAX_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tun_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_net_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tun_struct*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %4)
  store %struct.tun_struct* %5, %struct.tun_struct** %3, align 8
  %6 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TUN_TYPE_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %48 [
    i32 128, label %11
    i32 129, label %30
  ]

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 6
  store i32* @tun_netdev_ops, i32** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 1500, i32* %19, align 8
  %20 = load i32, i32* @ARPHRD_NONE, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @IFF_POINTOPOINT, align 4
  %24 = load i32, i32* @IFF_NOARP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IFF_MULTICAST, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %48

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 6
  store i32* @tap_netdev_ops, i32** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @ether_setup(%struct.net_device* %33)
  %35 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @eth_hw_addr_random(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %1, %30, %11
  %49 = load i32, i32* @MIN_MTU, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @MAX_MTU, align 8
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  ret void
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
