; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.sock*, %struct.sk_buff*)* @vrf_ip_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vrf_ip_out(%struct.net_device* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %9 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ipv4_is_multicast(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ipv4_is_lbcast(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %4, align 8
  br label %36

23:                                               ; preds = %14
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i64 @qdisc_tx_is_default(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.sk_buff* @vrf_ip_out_direct(%struct.net_device* %28, %struct.sock* %29, %struct.sk_buff* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call %struct.sk_buff* @vrf_ip_out_redirect(%struct.net_device* %33, %struct.sk_buff* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %4, align 8
  br label %36

36:                                               ; preds = %32, %27, %21
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %37
}

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv4_is_lbcast(i32) #1

declare dso_local i64 @qdisc_tx_is_default(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @vrf_ip_out_direct(%struct.net_device*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @vrf_ip_out_redirect(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
