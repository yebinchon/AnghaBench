; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64 }
%struct.ieee80211_sta = type { i64* }
%struct.sk_buff = type { i64 }
%struct.il_lq_sta = type { i64, i64, i32, i32, i32, i64, %struct.il_scale_tbl_info*, %struct.il_link_quality_cmd, i32 }
%struct.il_scale_tbl_info = type { i32, i32, i32, i32, i32 }
%struct.il_link_quality_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.il_priv = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"get frame ack response, update rate scale win\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Station rate scaling not created yet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Rate scaling not initialized yet.\0A\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_MCS_CODE_MSK = common dso_local global i32 0, align 4
@RATE_9M_IDX = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"initial rate %d does not match %d (0x%x)\0A\00", align 1
@IL_MISSED_RATE_MAX = common dso_local global i64 0, align 8
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Neither active nor search matches tx rate\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"active- lq:%x, ant:%x, SGI:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"search- lq:%x, ant:%x, SGI:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"actual- lq:%x, ant:%x, SGI:%d\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @il4965_rs_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.il_lq_sta*, align 8
  %17 = alloca %struct.il_link_quality_cmd*, align 8
  %18 = alloca %struct.ieee80211_hdr*, align 8
  %19 = alloca %struct.il_priv*, align 8
  %20 = alloca %struct.ieee80211_tx_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.il_scale_tbl_info, align 4
  %24 = alloca %struct.il_scale_tbl_info*, align 8
  %25 = alloca %struct.il_scale_tbl_info*, align 8
  %26 = alloca %struct.il_scale_tbl_info*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.il_lq_sta*
  store %struct.il_lq_sta* %28, %struct.il_lq_sta** %16, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %32, %struct.ieee80211_hdr** %18, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.il_priv*
  store %struct.il_priv* %34, %struct.il_priv** %19, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %35)
  store %struct.ieee80211_tx_info* %36, %struct.ieee80211_tx_info** %20, align 8
  %37 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %39 = icmp ne %struct.il_lq_sta* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %5
  %41 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %516

42:                                               ; preds = %5
  %43 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %44 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %516

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ieee80211_is_data(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %50
  br label %516

64:                                               ; preds = %56
  %65 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %516

79:                                               ; preds = %71, %64
  %80 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %81 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %80, i32 0, i32 7
  store %struct.il_link_quality_cmd* %81, %struct.il_link_quality_cmd** %17, align 8
  %82 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %17, align 8
  %83 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %89, i64 %92, %struct.il_scale_tbl_info* %23, i32* %13)
  %94 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %95 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %79
  %100 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %99, %79
  %104 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %21, align 4
  %111 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %112 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %103
  %123 = load i32, i32* @RATE_MCS_CODE_MSK, align 4
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @RATE_9M_IDX, align 4
  %128 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %131, %122
  %135 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %136 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %140, %134
  br label %145

145:                                              ; preds = %144, %103
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %225, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = icmp ne i32 %150, %157
  br i1 %158, label %225, label %159

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = icmp ne i32 %161, %168
  br i1 %169, label %225, label %170

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = icmp ne i32 %172, %179
  br i1 %180, label %225, label %181

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %185 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %183, %187
  br i1 %188, label %225, label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = icmp ne i32 %196, %203
  br i1 %204, label %225, label %205

205:                                              ; preds = %189
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = icmp ne i32 %212, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %205
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %248

225:                                              ; preds = %221, %205, %189, %181, %170, %159, %148, %145
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %22, align 4
  %229 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %226, i32 %227, i32 %228)
  %230 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %231 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %231, align 8
  %234 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %235 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @IL_MISSED_RATE_MAX, align 8
  %238 = icmp sgt i64 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %225
  %240 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %241 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  %242 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %243 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %244 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %243, i32 0, i32 7
  %245 = load i32, i32* @CMD_ASYNC, align 4
  %246 = call i32 @il_send_lq_cmd(%struct.il_priv* %242, %struct.il_link_quality_cmd* %244, i32 %245, i32 0)
  br label %247

247:                                              ; preds = %239, %225
  br label %516

248:                                              ; preds = %221
  %249 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %250 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %249, i32 0, i32 0
  store i64 0, i64* %250, align 8
  br label %251

251:                                              ; preds = %248
  %252 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %253 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %252, i32 0, i32 6
  %254 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %253, align 8
  %255 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %256 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %254, i64 %257
  %259 = call i64 @il4965_table_type_matches(%struct.il_scale_tbl_info* %23, %struct.il_scale_tbl_info* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %251
  %262 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %263 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %262, i32 0, i32 6
  %264 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %263, align 8
  %265 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %266 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %264, i64 %267
  store %struct.il_scale_tbl_info* %268, %struct.il_scale_tbl_info** %24, align 8
  %269 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %270 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %269, i32 0, i32 6
  %271 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %270, align 8
  %272 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %273 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = sub i64 1, %274
  %276 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %271, i64 %275
  store %struct.il_scale_tbl_info* %276, %struct.il_scale_tbl_info** %25, align 8
  br label %351

277:                                              ; preds = %251
  %278 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %279 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %278, i32 0, i32 6
  %280 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %279, align 8
  %281 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %282 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = sub i64 1, %283
  %285 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %280, i64 %284
  %286 = call i64 @il4965_table_type_matches(%struct.il_scale_tbl_info* %23, %struct.il_scale_tbl_info* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %277
  %289 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %290 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %289, i32 0, i32 6
  %291 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %290, align 8
  %292 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %293 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = sub i64 1, %294
  %296 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %291, i64 %295
  store %struct.il_scale_tbl_info* %296, %struct.il_scale_tbl_info** %24, align 8
  %297 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %298 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %297, i32 0, i32 6
  %299 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %298, align 8
  %300 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %301 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %299, i64 %302
  store %struct.il_scale_tbl_info* %303, %struct.il_scale_tbl_info** %25, align 8
  br label %350

304:                                              ; preds = %277
  %305 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %306 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %307 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %306, i32 0, i32 6
  %308 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %307, align 8
  %309 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %310 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %308, i64 %311
  store %struct.il_scale_tbl_info* %312, %struct.il_scale_tbl_info** %26, align 8
  %313 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %314 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %317 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %320 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %315, i32 %318, i32 %321)
  %323 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %324 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %323, i32 0, i32 6
  %325 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %324, align 8
  %326 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %327 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = sub i64 1, %328
  %330 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %325, i64 %329
  store %struct.il_scale_tbl_info* %330, %struct.il_scale_tbl_info** %26, align 8
  %331 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %332 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %335 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %338 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %333, i32 %336, i32 %339)
  %341 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %342, i32 %344, i32 %346)
  %348 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %349 = call i32 @il4965_rs_stay_in_table(%struct.il_lq_sta* %348, i32 1)
  br label %500

350:                                              ; preds = %288
  br label %351

351:                                              ; preds = %350, %261
  %352 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %353 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %409

358:                                              ; preds = %351
  %359 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %17, align 8
  %360 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @le32_to_cpu(i32 %364)
  store i32 %365, i32* %22, align 4
  %366 = load i32, i32* %22, align 4
  %367 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %368 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %366, i64 %369, %struct.il_scale_tbl_info* %23, i32* %13)
  %371 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %24, align 8
  %372 = load i32, i32* %13, align 4
  %373 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %374 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %378 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @il4965_rs_collect_tx_data(%struct.il_scale_tbl_info* %371, i32 %372, i32 %376, i32 %380)
  %382 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %383 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %382, i32 0, i32 5
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %408

386:                                              ; preds = %358
  %387 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %388 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %392 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %396 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %400 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = sub nsw i32 %398, %402
  %404 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %405 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, %403
  store i32 %407, i32* %405, align 4
  br label %408

408:                                              ; preds = %386, %358
  br label %496

409:                                              ; preds = %351
  %410 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %411 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 3
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i64 0
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = sub nsw i32 %416, 1
  store i32 %417, i32* %12, align 4
  %418 = load i32, i32* %12, align 4
  %419 = call i32 @min(i32 %418, i32 15)
  store i32 %419, i32* %12, align 4
  %420 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %20, align 8
  %421 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  %426 = xor i1 %425, true
  %427 = xor i1 %426, true
  %428 = zext i1 %427 to i32
  store i32 %428, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %429

429:                                              ; preds = %473, %409
  %430 = load i32, i32* %15, align 4
  %431 = load i32, i32* %12, align 4
  %432 = icmp sle i32 %430, %431
  br i1 %432, label %433, label %476

433:                                              ; preds = %429
  %434 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %17, align 8
  %435 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %434, i32 0, i32 0
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %435, align 8
  %437 = load i32, i32* %15, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @le32_to_cpu(i32 %441)
  store i32 %442, i32* %22, align 4
  %443 = load i32, i32* %22, align 4
  %444 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %445 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %443, i64 %446, %struct.il_scale_tbl_info* %23, i32* %13)
  %448 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %24, align 8
  %449 = call i64 @il4965_table_type_matches(%struct.il_scale_tbl_info* %23, %struct.il_scale_tbl_info* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %433
  %452 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %24, align 8
  store %struct.il_scale_tbl_info* %452, %struct.il_scale_tbl_info** %26, align 8
  br label %461

453:                                              ; preds = %433
  %454 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %455 = call i64 @il4965_table_type_matches(%struct.il_scale_tbl_info* %23, %struct.il_scale_tbl_info* %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %453
  %458 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  store %struct.il_scale_tbl_info* %458, %struct.il_scale_tbl_info** %26, align 8
  br label %460

459:                                              ; preds = %453
  br label %473

460:                                              ; preds = %457
  br label %461

461:                                              ; preds = %460, %451
  %462 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %463 = load i32, i32* %13, align 4
  %464 = load i32, i32* %15, align 4
  %465 = load i32, i32* %12, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %461
  br label %470

468:                                              ; preds = %461
  %469 = load i32, i32* %11, align 4
  br label %470

470:                                              ; preds = %468, %467
  %471 = phi i32 [ 0, %467 ], [ %469, %468 ]
  %472 = call i32 @il4965_rs_collect_tx_data(%struct.il_scale_tbl_info* %462, i32 %463, i32 1, i32 %471)
  br label %473

473:                                              ; preds = %470, %459
  %474 = load i32, i32* %15, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %15, align 4
  br label %429

476:                                              ; preds = %429
  %477 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %478 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %477, i32 0, i32 5
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %495

481:                                              ; preds = %476
  %482 = load i32, i32* %11, align 4
  %483 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %484 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = add nsw i32 %485, %482
  store i32 %486, i32* %484, align 8
  %487 = load i32, i32* %12, align 4
  %488 = load i32, i32* %11, align 4
  %489 = sub nsw i32 1, %488
  %490 = add nsw i32 %487, %489
  %491 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %492 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = add nsw i32 %493, %490
  store i32 %494, i32* %492, align 4
  br label %495

495:                                              ; preds = %481, %476
  br label %496

496:                                              ; preds = %495, %408
  %497 = load i32, i32* %22, align 4
  %498 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %499 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %498, i32 0, i32 4
  store i32 %497, i32* %499, align 8
  br label %500

500:                                              ; preds = %496, %304
  %501 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %502 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %501, i32 0, i32 0
  %503 = load i64*, i64** %502, align 8
  %504 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %505 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds i64, i64* %503, i64 %506
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %500
  %511 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  %512 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %513 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %514 = load %struct.il_lq_sta*, %struct.il_lq_sta** %16, align 8
  %515 = call i32 @il4965_rs_rate_scale_perform(%struct.il_priv* %511, %struct.sk_buff* %512, %struct.ieee80211_sta* %513, %struct.il_lq_sta* %514)
  br label %516

516:                                              ; preds = %40, %47, %63, %78, %247, %510, %500
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @il4965_rs_get_tbl_info_from_mcs(i32, i64, %struct.il_scale_tbl_info*, i32*) #1

declare dso_local i32 @il_send_lq_cmd(%struct.il_priv*, %struct.il_link_quality_cmd*, i32, i32) #1

declare dso_local i64 @il4965_table_type_matches(%struct.il_scale_tbl_info*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_stay_in_table(%struct.il_lq_sta*, i32) #1

declare dso_local i32 @il4965_rs_collect_tx_data(%struct.il_scale_tbl_info*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @il4965_rs_rate_scale_perform(%struct.il_priv*, %struct.sk_buff*, %struct.ieee80211_sta*, %struct.il_lq_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
