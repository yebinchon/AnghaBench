; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_wcid_key_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_wcid_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_wcid = type { i32, i32* }
%struct.ieee80211_key_conf = type { i64 }
%struct.ieee80211_key_seq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_wcid_key_setup(%struct.mt76_dev* %0, %struct.mt76_wcid* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.mt76_wcid*, align 8
  %6 = alloca %struct.ieee80211_key_conf*, align 8
  %7 = alloca %struct.ieee80211_key_seq, align 4
  %8 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %5, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %6, align 8
  %9 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %10 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %12 = icmp ne %struct.ieee80211_key_conf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %46

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %23 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %43, %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %29, i32 %30, %struct.ieee80211_key_seq* %7)
  %32 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %33 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %38, i32 %41, i32 4)
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %24

46:                                               ; preds = %13, %20, %24
  ret void
}

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
