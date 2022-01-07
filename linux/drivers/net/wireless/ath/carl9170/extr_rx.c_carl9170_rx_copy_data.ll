; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@NET_IP_ALIGN = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_A_MSDU_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32*, i32)* @carl9170_rx_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @carl9170_rx_copy_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %11, %struct.ieee80211_hdr** %7, align 8
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ieee80211_is_data_qos(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %19 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* @NET_IP_ALIGN, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_QOS_CTL_A_MSDU_PRESENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @NET_IP_ALIGN, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %17
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ieee80211_has_a4(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @NET_IP_ALIGN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NET_IP_ALIGN, align 4
  %46 = and i32 %44, %45
  %47 = add nsw i32 32, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = call %struct.sk_buff* @dev_alloc_skb(i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i64 @likely(%struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @skb_reserve(%struct.sk_buff* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @skb_put_data(%struct.sk_buff* %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %43
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %64
}

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
