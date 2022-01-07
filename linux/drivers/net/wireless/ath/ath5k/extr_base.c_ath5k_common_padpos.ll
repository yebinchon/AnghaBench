; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_common_padpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_common_padpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ath5k_common_padpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_common_padpos(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee80211_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %9, %struct.ieee80211_hdr** %3, align 8
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  store i32 24, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ieee80211_has_a4(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i64, i64* @ETH_ALEN, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @ieee80211_is_data_qos(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* @IEEE80211_QOS_CTL_LEN, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
