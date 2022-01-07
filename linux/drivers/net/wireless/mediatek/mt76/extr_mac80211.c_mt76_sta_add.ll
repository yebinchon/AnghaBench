; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_5__**, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.mt76_wcid = type { i64, i32 }
%struct.mt76_txq = type { %struct.mt76_wcid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mt76_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_sta_add(%struct.mt76_dev* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt76_wcid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt76_txq*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.mt76_wcid*
  store %struct.mt76_wcid* %14, %struct.mt76_wcid** %7, align 8
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)**
  %23 = load i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)** %22, align 8
  %24 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %27 = call i32 %23(%struct.mt76_dev* %24, %struct.ieee80211_vif* %25, %struct.ieee80211_sta* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %89

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %35, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %32
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %72

49:                                               ; preds = %39
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.mt76_txq*
  store %struct.mt76_txq* %59, %struct.mt76_txq** %10, align 8
  %60 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %61 = load %struct.mt76_txq*, %struct.mt76_txq** %10, align 8
  %62 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %61, i32 0, i32 0
  store %struct.mt76_wcid* %60, %struct.mt76_wcid** %62, align 8
  %63 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @mt76_txq_init(%struct.mt76_dev* %63, %struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %49, %48
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %77 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %76, i32 0, i32 1
  %78 = call i32 @ewma_signal_init(i32* %77)
  %79 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %80 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %83 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %88 = call i32 @rcu_assign_pointer(i32 %86, %struct.mt76_wcid* %87)
  br label %89

89:                                               ; preds = %75, %30
  %90 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %91 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i32 @mt76_txq_init(%struct.mt76_dev*, %struct.TYPE_5__*) #1

declare dso_local i32 @ewma_signal_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mt76_wcid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
