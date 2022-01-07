; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_check_agg_ssn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_check_agg_ssn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_txq = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_txq*, %struct.sk_buff*)* @mt76_check_agg_ssn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_check_agg_ssn(%struct.mt76_txq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mt76_txq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.mt76_txq* %0, %struct.mt76_txq** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %9, %struct.ieee80211_hdr** %5, align 8
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ieee80211_is_data_qos(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_is_data_present(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  %27 = add nsw i64 %26, 16
  %28 = load %struct.mt76_txq*, %struct.mt76_txq** %3, align 8
  %29 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_data_present(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
