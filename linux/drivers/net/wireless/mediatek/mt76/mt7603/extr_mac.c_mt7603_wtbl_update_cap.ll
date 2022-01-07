; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_update_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_update_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mt7603_sta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MT_WTBL1_W2_KEY_TYPE = common dso_local global i32 0, align 4
@MT_WTBL1_W2_ADMISSION_CONTROL = common dso_local global i32 0, align 4
@MT_WTBL1_W2_AMPDU_FACTOR = common dso_local global i32 0, align 4
@MT_WTBL1_W2_MPDU_DENSITY = common dso_local global i32 0, align 4
@MT_WTBL1_W2_TXS_BAF_REPORT = common dso_local global i32 0, align 4
@MT_WTBL1_W2_HT = common dso_local global i32 0, align 4
@MT_WTBL1_W2_VHT = common dso_local global i32 0, align 4
@MT_WTBL2_W9_SHORT_GI_20 = common dso_local global i32 0, align 4
@MT_WTBL2_W9_SHORT_GI_40 = common dso_local global i32 0, align 4
@MT_WTBL2_W9_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_wtbl_update_cap(%struct.mt7603_dev* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.mt7603_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %9 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mt7603_sta*
  store %struct.mt7603_sta* %12, %struct.mt7603_sta** %5, align 8
  %13 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %14 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mt7603_wtbl1_addr(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 8
  %22 = call i32 @mt76_rr(%struct.mt7603_dev* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @MT_WTBL1_W2_KEY_TYPE, align 4
  %24 = load i32, i32* @MT_WTBL1_W2_ADMISSION_CONTROL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @MT_WTBL1_W2_AMPDU_FACTOR, align 4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @FIELD_PREP(i32 %28, i32 %32)
  %34 = load i32, i32* @MT_WTBL1_W2_MPDU_DENSITY, align 4
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FIELD_PREP(i32 %34, i32 %38)
  %40 = or i32 %33, %39
  %41 = load i32, i32* @MT_WTBL1_W2_TXS_BAF_REPORT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load i32, i32* @MT_WTBL1_W2_HT, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %2
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @MT_WTBL1_W2_VHT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mt76_wr(%struct.mt7603_dev* %65, i32 %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @mt7603_wtbl2_addr(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 36
  %75 = call i32 @mt76_rr(%struct.mt7603_dev* %72, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @MT_WTBL2_W9_SHORT_GI_20, align 4
  %77 = load i32, i32* @MT_WTBL2_W9_SHORT_GI_40, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @MT_WTBL2_W9_SHORT_GI_80, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %64
  %92 = load i32, i32* @MT_WTBL2_W9_SHORT_GI_20, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %64
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @MT_WTBL2_W9_SHORT_GI_40, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %95
  %108 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 36
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @mt76_wr(%struct.mt7603_dev* %108, i32 %110, i32 %111)
  ret void
}

declare dso_local i32 @mt7603_wtbl1_addr(i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_wtbl2_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
