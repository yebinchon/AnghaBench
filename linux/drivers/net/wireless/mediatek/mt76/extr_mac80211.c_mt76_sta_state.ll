; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_sta_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76_dev* }
%struct.mt76_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_sta_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mt76_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %14, align 8
  store %struct.mt76_dev* %15, %struct.mt76_dev** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.mt76_dev*, %struct.mt76_dev** %12, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %27 = call i32 @mt76_sta_add(%struct.mt76_dev* %24, %struct.ieee80211_vif* %25, %struct.ieee80211_sta* %26)
  store i32 %27, i32* %6, align 4
  br label %67

28:                                               ; preds = %19, %5
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.mt76_dev*, %struct.mt76_dev** %12, align 8
  %38 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)** %40, align 8
  %42 = icmp ne i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.mt76_dev*, %struct.mt76_dev** %12, align 8
  %45 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)** %47, align 8
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %12, align 8
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %52 = call i32 %48(%struct.mt76_dev* %49, %struct.ieee80211_vif* %50, %struct.ieee80211_sta* %51)
  br label %53

53:                                               ; preds = %43, %36, %32, %28
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.mt76_dev*, %struct.mt76_dev** %12, align 8
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %65 = call i32 @mt76_sta_remove(%struct.mt76_dev* %62, %struct.ieee80211_vif* %63, %struct.ieee80211_sta* %64)
  br label %66

66:                                               ; preds = %61, %57, %53
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @mt76_sta_add(%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mt76_sta_remove(%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
