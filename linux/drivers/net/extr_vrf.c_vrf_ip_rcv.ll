; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sk_buff = type { i64, i32, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPSKB_L3SLAVE = common dso_local global i32 0, align 4
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.sk_buff*)* @vrf_ip_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vrf_ip_rcv(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 4
  store %struct.net_device* %5, %struct.net_device** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @IPSKB_L3SLAVE, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_3__* @ip_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ipv4_is_multicast(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PACKET_LOOPBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @PACKET_HOST, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %66

36:                                               ; preds = %26
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vrf_rx_stats(%struct.net_device* %37, i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = call i32 @list_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @skb_push(%struct.sk_buff* %47, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @dev_queue_xmit_nit(%struct.sk_buff* %52, %struct.net_device* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @skb_pull(%struct.sk_buff* %55, i32 %58)
  br label %60

60:                                               ; preds = %46, %36
  %61 = load i32, i32* @NFPROTO_IPV4, align 4
  %62 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call %struct.sk_buff* @vrf_rcv_nfhook(i32 %61, i32 %62, %struct.sk_buff* %63, %struct.net_device* %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %4, align 8
  br label %66

66:                                               ; preds = %60, %32, %25
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %67
}

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.TYPE_3__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @vrf_rx_stats(%struct.net_device*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit_nit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @vrf_rcv_nfhook(i32, i32, %struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
