; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32, i64 }
%struct.iwl_priv = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_station_priv = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"A-MPDU action on addr %pM tid %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"start Rx\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stop Rx\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"start Tx\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Flush Tx\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stop Tx\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"priv->agg_tids_count = %u\0A\00", align 1
@LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @iwlagn_mac_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_station_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %16)
  store %struct.iwl_priv* %17, %struct.iwl_priv** %8, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %20, i32 0, i32 4
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %21, align 8
  store %struct.ieee80211_sta* %22, %struct.ieee80211_sta** %10, align 8
  %23 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %29, i32 0, i32 2
  store i32* %30, i32** %13, align 8
  %31 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %38, %struct.iwl_station_priv** %15, align 8
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %3
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %181

54:                                               ; preds = %3
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %56 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %174 [
    i32 134, label %61
    i32 133, label %74
    i32 131, label %81
    i32 129, label %104
    i32 128, label %104
    i32 130, label %112
    i32 132, label %167
  ]

61:                                               ; preds = %54
  %62 = call i32 (...) @iwl_enable_rx_ampdu()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %174

65:                                               ; preds = %61
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %67 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iwl_sta_rx_agg_start(%struct.iwl_priv* %68, %struct.ieee80211_sta* %69, i32 %70, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %174

74:                                               ; preds = %54
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %76 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %78 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @iwl_sta_rx_agg_stop(%struct.iwl_priv* %77, %struct.ieee80211_sta* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  br label %174

81:                                               ; preds = %54
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %83 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %82, i32 0, i32 3
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %174

91:                                               ; preds = %81
  %92 = call i32 (...) @iwl_enable_tx_ampdu()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %174

95:                                               ; preds = %91
  %96 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %97 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @iwlagn_tx_agg_start(%struct.iwl_priv* %98, %struct.ieee80211_vif* %99, %struct.ieee80211_sta* %100, i32 %101, i32* %102)
  store i32 %103, i32* %9, align 4
  br label %174

104:                                              ; preds = %54, %54
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %106 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %108 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @iwlagn_tx_agg_flush(%struct.iwl_priv* %107, %struct.ieee80211_vif* %108, %struct.ieee80211_sta* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  br label %174

112:                                              ; preds = %54
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %114 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %116 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @iwlagn_tx_agg_stop(%struct.iwl_priv* %115, %struct.ieee80211_vif* %116, %struct.ieee80211_sta* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %112
  %123 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %124 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %129 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %127, %122, %112
  %138 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %139 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %137
  %143 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %144 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %142
  %149 = load i32, i32* @LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %15, align 8
  %152 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %150
  store i32 %157, i32* %155, align 4
  %158 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %159 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %160 = call i32 @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %159)
  %161 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %15, align 8
  %162 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* @CMD_ASYNC, align 4
  %165 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %158, i32 %160, %struct.TYPE_14__* %163, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %148, %142, %137
  br label %174

167:                                              ; preds = %54
  %168 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %169 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %170 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @iwlagn_tx_agg_oper(%struct.iwl_priv* %168, %struct.ieee80211_vif* %169, %struct.ieee80211_sta* %170, i32 %171, i32 %172)
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %54, %167, %166, %104, %95, %94, %90, %74, %65, %64
  %175 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %176 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %179 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %174, %51
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_enable_rx_ampdu(...) #1

declare dso_local i32 @iwl_sta_rx_agg_start(%struct.iwl_priv*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @iwl_sta_rx_agg_stop(%struct.iwl_priv*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_enable_tx_ampdu(...) #1

declare dso_local i32 @iwlagn_tx_agg_start(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @iwlagn_tx_agg_flush(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwlagn_tx_agg_stop(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwlagn_tx_agg_oper(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
