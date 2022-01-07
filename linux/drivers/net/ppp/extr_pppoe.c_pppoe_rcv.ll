; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.pppoe_hdr = type { i32, i32 }
%struct.pppox_sock = type { i32 }
%struct.pppoe_net = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @pppoe_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.pppoe_hdr*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  %12 = alloca %struct.pppoe_net*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %81

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @skb_mac_header_len(%struct.sk_buff* %21)
  %23 = load i64, i64* @ETH_HLEN, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %78

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @pskb_may_pull(%struct.sk_buff* %27, i32 8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %78

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff* %32)
  store %struct.pppoe_hdr* %33, %struct.pppoe_hdr** %10, align 8
  %34 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %10, align 8
  %35 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_pull_rcsum(%struct.sk_buff* %38, i32 8)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %78

46:                                               ; preds = %31
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %78

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff* %53)
  store %struct.pppoe_hdr* %54, %struct.pppoe_hdr** %10, align 8
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = call i32 @dev_net(%struct.net_device* %55)
  %57 = call %struct.pppoe_net* @pppoe_pernet(i32 %56)
  store %struct.pppoe_net* %57, %struct.pppoe_net** %12, align 8
  %58 = load %struct.pppoe_net*, %struct.pppoe_net** %12, align 8
  %59 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %10, align 8
  %60 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.pppox_sock* @get_item(%struct.pppoe_net* %58, i32 %61, i32 %65, i32 %68)
  store %struct.pppox_sock* %69, %struct.pppox_sock** %11, align 8
  %70 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %71 = icmp ne %struct.pppox_sock* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %52
  br label %78

73:                                               ; preds = %52
  %74 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %75 = call i32 @sk_pppox(%struct.pppox_sock* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @sk_receive_skb(i32 %75, %struct.sk_buff* %76, i32 0)
  store i32 %77, i32* %5, align 4
  br label %83

78:                                               ; preds = %72, %51, %45, %30, %25
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %19
  %82 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %73
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_mac_header_len(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.pppox_sock* @get_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sk_receive_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
