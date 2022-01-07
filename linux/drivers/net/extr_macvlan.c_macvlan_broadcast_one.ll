; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_broadcast_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_broadcast_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { %struct.net_device* }
%struct.ethhdr = type { i32 }

@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.macvlan_dev*, %struct.ethhdr*, i32)* @macvlan_broadcast_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_broadcast_one(%struct.sk_buff* %0, %struct.macvlan_dev* %1, %struct.ethhdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.macvlan_dev*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.macvlan_dev* %1, %struct.macvlan_dev** %7, align 8
  store %struct.ethhdr* %2, %struct.ethhdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %12 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.net_device*, %struct.net_device** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @__dev_forward_skb(%struct.net_device* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ether_addr_equal_64bits(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @PACKET_BROADCAST, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @PACKET_MULTICAST, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @__dev_forward_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
