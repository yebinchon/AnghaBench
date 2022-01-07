; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.mt7615_vif = type { %struct.mt7615_sta }
%struct.mt7615_sta = type { %struct.mt76_wcid }
%struct.mt76_wcid = type { i32, i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIE = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @mt7615_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.mt7615_dev*, align 8
  %13 = alloca %struct.mt7615_vif*, align 8
  %14 = alloca %struct.mt7615_sta*, align 8
  %15 = alloca %struct.mt76_wcid*, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.mt7615_dev*, %struct.mt7615_dev** %18, align 8
  store %struct.mt7615_dev* %19, %struct.mt7615_dev** %12, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %23, %struct.mt7615_vif** %13, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %25 = icmp ne %struct.ieee80211_sta* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.mt7615_sta*
  br label %34

31:                                               ; preds = %5
  %32 = load %struct.mt7615_vif*, %struct.mt7615_vif** %13, align 8
  %33 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %32, i32 0, i32 0
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi %struct.mt7615_sta* [ %30, %26 ], [ %33, %31 ]
  store %struct.mt7615_sta* %35, %struct.mt7615_sta** %14, align 8
  %36 = load %struct.mt7615_sta*, %struct.mt7615_sta** %14, align 8
  %37 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %36, i32 0, i32 0
  store %struct.mt76_wcid* %37, %struct.mt76_wcid** %15, align 8
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %34
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46, %34
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 130
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 135
  br i1 %61, label %62, label %72

62:                                               ; preds = %57, %52
  %63 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %127

72:                                               ; preds = %62, %57, %46
  %73 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %83 [
    i32 136, label %76
    i32 128, label %82
    i32 129, label %82
    i32 130, label %82
    i32 135, label %82
    i32 134, label %82
    i32 133, label %82
    i32 132, label %82
    i32 131, label %82
  ]

76:                                               ; preds = %72
  %77 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIE, align 4
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %86

82:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %127

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @SET_KEY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %92 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %98 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %109

99:                                               ; preds = %86
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %102 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %107 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.mt7615_dev*, %struct.mt7615_dev** %12, align 8
  %111 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %110, i32 0, i32 0
  %112 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @SET_KEY, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi %struct.ieee80211_key_conf* [ %117, %116 ], [ null, %118 ]
  %121 = call i32 @mt76_wcid_key_setup(i32* %111, %struct.mt76_wcid* %112, %struct.ieee80211_key_conf* %120)
  %122 = load %struct.mt7615_dev*, %struct.mt7615_dev** %12, align 8
  %123 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %124 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @mt7615_mac_wtbl_set_key(%struct.mt7615_dev* %122, %struct.mt76_wcid* %123, %struct.ieee80211_key_conf* %124, i32 %125)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %119, %83, %69
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @mt76_wcid_key_setup(i32*, %struct.mt76_wcid*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mt7615_mac_wtbl_set_key(%struct.mt7615_dev*, %struct.mt76_wcid*, %struct.ieee80211_key_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
