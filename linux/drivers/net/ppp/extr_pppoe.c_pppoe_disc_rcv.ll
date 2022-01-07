; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_disc_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_disc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.pppoe_hdr = type { i64, i32 }
%struct.pppox_sock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pppoe_net = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PADT_CODE = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @pppoe_disc_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_disc_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pppoe_hdr*, align 8
  %10 = alloca %struct.pppox_sock*, align 8
  %11 = alloca %struct.pppoe_net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %66

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @pskb_may_pull(%struct.sk_buff* %19, i32 16)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %63

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff* %24)
  store %struct.pppoe_hdr* %25, %struct.pppoe_hdr** %9, align 8
  %26 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %9, align 8
  %27 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PADT_CODE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %63

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call i32 @dev_net(%struct.net_device* %33)
  %35 = call %struct.pppoe_net* @pppoe_pernet(i32 %34)
  store %struct.pppoe_net* %35, %struct.pppoe_net** %11, align 8
  %36 = load %struct.pppoe_net*, %struct.pppoe_net** %11, align 8
  %37 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %9, align 8
  %38 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.pppox_sock* @get_item(%struct.pppoe_net* %36, i32 %39, i32 %43, i32 %46)
  store %struct.pppox_sock* %47, %struct.pppox_sock** %10, align 8
  %48 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %49 = icmp ne %struct.pppox_sock* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %32
  %51 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %52 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @schedule_work(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %59 = call i32 @sk_pppox(%struct.pppox_sock* %58)
  %60 = call i32 @sock_put(i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %32
  br label %63

63:                                               ; preds = %62, %31, %22
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %63, %17
  %67 = load i32, i32* @NET_RX_SUCCESS, align 4
  ret i32 %67
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff*) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.pppox_sock* @get_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sock_put(i32) #1

declare dso_local i32 @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
