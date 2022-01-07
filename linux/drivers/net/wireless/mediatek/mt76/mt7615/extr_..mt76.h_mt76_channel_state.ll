; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_..mt76.h_mt76_channel_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_..mt76.h_mt76_channel_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_channel_state = type { i32 }
%struct.mt76_dev = type { %struct.mt76_sband, %struct.mt76_sband }
%struct.mt76_sband = type { %struct.mt76_channel_state*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt76_channel_state* (%struct.mt76_dev*, %struct.ieee80211_channel*)* @mt76_channel_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt76_channel_state* @mt76_channel_state(%struct.mt76_dev* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.mt76_sband*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 1
  store %struct.mt76_sband* %14, %struct.mt76_sband** %5, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %16, i32 0, i32 0
  store %struct.mt76_sband* %17, %struct.mt76_sband** %5, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = load %struct.mt76_sband*, %struct.mt76_sband** %5, align 8
  %21 = getelementptr inbounds %struct.mt76_sband, %struct.mt76_sband* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i64 0
  %25 = ptrtoint %struct.ieee80211_channel* %19 to i64
  %26 = ptrtoint %struct.ieee80211_channel* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mt76_sband*, %struct.mt76_sband** %5, align 8
  %31 = getelementptr inbounds %struct.mt76_sband, %struct.mt76_sband* %30, i32 0, i32 0
  %32 = load %struct.mt76_channel_state*, %struct.mt76_channel_state** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mt76_channel_state, %struct.mt76_channel_state* %32, i64 %34
  ret %struct.mt76_channel_state* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
