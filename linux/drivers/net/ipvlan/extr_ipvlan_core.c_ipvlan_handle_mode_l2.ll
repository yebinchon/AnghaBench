; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_handle_mode_l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_handle_mode_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipvl_port = type { i32 }
%struct.ethhdr = type { i32 }

@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, %struct.ipvl_port*)* @ipvlan_handle_mode_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_handle_mode_l2(%struct.sk_buff** %0, %struct.ipvl_port* %1) #0 {
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.ipvl_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  store %struct.ipvl_port* %1, %struct.ipvl_port** %4, align 8
  %9 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %11)
  store %struct.ethhdr* %12, %struct.ethhdr** %6, align 8
  %13 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %15 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @is_multicast_ether_addr(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %22 = call i64 @ipvlan_external_frame(%struct.sk_buff* %20, %struct.ipvl_port* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i32 @ipvlan_skb_crossing_ns(%struct.sk_buff* %31, i32* null)
  %33 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call i32 @ipvlan_multicast_enqueue(%struct.ipvl_port* %33, %struct.sk_buff* %34, i32 0)
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %19
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %40 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %41 = call i32 @ipvlan_handle_mode_l3(%struct.sk_buff** %39, %struct.ipvl_port* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ipvlan_external_frame(%struct.sk_buff*, %struct.ipvl_port*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipvlan_skb_crossing_ns(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ipvlan_multicast_enqueue(%struct.ipvl_port*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ipvlan_handle_mode_l3(%struct.sk_buff**, %struct.ipvl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
