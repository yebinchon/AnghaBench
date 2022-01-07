; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_rate_scale_perform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_rate_scale_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.iwl_tid_data**, %struct.ieee80211_hw* }
%struct.iwl_tid_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i32*, i64 }
%struct.iwl_lq_sta = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_4__, %struct.iwl_scale_tbl_info*, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_scale_tbl_info = type { i32*, i64, i32, i8*, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_station_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32 }

@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@IWL_INVALID_VALUE = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"rate scale calculate new rate for skb\0A\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Rate scale index %d for type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mask 0x%04X\0A\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Current Rate is not valid\0A\00", align 1
@LQ_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"tbl->expected_tpt is NULL\0A\00", align 1
@IWL_RATE_MIN_FAILURE_TH = common dso_local global i64 0, align 8
@IWL_RATE_MIN_SUCCESS_TH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"LQ: still below TH. succ=%d total=%d for index %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"expected_tpt should have been calculated by now\0A\00", align 1
@IWL_ANT_OK_MULTI = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [57 x i8] c"LQ: SWITCHING TO NEW TABLE suc=%d cur-tpt=%d old-tpt=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"LQ: GOING BACK TO THE OLD TABLE suc=%d cur-tpt=%d old-tpt=%d\0A\00", align 1
@IWL_RATE_DECREASE_TH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"decrease rate because of low success_ratio\0A\00", align 1
@IWL_RATE_INCREASE_TH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"decrease rate because of low tpt\0A\00", align 1
@IWL_RATE_HIGH_TH = common dso_local global i32 0, align 4
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [61 x i8] c"choose rate scale index %d action %d low %d high %d type %d\0A\00", align 1
@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"Switch current  mcs: %X index: %d\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"LQ: STAY in legacy table\0A\00", align 1
@IWL_AGG_TPT_THREHOLD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"try to aggregate tid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.sk_buff*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*)* @rs_rate_scale_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_rate_scale_perform(%struct.iwl_priv* %0, %struct.sk_buff* %1, %struct.ieee80211_sta* %2, %struct.iwl_lq_sta* %3) #0 {
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iwl_rate_scale_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.iwl_scale_tbl_info*, align 8
  %26 = alloca %struct.iwl_scale_tbl_info*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.iwl_tid_data*, align 8
  %35 = alloca %struct.iwl_station_priv*, align 8
  %36 = alloca %struct.iwl_rxon_context*, align 8
  %37 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.iwl_lq_sta* %3, %struct.iwl_lq_sta** %8, align 8
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 2
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %39, align 8
  store %struct.ieee80211_hw* %40, %struct.ieee80211_hw** %9, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %41, i32 0, i32 0
  store %struct.ieee80211_conf* %42, %struct.ieee80211_conf** %10, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %43)
  store %struct.ieee80211_tx_info* %44, %struct.ieee80211_tx_info** %11, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %48, %struct.ieee80211_hdr** %12, align 8
  %49 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %50, i32* %14, align 4
  store %struct.iwl_rate_scale_data* null, %struct.iwl_rate_scale_data** %17, align 8
  %51 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %53, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %54 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %54, i32* %33, align 4
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %59, %struct.iwl_station_priv** %35, align 8
  %60 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %35, align 8
  %61 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %60, i32 0, i32 0
  %62 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %61, align 8
  store %struct.iwl_rxon_context* %62, %struct.iwl_rxon_context** %36, align 8
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %64 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ieee80211_is_data(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %4
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %4
  br label %997

78:                                               ; preds = %70
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %83 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %88 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %90 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %91 = call i32 @rs_tl_add_packet(%struct.iwl_lq_sta* %89, %struct.ieee80211_hdr* %90)
  store i32 %91, i32* %33, align 4
  %92 = load i32, i32* %33, align 4
  %93 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %78
  %96 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %97 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %33, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %95
  %104 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %105 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %104, i32 0, i32 1
  %106 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %105, align 8
  %107 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %108 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %107, i32 0, i32 12
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %106, i64 %110
  %112 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %111, align 8
  %113 = load i32, i32* %33, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %112, i64 %114
  store %struct.iwl_tid_data* %115, %struct.iwl_tid_data** %34, align 8
  %116 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %34, align 8
  %117 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IWL_AGG_OFF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %103
  %123 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %124 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  br label %128

125:                                              ; preds = %103
  %126 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %127 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %126, i32 0, i32 3
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %122
  br label %132

129:                                              ; preds = %95, %78
  %130 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %131 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %128
  %133 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %134 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %133, i32 0, i32 15
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %139 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %29, align 4
  br label %146

141:                                              ; preds = %132
  %142 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %143 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 1, %144
  store i32 %145, i32* %29, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %148 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %147, i32 0, i32 13
  %149 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %148, align 8
  %150 = load i32, i32* %29, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %149, i64 %151
  store %struct.iwl_scale_tbl_info* %152, %struct.iwl_scale_tbl_info** %25, align 8
  %153 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %154 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @is_legacy(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %160 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %159, i32 0, i32 5
  store i32 0, i32* %160, align 4
  br label %166

161:                                              ; preds = %146
  %162 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %163 = call i32 @rs_use_green(%struct.ieee80211_sta* %162)
  %164 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %165 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %158
  %167 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %168 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %28, align 4
  %170 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %171 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %15, align 4
  %173 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %176 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %174, i8* %177)
  %179 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %180 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %181 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %182 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %181, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %179, %struct.ieee80211_hdr* %180, i8* %183)
  store i32 %184, i32* %23, align 4
  %185 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %186 = load i32, i32* %23, align 4
  %187 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %189 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @is_legacy(i8* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %166
  %194 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %195 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = load i32, i32* %23, align 4
  %201 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %202 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %205 = shl i32 %203, %204
  %206 = and i32 %200, %205
  store i32 %206, i32* %27, align 4
  br label %213

207:                                              ; preds = %193
  %208 = load i32, i32* %23, align 4
  %209 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %210 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %208, %211
  store i32 %212, i32* %27, align 4
  br label %213

213:                                              ; preds = %207, %199
  br label %216

214:                                              ; preds = %166
  %215 = load i32, i32* %23, align 4
  store i32 %215, i32* %27, align 4
  br label %216

216:                                              ; preds = %214, %213
  %217 = load i32, i32* %27, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %23, align 4
  store i32 %220, i32* %27, align 4
  br label %221

221:                                              ; preds = %219, %216
  %222 = load i32, i32* %15, align 4
  %223 = shl i32 1, %222
  %224 = load i32, i32* %27, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %260, label %227

227:                                              ; preds = %221
  %228 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %229 = call i32 @IWL_ERR(%struct.iwl_priv* %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %230 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %231 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %230, i32 0, i32 15
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %259

234:                                              ; preds = %227
  %235 = load i8*, i8** @LQ_NONE, align 8
  %236 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %237 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %236, i32 0, i32 3
  store i8* %235, i8** %237, align 8
  %238 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %239 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %238, i32 0, i32 15
  store i64 0, i64* %239, align 8
  %240 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %241 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %240, i32 0, i32 13
  %242 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %241, align 8
  %243 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %244 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %242, i64 %246
  store %struct.iwl_scale_tbl_info* %247, %struct.iwl_scale_tbl_info** %25, align 8
  %248 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %249 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @iwl_hwrate_to_plcp_idx(i32 %250)
  store i32 %251, i32* %15, align 4
  %252 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %253 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %36, align 8
  %254 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %255 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %28, align 4
  %258 = call i32 @rs_update_rate_tbl(%struct.iwl_priv* %252, %struct.iwl_rxon_context* %253, %struct.iwl_lq_sta* %254, %struct.iwl_scale_tbl_info* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %234, %227
  br label %997

260:                                              ; preds = %221
  %261 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %262 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %260
  %266 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %267 = call i32 @IWL_ERR(%struct.iwl_priv* %266, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %997

268:                                              ; preds = %260
  %269 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %270 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, -1
  br i1 %272, label %273, label %289

273:                                              ; preds = %268
  %274 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %275 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %15, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %273
  %280 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %281 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %15, align 4
  store i32 1, i32* %24, align 4
  %283 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %284 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %283, i32 0, i32 4
  %285 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %284, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %285, i64 %287
  store %struct.iwl_rate_scale_data* %288, %struct.iwl_rate_scale_data** %17, align 8
  br label %732

289:                                              ; preds = %273, %268
  %290 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %291 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %290, i32 0, i32 4
  %292 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %292, i64 %294
  store %struct.iwl_rate_scale_data* %295, %struct.iwl_rate_scale_data** %17, align 8
  %296 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %297 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %300 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = sub nsw i64 %298, %302
  store i64 %303, i64* %21, align 8
  %304 = load i64, i64* %21, align 8
  %305 = load i64, i64* @IWL_RATE_MIN_FAILURE_TH, align 8
  %306 = icmp slt i64 %304, %305
  br i1 %306, label %307, label %328

307:                                              ; preds = %289
  %308 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %309 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @IWL_RATE_MIN_SUCCESS_TH, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %328

313:                                              ; preds = %307
  %314 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %315 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %316 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %319 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* %15, align 4
  %322 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %314, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %317, i64 %320, i32 %321)
  %323 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %324 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %325 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %324, i32 0, i32 1
  store i32 %323, i32* %325, align 8
  %326 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %327 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %326, i32 0)
  br label %986

328:                                              ; preds = %307, %289
  %329 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %330 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %333 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %336 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = mul nsw i32 %334, %341
  %343 = add nsw i32 %342, 64
  %344 = sdiv i32 %343, 128
  %345 = icmp ne i32 %331, %344
  br i1 %345, label %346, label %364

346:                                              ; preds = %328
  %347 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %348 = call i32 @IWL_ERR(%struct.iwl_priv* %347, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %349 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %350 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %353 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %15, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %351, %358
  %360 = add nsw i32 %359, 64
  %361 = sdiv i32 %360, 128
  %362 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %363 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %362, i32 0, i32 1
  store i32 %361, i32* %363, align 8
  br label %364

364:                                              ; preds = %346, %328
  %365 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %366 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %365, i32 0, i32 15
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %443

369:                                              ; preds = %364
  %370 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %371 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %370)
  %372 = load i64, i64* @IWL_ANT_OK_MULTI, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %443

374:                                              ; preds = %369
  %375 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %376 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %379 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %378, i32 0, i32 8
  %380 = load i32, i32* %379, align 8
  %381 = icmp sgt i32 %377, %380
  br i1 %381, label %382, label %409

382:                                              ; preds = %374
  %383 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %384 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %385 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %388 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %391 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %390, i32 0, i32 8
  %392 = load i32, i32* %391, align 8
  %393 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %383, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %386, i32 %389, i32 %392)
  %394 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %395 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %394, i32 0, i32 3
  %396 = load i8*, i8** %395, align 8
  %397 = call i64 @is_legacy(i8* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %382
  %400 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %401 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %400, i32 0, i32 9
  store i32 1, i32* %401, align 4
  br label %402

402:                                              ; preds = %399, %382
  %403 = load i32, i32* %29, align 4
  %404 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %405 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %404, i32 0, i32 4
  store i32 %403, i32* %405, align 8
  %406 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %407 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  store i32 %408, i32* %18, align 4
  br label %440

409:                                              ; preds = %374
  %410 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %411 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %412 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %415 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %418 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 8
  %420 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %410, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %413, i32 %416, i32 %419)
  %421 = load i8*, i8** @LQ_NONE, align 8
  %422 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %423 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %422, i32 0, i32 3
  store i8* %421, i8** %423, align 8
  %424 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %425 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  store i32 %426, i32* %29, align 4
  %427 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %428 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %427, i32 0, i32 13
  %429 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %428, align 8
  %430 = load i32, i32* %29, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %429, i64 %431
  store %struct.iwl_scale_tbl_info* %432, %struct.iwl_scale_tbl_info** %25, align 8
  %433 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %434 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @iwl_hwrate_to_plcp_idx(i32 %435)
  store i32 %436, i32* %15, align 4
  %437 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %438 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %437, i32 0, i32 8
  %439 = load i32, i32* %438, align 8
  store i32 %439, i32* %18, align 4
  store i32 1, i32* %24, align 4
  br label %440

440:                                              ; preds = %409, %402
  %441 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %442 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %441, i32 0, i32 15
  store i64 0, i64* %442, align 8
  store i32 1, i32* %30, align 4
  br label %732

443:                                              ; preds = %369, %364
  %444 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %445 = load i32, i32* %15, align 4
  %446 = load i32, i32* %27, align 4
  %447 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %448 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %447, i32 0, i32 3
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @rs_get_adjacent_rate(%struct.iwl_priv* %444, i32 %445, i32 %446, i8* %449)
  store i32 %450, i32* %31, align 4
  %451 = load i32, i32* %31, align 4
  %452 = and i32 %451, 255
  store i32 %452, i32* %13, align 4
  %453 = load i32, i32* %31, align 4
  %454 = ashr i32 %453, 8
  %455 = and i32 %454, 255
  store i32 %455, i32* %14, align 4
  %456 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %457 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %456, i32 0, i32 7
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %458, -1
  br i1 %459, label %460, label %468

460:                                              ; preds = %443
  %461 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %462 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %14, align 4
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %460
  %467 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %467, i32* %14, align 4
  br label %468

468:                                              ; preds = %466, %460, %443
  %469 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %470 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %32, align 4
  %472 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %473 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 8
  store i32 %474, i32* %18, align 4
  %475 = load i32, i32* %13, align 4
  %476 = load i32, i32* @IWL_RATE_INVALID, align 4
  %477 = icmp ne i32 %475, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %468
  %479 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %480 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %479, i32 0, i32 4
  %481 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %480, align 8
  %482 = load i32, i32* %13, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %481, i64 %483
  %485 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  store i32 %486, i32* %19, align 4
  br label %487

487:                                              ; preds = %478, %468
  %488 = load i32, i32* %14, align 4
  %489 = load i32, i32* @IWL_RATE_INVALID, align 4
  %490 = icmp ne i32 %488, %489
  br i1 %490, label %491, label %500

491:                                              ; preds = %487
  %492 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %493 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %492, i32 0, i32 4
  %494 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %493, align 8
  %495 = load i32, i32* %14, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %494, i64 %496
  %498 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  store i32 %499, i32* %20, align 4
  br label %500

500:                                              ; preds = %491, %487
  store i32 0, i32* %22, align 4
  %501 = load i32, i32* %32, align 4
  %502 = load i32, i32* @IWL_RATE_DECREASE_TH, align 4
  %503 = icmp sle i32 %501, %502
  br i1 %503, label %507, label %504

504:                                              ; preds = %500
  %505 = load i32, i32* %18, align 4
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %504, %500
  %508 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %509 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %508, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %22, align 4
  br label %588

510:                                              ; preds = %504
  %511 = load i32, i32* %19, align 4
  %512 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %534

514:                                              ; preds = %510
  %515 = load i32, i32* %20, align 4
  %516 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %517 = icmp eq i32 %515, %516
  br i1 %517, label %518, label %534

518:                                              ; preds = %514
  %519 = load i32, i32* %14, align 4
  %520 = load i32, i32* @IWL_RATE_INVALID, align 4
  %521 = icmp ne i32 %519, %520
  br i1 %521, label %522, label %527

522:                                              ; preds = %518
  %523 = load i32, i32* %32, align 4
  %524 = load i32, i32* @IWL_RATE_INCREASE_TH, align 4
  %525 = icmp sge i32 %523, %524
  br i1 %525, label %526, label %527

526:                                              ; preds = %522
  store i32 1, i32* %22, align 4
  br label %533

527:                                              ; preds = %522, %518
  %528 = load i32, i32* %13, align 4
  %529 = load i32, i32* @IWL_RATE_INVALID, align 4
  %530 = icmp ne i32 %528, %529
  br i1 %530, label %531, label %532

531:                                              ; preds = %527
  store i32 0, i32* %22, align 4
  br label %532

532:                                              ; preds = %531, %527
  br label %533

533:                                              ; preds = %532, %526
  br label %587

534:                                              ; preds = %514, %510
  %535 = load i32, i32* %19, align 4
  %536 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %537 = icmp ne i32 %535, %536
  br i1 %537, label %538, label %551

538:                                              ; preds = %534
  %539 = load i32, i32* %20, align 4
  %540 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %541 = icmp ne i32 %539, %540
  br i1 %541, label %542, label %551

542:                                              ; preds = %538
  %543 = load i32, i32* %19, align 4
  %544 = load i32, i32* %18, align 4
  %545 = icmp slt i32 %543, %544
  br i1 %545, label %546, label %551

546:                                              ; preds = %542
  %547 = load i32, i32* %20, align 4
  %548 = load i32, i32* %18, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %551

550:                                              ; preds = %546
  store i32 0, i32* %22, align 4
  br label %586

551:                                              ; preds = %546, %542, %538, %534
  %552 = load i32, i32* %20, align 4
  %553 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %554 = icmp ne i32 %552, %553
  br i1 %554, label %555, label %566

555:                                              ; preds = %551
  %556 = load i32, i32* %20, align 4
  %557 = load i32, i32* %18, align 4
  %558 = icmp sgt i32 %556, %557
  br i1 %558, label %559, label %564

559:                                              ; preds = %555
  %560 = load i32, i32* %32, align 4
  %561 = load i32, i32* @IWL_RATE_INCREASE_TH, align 4
  %562 = icmp sge i32 %560, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %559
  store i32 1, i32* %22, align 4
  br label %565

564:                                              ; preds = %559, %555
  store i32 0, i32* %22, align 4
  br label %565

565:                                              ; preds = %564, %563
  br label %585

566:                                              ; preds = %551
  %567 = load i32, i32* %19, align 4
  %568 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %569 = icmp ne i32 %567, %568
  br i1 %569, label %570, label %584

570:                                              ; preds = %566
  %571 = load i32, i32* %19, align 4
  %572 = load i32, i32* %18, align 4
  %573 = icmp sgt i32 %571, %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %570
  %575 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %576 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %575, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %22, align 4
  br label %583

577:                                              ; preds = %570
  %578 = load i32, i32* %32, align 4
  %579 = load i32, i32* @IWL_RATE_INCREASE_TH, align 4
  %580 = icmp sge i32 %578, %579
  br i1 %580, label %581, label %582

581:                                              ; preds = %577
  store i32 1, i32* %22, align 4
  br label %582

582:                                              ; preds = %581, %577
  br label %583

583:                                              ; preds = %582, %574
  br label %584

584:                                              ; preds = %583, %566
  br label %585

585:                                              ; preds = %584, %565
  br label %586

586:                                              ; preds = %585, %550
  br label %587

587:                                              ; preds = %586, %533
  br label %588

588:                                              ; preds = %587, %507
  %589 = load i32, i32* %22, align 4
  %590 = icmp eq i32 %589, -1
  br i1 %590, label %591, label %611

591:                                              ; preds = %588
  %592 = load i32, i32* %13, align 4
  %593 = load i32, i32* @IWL_RATE_INVALID, align 4
  %594 = icmp ne i32 %592, %593
  br i1 %594, label %595, label %611

595:                                              ; preds = %591
  %596 = load i32, i32* %32, align 4
  %597 = load i32, i32* @IWL_RATE_HIGH_TH, align 4
  %598 = icmp sgt i32 %596, %597
  br i1 %598, label %610, label %599

599:                                              ; preds = %595
  %600 = load i32, i32* %18, align 4
  %601 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %602 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %601, i32 0, i32 0
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %13, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = mul nsw i32 100, %607
  %609 = icmp sgt i32 %600, %608
  br i1 %609, label %610, label %611

610:                                              ; preds = %599, %595
  store i32 0, i32* %22, align 4
  br label %611

611:                                              ; preds = %610, %599, %591, %588
  %612 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %613 = call i64 @iwl_ht_enabled(%struct.iwl_priv* %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %622, label %615

615:                                              ; preds = %611
  %616 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %617 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %616, i32 0, i32 3
  %618 = load i8*, i8** %617, align 8
  %619 = call i64 @is_legacy(i8* %618)
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %615
  store i32 -1, i32* %22, align 4
  br label %622

622:                                              ; preds = %621, %615, %611
  %623 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %624 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %623)
  %625 = load i64, i64* @IWL_ANT_OK_MULTI, align 8
  %626 = icmp ne i64 %624, %625
  br i1 %626, label %627, label %640

627:                                              ; preds = %622
  %628 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %629 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %628, i32 0, i32 3
  %630 = load i8*, i8** %629, align 8
  %631 = call i64 @is_mimo2(i8* %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %639, label %633

633:                                              ; preds = %627
  %634 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %635 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %634, i32 0, i32 3
  %636 = load i8*, i8** %635, align 8
  %637 = call i64 @is_mimo3(i8* %636)
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %639, label %640

639:                                              ; preds = %633, %627
  store i32 -1, i32* %22, align 4
  br label %640

640:                                              ; preds = %639, %633, %622
  %641 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %642 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %641, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %645 = icmp sge i64 %643, %644
  br i1 %645, label %646, label %678

646:                                              ; preds = %640
  %647 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %648 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %647, i32 0, i32 3
  %649 = load i8*, i8** %648, align 8
  %650 = call i64 @is_mimo2(i8* %649)
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %658, label %652

652:                                              ; preds = %646
  %653 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %654 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %653, i32 0, i32 3
  %655 = load i8*, i8** %654, align 8
  %656 = call i64 @is_mimo3(i8* %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %678

658:                                              ; preds = %652, %646
  %659 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %660 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %659, i32 0, i32 10
  %661 = load i64, i64* %660, align 8
  %662 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %663 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %662, i32 0, i32 0
  %664 = load i64, i64* %663, align 8
  %665 = icmp sgt i64 %661, %664
  br i1 %665, label %666, label %667

666:                                              ; preds = %658
  br label %677

667:                                              ; preds = %658
  %668 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %669 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %668, i32 0, i32 10
  %670 = load i64, i64* %669, align 8
  %671 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %672 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = icmp sle i64 %670, %673
  br i1 %674, label %675, label %676

675:                                              ; preds = %667
  store i32 -1, i32* %22, align 4
  br label %676

676:                                              ; preds = %675, %667
  br label %677

677:                                              ; preds = %676, %666
  br label %678

678:                                              ; preds = %677, %652, %640
  %679 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %680 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %679, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %683 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %682, i32 0, i32 10
  store i64 %681, i64* %683, align 8
  %684 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %685 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %688 = icmp sge i64 %686, %687
  br i1 %688, label %689, label %704

689:                                              ; preds = %678
  %690 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %691 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %690, i32 0, i32 3
  %692 = load i8*, i8** %691, align 8
  %693 = call i64 @is_mimo2(i8* %692)
  %694 = icmp ne i64 %693, 0
  br i1 %694, label %701, label %695

695:                                              ; preds = %689
  %696 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %697 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %696, i32 0, i32 3
  %698 = load i8*, i8** %697, align 8
  %699 = call i64 @is_mimo3(i8* %698)
  %700 = icmp ne i64 %699, 0
  br i1 %700, label %701, label %704

701:                                              ; preds = %695, %689
  %702 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %703 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %702, i32 1)
  br label %732

704:                                              ; preds = %695, %678
  %705 = load i32, i32* %22, align 4
  switch i32 %705, label %721 [
    i32 -1, label %706
    i32 1, label %713
    i32 0, label %720
  ]

706:                                              ; preds = %704
  %707 = load i32, i32* %13, align 4
  %708 = load i32, i32* @IWL_RATE_INVALID, align 4
  %709 = icmp ne i32 %707, %708
  br i1 %709, label %710, label %712

710:                                              ; preds = %706
  store i32 1, i32* %24, align 4
  %711 = load i32, i32* %13, align 4
  store i32 %711, i32* %15, align 4
  br label %712

712:                                              ; preds = %710, %706
  br label %722

713:                                              ; preds = %704
  %714 = load i32, i32* %14, align 4
  %715 = load i32, i32* @IWL_RATE_INVALID, align 4
  %716 = icmp ne i32 %714, %715
  br i1 %716, label %717, label %719

717:                                              ; preds = %713
  store i32 1, i32* %24, align 4
  %718 = load i32, i32* %14, align 4
  store i32 %718, i32* %15, align 4
  br label %719

719:                                              ; preds = %717, %713
  br label %722

720:                                              ; preds = %704
  br label %721

721:                                              ; preds = %704, %720
  br label %722

722:                                              ; preds = %721, %719, %712
  %723 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %724 = load i32, i32* %15, align 4
  %725 = load i32, i32* %22, align 4
  %726 = load i32, i32* %13, align 4
  %727 = load i32, i32* %14, align 4
  %728 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %729 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %728, i32 0, i32 3
  %730 = load i8*, i8** %729, align 8
  %731 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %723, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %724, i32 %725, i32 %726, i32 %727, i8* %730)
  br label %732

732:                                              ; preds = %722, %701, %440, %279
  %733 = load i32, i32* %24, align 4
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %743

735:                                              ; preds = %732
  %736 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %737 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %36, align 8
  %738 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %739 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %740 = load i32, i32* %15, align 4
  %741 = load i32, i32* %28, align 4
  %742 = call i32 @rs_update_rate_tbl(%struct.iwl_priv* %736, %struct.iwl_rxon_context* %737, %struct.iwl_lq_sta* %738, %struct.iwl_scale_tbl_info* %739, i32 %740, i32 %741)
  br label %743

743:                                              ; preds = %735, %732
  %744 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %745 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %744)
  %746 = load i64, i64* @IWL_ANT_OK_MULTI, align 8
  %747 = icmp eq i64 %745, %746
  br i1 %747, label %748, label %751

748:                                              ; preds = %743
  %749 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %750 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %749, i32 0)
  br label %751

751:                                              ; preds = %748, %743
  %752 = load i32, i32* %24, align 4
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %873, label %754

754:                                              ; preds = %751
  %755 = load i32, i32* %30, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %873, label %757

757:                                              ; preds = %754
  %758 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %759 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %758, i32 0, i32 14
  %760 = load i32, i32* %759, align 8
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %873, label %762

762:                                              ; preds = %757
  %763 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %17, align 8
  %764 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %763, i32 0, i32 0
  %765 = load i64, i64* %764, align 8
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %767, label %873

767:                                              ; preds = %762
  %768 = load i32, i32* %18, align 4
  %769 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %770 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %769, i32 0, i32 8
  store i32 %768, i32* %770, align 8
  %771 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %772 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %771, i32 0, i32 3
  %773 = load i8*, i8** %772, align 8
  %774 = call i64 @is_legacy(i8* %773)
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %776, label %783

776:                                              ; preds = %767
  %777 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %778 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %779 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %780 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %781 = load i32, i32* %15, align 4
  %782 = call i32 @rs_move_legacy_other(%struct.iwl_priv* %777, %struct.iwl_lq_sta* %778, %struct.ieee80211_conf* %779, %struct.ieee80211_sta* %780, i32 %781)
  br label %818

783:                                              ; preds = %767
  %784 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %785 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %784, i32 0, i32 3
  %786 = load i8*, i8** %785, align 8
  %787 = call i64 @is_siso(i8* %786)
  %788 = icmp ne i64 %787, 0
  br i1 %788, label %789, label %796

789:                                              ; preds = %783
  %790 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %791 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %792 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %793 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %794 = load i32, i32* %15, align 4
  %795 = call i32 @rs_move_siso_to_other(%struct.iwl_priv* %790, %struct.iwl_lq_sta* %791, %struct.ieee80211_conf* %792, %struct.ieee80211_sta* %793, i32 %794)
  br label %817

796:                                              ; preds = %783
  %797 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %798 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %797, i32 0, i32 3
  %799 = load i8*, i8** %798, align 8
  %800 = call i64 @is_mimo2(i8* %799)
  %801 = icmp ne i64 %800, 0
  br i1 %801, label %802, label %809

802:                                              ; preds = %796
  %803 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %804 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %805 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %806 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %807 = load i32, i32* %15, align 4
  %808 = call i32 @rs_move_mimo2_to_other(%struct.iwl_priv* %803, %struct.iwl_lq_sta* %804, %struct.ieee80211_conf* %805, %struct.ieee80211_sta* %806, i32 %807)
  br label %816

809:                                              ; preds = %796
  %810 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %811 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %812 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %813 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %814 = load i32, i32* %15, align 4
  %815 = call i32 @rs_move_mimo3_to_other(%struct.iwl_priv* %810, %struct.iwl_lq_sta* %811, %struct.ieee80211_conf* %812, %struct.ieee80211_sta* %813, i32 %814)
  br label %816

816:                                              ; preds = %809, %802
  br label %817

817:                                              ; preds = %816, %789
  br label %818

818:                                              ; preds = %817, %776
  %819 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %820 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %819, i32 0, i32 15
  %821 = load i64, i64* %820, align 8
  %822 = icmp ne i64 %821, 0
  br i1 %822, label %823, label %871

823:                                              ; preds = %818
  %824 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %825 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %824, i32 0, i32 13
  %826 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %825, align 8
  %827 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %828 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %827, i32 0, i32 4
  %829 = load i32, i32* %828, align 8
  %830 = sub nsw i32 1, %829
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %826, i64 %831
  store %struct.iwl_scale_tbl_info* %832, %struct.iwl_scale_tbl_info** %25, align 8
  store i32 0, i32* %16, align 4
  br label %833

833:                                              ; preds = %845, %823
  %834 = load i32, i32* %16, align 4
  %835 = load i32, i32* @IWL_RATE_COUNT, align 4
  %836 = icmp slt i32 %834, %835
  br i1 %836, label %837, label %848

837:                                              ; preds = %833
  %838 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %839 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %838, i32 0, i32 4
  %840 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %839, align 8
  %841 = load i32, i32* %16, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %840, i64 %842
  %844 = call i32 @rs_rate_scale_clear_window(%struct.iwl_rate_scale_data* %843)
  br label %845

845:                                              ; preds = %837
  %846 = load i32, i32* %16, align 4
  %847 = add nsw i32 %846, 1
  store i32 %847, i32* %16, align 4
  br label %833

848:                                              ; preds = %833
  %849 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %850 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %849, i32 0, i32 2
  %851 = load i32, i32* %850, align 8
  %852 = call i32 @iwl_hwrate_to_plcp_idx(i32 %851)
  store i32 %852, i32* %15, align 4
  %853 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %854 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %855 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %854, i32 0, i32 2
  %856 = load i32, i32* %855, align 8
  %857 = load i32, i32* %15, align 4
  %858 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %853, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %856, i32 %857)
  %859 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %860 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %861 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %862 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %861, i32 0, i32 2
  %863 = load i32, i32* %862, align 8
  %864 = call i32 @rs_fill_link_cmd(%struct.iwl_priv* %859, %struct.iwl_lq_sta* %860, i32 %863)
  %865 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %866 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %36, align 8
  %867 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %868 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %867, i32 0, i32 12
  %869 = load i32, i32* @CMD_ASYNC, align 4
  %870 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %865, %struct.iwl_rxon_context* %866, %struct.TYPE_4__* %868, i32 %869, i32 0)
  br label %872

871:                                              ; preds = %818
  store i32 1, i32* %30, align 4
  br label %872

872:                                              ; preds = %871, %848
  br label %873

873:                                              ; preds = %872, %762, %757, %754, %751
  %874 = load i32, i32* %30, align 4
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %985

876:                                              ; preds = %873
  %877 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %878 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %877, i32 0, i32 14
  %879 = load i32, i32* %878, align 8
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %985, label %881

881:                                              ; preds = %876
  %882 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %883 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %882, i32 0, i32 13
  %884 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %883, align 8
  %885 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %886 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %885, i32 0, i32 4
  %887 = load i32, i32* %886, align 8
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %884, i64 %888
  store %struct.iwl_scale_tbl_info* %889, %struct.iwl_scale_tbl_info** %26, align 8
  %890 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %891 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %890, i32 0, i32 3
  %892 = load i8*, i8** %891, align 8
  %893 = call i64 @is_legacy(i8* %892)
  %894 = icmp ne i64 %893, 0
  br i1 %894, label %895, label %913

895:                                              ; preds = %881
  %896 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %897 = call i32 @conf_is_ht(%struct.ieee80211_conf* %896)
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %913, label %899

899:                                              ; preds = %895
  %900 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %901 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %900, i32 0, i32 11
  %902 = load i64, i64* %901, align 8
  %903 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %904 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %903, i32 0, i32 1
  %905 = load i64, i64* %904, align 8
  %906 = icmp sgt i64 %902, %905
  br i1 %906, label %907, label %913

907:                                              ; preds = %899
  %908 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %909 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %908, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %910 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %911 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %912 = call i32 @rs_set_stay_in_table(%struct.iwl_priv* %910, i32 1, %struct.iwl_lq_sta* %911)
  br label %913

913:                                              ; preds = %907, %899, %895, %881
  %914 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %915 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %914, i32 0, i32 9
  %916 = load i32, i32* %915, align 4
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %984

918:                                              ; preds = %913
  %919 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %920 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %919, i32 0, i32 11
  %921 = load i64, i64* %920, align 8
  %922 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %923 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %922, i32 0, i32 1
  %924 = load i64, i64* %923, align 8
  %925 = icmp sge i64 %921, %924
  br i1 %925, label %926, label %984

926:                                              ; preds = %918
  %927 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %928 = call i64 @iwl_ht_enabled(%struct.iwl_priv* %927)
  %929 = icmp ne i64 %928, 0
  br i1 %929, label %930, label %984

930:                                              ; preds = %926
  %931 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %932 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %931, i32 0, i32 8
  %933 = load i32, i32* %932, align 8
  %934 = load i32, i32* @IWL_AGG_TPT_THREHOLD, align 4
  %935 = icmp sgt i32 %933, %934
  br i1 %935, label %936, label %980

936:                                              ; preds = %930
  %937 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %938 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %937, i32 0, i32 2
  %939 = load i32, i32* %938, align 8
  %940 = load i32, i32* %33, align 4
  %941 = shl i32 1, %940
  %942 = and i32 %939, %941
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %980

944:                                              ; preds = %936
  %945 = load i32, i32* %33, align 4
  %946 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %947 = icmp ne i32 %945, %946
  br i1 %947, label %948, label %980

948:                                              ; preds = %944
  %949 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %950 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %949, i32 0, i32 12
  %951 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %950, i32 0, i32 0
  %952 = load i64, i64* %951, align 8
  %953 = trunc i64 %952 to i32
  store i32 %953, i32* %37, align 4
  %954 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %955 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %954, i32 0, i32 1
  %956 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %955, align 8
  %957 = load i32, i32* %37, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %956, i64 %958
  %960 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %959, align 8
  %961 = load i32, i32* %33, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %960, i64 %962
  store %struct.iwl_tid_data* %963, %struct.iwl_tid_data** %34, align 8
  %964 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %34, align 8
  %965 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %964, i32 0, i32 0
  %966 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %965, i32 0, i32 0
  %967 = load i64, i64* %966, align 8
  %968 = load i64, i64* @IWL_AGG_OFF, align 8
  %969 = icmp eq i64 %967, %968
  br i1 %969, label %970, label %979

970:                                              ; preds = %948
  %971 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %972 = load i32, i32* %33, align 4
  %973 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %971, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %972)
  %974 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %975 = load i32, i32* %33, align 4
  %976 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %977 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %978 = call i32 @rs_tl_turn_on_agg(%struct.iwl_priv* %974, i32 %975, %struct.iwl_lq_sta* %976, %struct.ieee80211_sta* %977)
  br label %979

979:                                              ; preds = %970, %948
  br label %980

980:                                              ; preds = %979, %944, %936, %930
  %981 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %982 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %983 = call i32 @rs_set_stay_in_table(%struct.iwl_priv* %981, i32 0, %struct.iwl_lq_sta* %982)
  br label %984

984:                                              ; preds = %980, %926, %918, %913
  br label %985

985:                                              ; preds = %984, %876, %873
  br label %986

986:                                              ; preds = %985, %313
  %987 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %988 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %989 = load i32, i32* %15, align 4
  %990 = load i32, i32* %28, align 4
  %991 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %987, %struct.iwl_scale_tbl_info* %988, i32 %989, i32 %990)
  %992 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %993 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %992, i32 0, i32 2
  store i32 %991, i32* %993, align 8
  %994 = load i32, i32* %15, align 4
  %995 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %996 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %995, i32 0, i32 6
  store i32 %994, i32* %996, align 8
  br label %997

997:                                              ; preds = %986, %265, %259, %77
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @rs_tl_add_packet(%struct.iwl_lq_sta*, %struct.ieee80211_hdr*) #1

declare dso_local i64 @is_legacy(i8*) #1

declare dso_local i32 @rs_use_green(%struct.ieee80211_sta*) #1

declare dso_local i32 @rs_get_supported_rates(%struct.iwl_lq_sta*, %struct.ieee80211_hdr*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @rs_update_rate_tbl(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_stay_in_table(%struct.iwl_lq_sta*, i32) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @rs_get_adjacent_rate(%struct.iwl_priv*, i32, i32, i8*) #1

declare dso_local i64 @iwl_ht_enabled(%struct.iwl_priv*) #1

declare dso_local i64 @is_mimo2(i8*) #1

declare dso_local i64 @is_mimo3(i8*) #1

declare dso_local i32 @rs_move_legacy_other(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i64 @is_siso(i8*) #1

declare dso_local i32 @rs_move_siso_to_other(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_move_mimo2_to_other(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_move_mimo3_to_other(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_rate_scale_clear_window(%struct.iwl_rate_scale_data*) #1

declare dso_local i32 @rs_fill_link_cmd(%struct.iwl_priv*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @rs_set_stay_in_table(%struct.iwl_priv*, i32, %struct.iwl_lq_sta*) #1

declare dso_local i32 @rs_tl_turn_on_agg(%struct.iwl_priv*, i32, %struct.iwl_lq_sta*, %struct.ieee80211_sta*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
