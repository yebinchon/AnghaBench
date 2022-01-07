; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i64 }
%struct.ath9k_htc_vif = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @ath9k_htc_beacon_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_beacon_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath9k_htc_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %14, %struct.ath9k_htc_vif** %8, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %8, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %20, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
