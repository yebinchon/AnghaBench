; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_is_p2p_go_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_is_p2p_go_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_mgmt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@P2P_WILDCARD_SSID_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @ath6kl_is_p2p_go_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_is_p2p_go_ssid(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = bitcast i64* %7 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %8, %struct.ieee80211_mgmt** %6, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = icmp uge i64* %11, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @P2P_WILDCARD_SSID_LEN, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %31

30:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
