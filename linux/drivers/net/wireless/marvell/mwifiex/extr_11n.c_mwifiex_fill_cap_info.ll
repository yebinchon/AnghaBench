; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_fill_cap_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_fill_cap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.ieee80211_ht_cap = type { i32, i32, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid radio type!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i64 0, align 8
@IEEE80211_HT_EXT_CAP_RD_RESPONDER = common dso_local global i32 0, align 4
@MWIFIEX_DEF_11N_TX_BF_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_fill_cap_info(%struct.mwifiex_private* %0, i64 %1, %struct.ieee80211_ht_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_ht_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ieee80211_ht_cap* %2, %struct.ieee80211_ht_cap** %7, align 8
  %10 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @le16_to_cpu(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, i64 %20
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  store %struct.ieee80211_supported_band* %22, %struct.ieee80211_supported_band** %9, align 8
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %24 = icmp ne %struct.ieee80211_supported_band* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @mwifiex_dbg(%struct.TYPE_10__* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %118

37:                                               ; preds = %3
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %43, %51
  %53 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %55, i32 0, i32 4
  %57 = bitcast %struct.TYPE_8__* %56 to i64*
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = call i32 @memcpy(i64* %57, i32* %60, i32 4)
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %37
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75, %37
  %84 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @SETHT_MCS32(i32 %87)
  br label %89

89:                                               ; preds = %83, %75, %67
  %90 = load i32, i32* @IEEE80211_HT_EXT_CAP_RD_RESPONDER, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %95 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %106 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @ISSUPP_BEAMFORMING(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %89
  %113 = load i32, i32* @MWIFIEX_DEF_11N_TX_BF_CAP, align 4
  %114 = call i32 @cpu_to_le32(i32 %113)
  %115 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %116 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %89
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %29
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @SETHT_MCS32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @ISSUPP_BEAMFORMING(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
