; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c___mt76_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c___mt76_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32*, i64 }
%struct.mt76_wcid = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mt76_sta_remove(%struct.mt76_dev* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt76_wcid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mt76_wcid*
  store %struct.mt76_wcid* %13, %struct.mt76_wcid** %7, align 8
  %14 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %15 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rcu_assign_pointer(i32 %23, i32* null)
  %25 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %38, %3
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %29 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %35 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mt76_rx_aggr_stop(%struct.mt76_dev* %34, %struct.mt76_wcid* %35, i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)** %45, align 8
  %47 = icmp ne i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %50 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)** %52, align 8
  %54 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %57 = call i32 %53(%struct.mt76_dev* %54, %struct.ieee80211_vif* %55, %struct.ieee80211_sta* %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %60 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %61 = call i32 @mt76_tx_status_check(%struct.mt76_dev* %59, %struct.mt76_wcid* %60, i32 1)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %79, %58
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %62
  %70 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mt76_txq_remove(%struct.mt76_dev* %70, i32 %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %62

82:                                               ; preds = %62
  %83 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %84 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @mt76_wcid_free(i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt76_rx_aggr_stop(%struct.mt76_dev*, %struct.mt76_wcid*, i32) #1

declare dso_local i32 @mt76_tx_status_check(%struct.mt76_dev*, %struct.mt76_wcid*, i32) #1

declare dso_local i32 @mt76_txq_remove(%struct.mt76_dev*, i32) #1

declare dso_local i32 @mt76_wcid_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
