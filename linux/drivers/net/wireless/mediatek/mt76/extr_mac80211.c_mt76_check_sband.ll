; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_check_sband.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_check_sband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, i32)* @mt76_check_sband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_check_sband(%struct.mt76_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, i64 %16
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  store %struct.ieee80211_supported_band* %18, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %20 = icmp ne %struct.ieee80211_supported_band* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %63

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %43

42:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %23

46:                                               ; preds = %42, %23
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %63

50:                                               ; preds = %46
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %59, i64 %61
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %62, align 8
  br label %63

63:                                               ; preds = %50, %49, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
