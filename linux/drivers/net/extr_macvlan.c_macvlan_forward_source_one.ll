; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_forward_source_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_forward_source_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.macvlan_dev = type { %struct.net_device* }
%struct.TYPE_2__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.macvlan_dev*)* @macvlan_forward_source_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macvlan_forward_source_one(%struct.sk_buff* %0, %struct.macvlan_dev* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.macvlan_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.macvlan_dev* %1, %struct.macvlan_dev** %4, align 8
  %9 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %10 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ETH_HLEN, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  store %struct.net_device* %36, %struct.net_device** %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ether_addr_equal_64bits(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %30
  %49 = load i32, i32* @PACKET_HOST, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %30
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @netif_rx(%struct.sk_buff* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NET_RX_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @macvlan_count_rx(%struct.macvlan_dev* %55, i32 %56, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %52, %29, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @macvlan_count_rx(%struct.macvlan_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
