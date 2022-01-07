; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_finish_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_finish_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.ethhdr = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @vrf_finish_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_finish_direct(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i64 @skb_headroom(%struct.sk_buff* %17)
  %19 = load i64, i64* @ETH_HLEN, align 8
  %20 = icmp sge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i64, i64* @ETH_HLEN, align 8
  %27 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %25, i64 %26)
  store %struct.ethhdr* %27, %struct.ethhdr** %8, align 8
  %28 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ether_addr_copy(i32 %30, i32 %33)
  %35 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @eth_zero_addr(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %43 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = call i32 (...) @rcu_read_lock_bh()
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = call i32 @dev_queue_xmit_nit(%struct.sk_buff* %45, %struct.net_device* %46)
  %48 = call i32 (...) @rcu_read_unlock_bh()
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i64, i64* @ETH_HLEN, align 8
  %51 = call i32 @skb_pull(%struct.sk_buff* %49, i64 %50)
  br label %52

52:                                               ; preds = %24, %16, %3
  ret i32 1
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @dev_queue_xmit_nit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
