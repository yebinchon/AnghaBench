; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_skb_to_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_skb_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_addr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipvl_port = type { i64 }

@IPVLAN_MODE_L3S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipvl_addr* (%struct.sk_buff*, %struct.net_device*)* @ipvlan_skb_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipvl_addr* @ipvlan_skb_to_addr(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipvl_addr*, align 8
  %6 = alloca %struct.ipvl_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store %struct.ipvl_addr* null, %struct.ipvl_addr** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netif_is_ipvlan_port(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %2
  br label %40

16:                                               ; preds = %11
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.ipvl_port* @ipvlan_port_get_rcu(%struct.net_device* %17)
  store %struct.ipvl_port* %18, %struct.ipvl_port** %6, align 8
  %19 = load %struct.ipvl_port*, %struct.ipvl_port** %6, align 8
  %20 = icmp ne %struct.ipvl_port* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ipvl_port*, %struct.ipvl_port** %6, align 8
  %23 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPVLAN_MODE_L3S, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %16
  br label %40

28:                                               ; preds = %21
  %29 = load %struct.ipvl_port*, %struct.ipvl_port** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i8* @ipvlan_get_L3_hdr(%struct.ipvl_port* %29, %struct.sk_buff* %30, i32* %7)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.ipvl_port*, %struct.ipvl_port** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.ipvl_addr* @ipvlan_addr_lookup(%struct.ipvl_port* %36, i8* %37, i32 %38, i32 1)
  store %struct.ipvl_addr* %39, %struct.ipvl_addr** %5, align 8
  br label %40

40:                                               ; preds = %35, %34, %27, %15
  %41 = load %struct.ipvl_addr*, %struct.ipvl_addr** %5, align 8
  ret %struct.ipvl_addr* %41
}

declare dso_local i32 @netif_is_ipvlan_port(%struct.net_device*) #1

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rcu(%struct.net_device*) #1

declare dso_local i8* @ipvlan_get_L3_hdr(%struct.ipvl_port*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.ipvl_addr* @ipvlan_addr_lookup(%struct.ipvl_port*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
