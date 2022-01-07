; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethhdr = type { i32 }
%struct.bpqdev = type { i32* }

@init_net = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @bpq_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca %struct.bpqdev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call i32 @dev_net(%struct.net_device* %14)
  %16 = call i32 @net_eq(i32 %15, i32* @init_net)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %114

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = icmp eq %struct.sk_buff* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %25, i32* %5, align 4
  br label %117

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @pskb_may_pull(%struct.sk_buff* %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %114

31:                                               ; preds = %26
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %33)
  store %struct.net_device* %34, %struct.net_device** %7, align 8
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = icmp eq %struct.net_device* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i32 @netif_running(%struct.net_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %31
  br label %111

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call %struct.bpqdev* @netdev_priv(%struct.net_device* %43)
  store %struct.bpqdev* %44, %struct.bpqdev** %13, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %45)
  store %struct.ethhdr* %46, %struct.ethhdr** %12, align 8
  %47 = load %struct.bpqdev*, %struct.bpqdev** %13, align 8
  %48 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %42
  %55 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %56 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bpqdev*, %struct.bpqdev** %13, align 8
  %59 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ether_addr_equal(i32 %57, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %111

64:                                               ; preds = %54, %42
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i64 @skb_cow(%struct.sk_buff* %65, i32 4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %111

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 256
  %81 = add nsw i32 %74, %80
  %82 = sub nsw i32 %81, 5
  store i32 %82, i32* %10, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @skb_pull(%struct.sk_buff* %83, i32 2)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @skb_trim(%struct.sk_buff* %85, i32 %86)
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i8* @skb_push(%struct.sk_buff* %99, i32 1)
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %11, align 8
  store i8 0, i8* %101, align 1
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load %struct.net_device*, %struct.net_device** %7, align 8
  %104 = call i32 @ax25_type_trans(%struct.sk_buff* %102, %struct.net_device* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @netif_rx(%struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %111, %69
  %110 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %5, align 4
  br label %117

111:                                              ; preds = %68, %63, %41
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  br label %109

114:                                              ; preds = %30, %18
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %109, %24
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @bpq_get_ax25_dev(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.bpqdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32, i32*) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax25_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
