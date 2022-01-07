; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_sta_rate_tbl_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_sta_rate_tbl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7603_dev* }
%struct.mt7603_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64, i32, i64 }
%struct.mt7603_sta = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mt7603_sta_rate_tbl_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_sta_rate_tbl_update(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt7603_dev*, align 8
  %8 = alloca %struct.mt7603_sta*, align 8
  %9 = alloca %struct.ieee80211_sta_rates*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %12, align 8
  store %struct.mt7603_dev* %13, %struct.mt7603_dev** %7, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mt7603_sta*
  store %struct.mt7603_sta* %17, %struct.mt7603_sta** %8, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ieee80211_sta_rates* @rcu_dereference(i32 %20)
  store %struct.ieee80211_sta_rates* %21, %struct.ieee80211_sta_rates** %9, align 8
  %22 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %100, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %29 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %103

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %43 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %41, i64* %48, align 8
  %49 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %58 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 8
  %64 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %73 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32 %71, i32* %78, align 4
  %79 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %80 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %33
  %89 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %90 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88, %33
  br label %103

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %26

103:                                              ; preds = %98, %26
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %106 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %108 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %109 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %110 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = call i32 @mt7603_wtbl_set_rates(%struct.mt7603_dev* %107, %struct.mt7603_sta* %108, i32* null, %struct.TYPE_7__* %111)
  %113 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %114 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %116 = load %struct.mt7603_sta*, %struct.mt7603_sta** %8, align 8
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @mt7603_wtbl_set_smps(%struct.mt7603_dev* %115, %struct.mt7603_sta* %116, i32 %122)
  %124 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %125 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_bh(i32* %126)
  ret void
}

declare dso_local %struct.ieee80211_sta_rates* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @mt7603_wtbl_set_rates(%struct.mt7603_dev*, %struct.mt7603_sta*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mt7603_wtbl_set_smps(%struct.mt7603_dev*, %struct.mt7603_sta*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
