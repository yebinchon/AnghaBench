; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_xmit_mode_l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_xmit_mode_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { i32, i32 }
%struct.ethhdr = type { i32, i32 }
%struct.ipvl_addr = type { i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipvlan_xmit_mode_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_xmit_mode_l2(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipvl_dev*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.ipvl_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.ipvl_dev* %12, %struct.ipvl_dev** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %13)
  store %struct.ethhdr* %14, %struct.ethhdr** %7, align 8
  %15 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %16 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipvlan_is_vepa(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %74, label %20

20:                                               ; preds = %2
  %21 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ether_addr_equal(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %20
  %30 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %31 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i8* @ipvlan_get_L3_hdr(i32 %32, %struct.sk_buff* %33, i32* %10)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %39 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.ipvl_addr* @ipvlan_addr_lookup(i32 %40, i8* %41, i32 %42, i32 1)
  store %struct.ipvl_addr* %43, %struct.ipvl_addr** %8, align 8
  %44 = load %struct.ipvl_addr*, %struct.ipvl_addr** %8, align 8
  %45 = icmp ne %struct.ipvl_addr* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %48 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ipvlan_is_private(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @consume_skb(%struct.sk_buff* %53)
  %55 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %46
  %57 = load %struct.ipvl_addr*, %struct.ipvl_addr** %8, align 8
  %58 = call i32 @ipvlan_rcv_frame(%struct.ipvl_addr* %57, %struct.sk_buff** %4, i32 1)
  store i32 %58, i32* %3, align 4
  br label %98

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %61, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %60
  %69 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %70 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @dev_forward_skb(i32 %71, %struct.sk_buff* %72)
  store i32 %73, i32* %3, align 4
  br label %98

74:                                               ; preds = %20, %2
  %75 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %76 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @is_multicast_ether_addr(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @ipvlan_skb_crossing_ns(%struct.sk_buff* %81, i32* null)
  %83 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %84 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @ipvlan_multicast_enqueue(i32 %85, %struct.sk_buff* %86, i32 1)
  %88 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %88, i32* %3, align 4
  br label %98

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %92 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @dev_queue_xmit(%struct.sk_buff* %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %90, %80, %68, %66, %56, %52
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipvlan_is_vepa(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i8* @ipvlan_get_L3_hdr(i32, %struct.sk_buff*, i32*) #1

declare dso_local %struct.ipvl_addr* @ipvlan_addr_lookup(i32, i8*, i32, i32) #1

declare dso_local i64 @ipvlan_is_private(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipvlan_rcv_frame(%struct.ipvl_addr*, %struct.sk_buff**, i32) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_forward_skb(i32, %struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ipvlan_skb_crossing_ns(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ipvlan_multicast_enqueue(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
