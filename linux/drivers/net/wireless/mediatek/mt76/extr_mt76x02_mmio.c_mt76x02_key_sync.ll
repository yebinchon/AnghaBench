; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_key_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_key_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i64 }
%struct.mt76_wcid = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*, i8*)* @mt76x02_key_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_key_sync(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3, i8* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mt76x02_dev*, align 8
  %12 = alloca %struct.mt76_wcid*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %14, align 8
  store %struct.mt76x02_dev* %15, %struct.mt76x02_dev** %11, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %17 = icmp ne %struct.ieee80211_sta* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %44

19:                                               ; preds = %5
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.mt76_wcid*
  store %struct.mt76_wcid* %23, %struct.mt76_wcid** %12, align 8
  %24 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %25 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %33 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %19
  br label %44

37:                                               ; preds = %31
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %11, align 8
  %39 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %40 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %43 = call i32 @mt76x02_mac_wcid_sync_pn(%struct.mt76x02_dev* %38, i32 %41, %struct.ieee80211_key_conf* %42)
  br label %44

44:                                               ; preds = %37, %36, %18
  ret void
}

declare dso_local i32 @mt76x02_mac_wcid_sync_pn(%struct.mt76x02_dev*, i32, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
