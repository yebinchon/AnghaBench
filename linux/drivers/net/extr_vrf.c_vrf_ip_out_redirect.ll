; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_out_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_out_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_vrf = type { i32 }
%struct.dst_entry = type { i32 }
%struct.rtable = type { %struct.dst_entry }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.sk_buff*)* @vrf_ip_out_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vrf_ip_out_redirect(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_vrf*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.rtable*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net_vrf* @netdev_priv(%struct.net_device* %9)
  store %struct.net_vrf* %10, %struct.net_vrf** %6, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %7, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_vrf*, %struct.net_vrf** %6, align 8
  %13 = getelementptr inbounds %struct.net_vrf, %struct.net_vrf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rtable* @rcu_dereference(i32 %14)
  store %struct.rtable* %15, %struct.rtable** %8, align 8
  %16 = load %struct.rtable*, %struct.rtable** %8, align 8
  %17 = call i64 @likely(%struct.rtable* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.rtable*, %struct.rtable** %8, align 8
  %21 = getelementptr inbounds %struct.rtable, %struct.rtable* %20, i32 0, i32 0
  store %struct.dst_entry* %21, %struct.dst_entry** %7, align 8
  %22 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %23 = call i32 @dst_hold(%struct.dst_entry* %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %27 = icmp ne %struct.dst_entry* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @vrf_tx_error(%struct.net_device* %33, %struct.sk_buff* %34)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %43

36:                                               ; preds = %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_dst_drop(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %41 = call i32 @skb_dst_set(%struct.sk_buff* %39, %struct.dst_entry* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %3, align 8
  br label %43

43:                                               ; preds = %36, %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %44
}

declare dso_local %struct.net_vrf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.rtable*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vrf_tx_error(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
