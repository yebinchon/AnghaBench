; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_init_stream_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_init_stream_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.ieee80211_supported_band = type { %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_vht_cap = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.ieee80211_sta_ht_cap = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TXSTBC = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.ieee80211_supported_band*, i32)* @mt76_init_stream_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_init_stream_cap(%struct.mt76_dev* %0, %struct.ieee80211_supported_band* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %11 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %12, i32 0, i32 1
  store %struct.ieee80211_sta_ht_cap* %13, %struct.ieee80211_sta_ht_cap** %7, align 8
  %14 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hweight8(i32 %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %22 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %20
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 255, i32 0
  %44 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %43, i32* %50, align 4
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %113

58:                                               ; preds = %54
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  store %struct.ieee80211_sta_vht_cap* %60, %struct.ieee80211_sta_vht_cap** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @IEEE80211_VHT_CAP_TXSTBC, align 4
  %65 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %10, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %76

69:                                               ; preds = %58
  %70 = load i32, i32* @IEEE80211_VHT_CAP_TXSTBC, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %10, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %63
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %86, 2
  %88 = shl i32 %85, %87
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %98

91:                                               ; preds = %80
  %92 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %93, 2
  %95 = shl i32 %92, %94
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %77

102:                                              ; preds = %77
  %103 = load i32, i32* %11, align 4
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %10, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %10, align 8
  %111 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %102, %57
  ret void
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
