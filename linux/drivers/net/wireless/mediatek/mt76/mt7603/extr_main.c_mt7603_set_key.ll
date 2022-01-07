; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7603_dev* }
%struct.mt7603_dev = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.mt7603_vif = type { %struct.mt7603_sta }
%struct.mt7603_sta = type { %struct.mt76_wcid }
%struct.mt76_wcid = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @mt7603_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.mt7603_dev*, align 8
  %13 = alloca %struct.mt7603_vif*, align 8
  %14 = alloca %struct.mt7603_sta*, align 8
  %15 = alloca %struct.mt76_wcid*, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %18, align 8
  store %struct.mt7603_dev* %19, %struct.mt7603_dev** %12, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.mt7603_vif*
  store %struct.mt7603_vif* %23, %struct.mt7603_vif** %13, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %25 = icmp ne %struct.ieee80211_sta* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.mt7603_sta*
  br label %34

31:                                               ; preds = %5
  %32 = load %struct.mt7603_vif*, %struct.mt7603_vif** %13, align 8
  %33 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %32, i32 0, i32 0
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi %struct.mt7603_sta* [ %30, %26 ], [ %33, %31 ]
  store %struct.mt7603_sta* %35, %struct.mt7603_sta** %14, align 8
  %36 = load %struct.mt7603_sta*, %struct.mt7603_sta** %14, align 8
  %37 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %36, i32 0, i32 0
  store %struct.mt76_wcid* %37, %struct.mt76_wcid** %15, align 8
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %45 [
    i32 128, label %44
    i32 129, label %44
  ]

44:                                               ; preds = %34, %34
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %115

48:                                               ; preds = %44
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %54, %48
  %61 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 129
  br i1 %69, label %70, label %80

70:                                               ; preds = %65, %60
  %71 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %115

80:                                               ; preds = %70, %65, %54
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SET_KEY, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %86 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %92 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %103

93:                                               ; preds = %80
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %96 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %101 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %93
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %11, align 8
  br label %103

103:                                              ; preds = %102, %84
  %104 = load %struct.mt7603_dev*, %struct.mt7603_dev** %12, align 8
  %105 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %104, i32 0, i32 0
  %106 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %107 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %108 = call i32 @mt76_wcid_key_setup(i32* %105, %struct.mt76_wcid* %106, %struct.ieee80211_key_conf* %107)
  %109 = load %struct.mt7603_dev*, %struct.mt7603_dev** %12, align 8
  %110 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %111 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %114 = call i32 @mt7603_wtbl_set_key(%struct.mt7603_dev* %109, i32 %112, %struct.ieee80211_key_conf* %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %103, %77, %45
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @mt76_wcid_key_setup(i32*, %struct.mt76_wcid*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mt7603_wtbl_set_key(%struct.mt7603_dev*, i32, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
