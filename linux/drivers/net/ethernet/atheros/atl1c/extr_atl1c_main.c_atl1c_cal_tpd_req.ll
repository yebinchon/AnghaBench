; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_cal_tpd_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_cal_tpd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*)* @atl1c_cal_tpd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1c_cal_tpd_req(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i64 @skb_is_gso(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i64 @skb_transport_offset(%struct.sk_buff* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i64 @tcp_hdrlen(%struct.sk_buff* %16)
  %18 = add nsw i64 %15, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call i64 @skb_headlen(%struct.sk_buff* %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
