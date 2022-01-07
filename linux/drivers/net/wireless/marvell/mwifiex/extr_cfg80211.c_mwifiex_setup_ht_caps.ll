; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_setup_ht_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_setup_ht_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mwifiex_private = type { i64, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i32 }
%struct.ieee80211_mcs_info = type { i32 }

@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@HT_STREAM_2X2 = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_40MHZ_INTOLERANT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta_ht_cap*, %struct.mwifiex_private*)* @mwifiex_setup_ht_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_setup_ht_caps(%struct.ieee80211_sta_ht_cap* %0, %struct.mwifiex_private* %1) #0 {
  %3 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_mcs_info, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.ieee80211_sta_ht_cap* %0, %struct.ieee80211_sta_ht_cap** %3, align 8
  store %struct.mwifiex_private* %1, %struct.mwifiex_private** %4, align 8
  %9 = bitcast %struct.ieee80211_mcs_info* %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 1
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %8, align 8
  %13 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %16 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_NONE, align 4
  %19 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %21, i32 0, i32 2
  %23 = call i32 @memset(%struct.TYPE_5__* %22, i32 0, i32 4)
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ISSUPP_CHANWIDTH40(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %31 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ISSUPP_SHORTGI20(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %50 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %61

54:                                               ; preds = %42
  %55 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ISSUPP_SHORTGI40(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %69 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %80

73:                                               ; preds = %61
  %74 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HT_STREAM_2X2, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %88 = shl i32 2, %87
  %89 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %80
  %94 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %95 = shl i32 1, %94
  %96 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %86
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %102 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ISSUPP_TXSTBC(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %108 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %119

112:                                              ; preds = %100
  %113 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %116 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %106
  %120 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %121 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ISSUPP_GREENFIELD(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %127 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %138

131:                                              ; preds = %119
  %132 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %135 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %140 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @ISENABLED_40MHZ_INTOLERANT(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32, i32* @IEEE80211_HT_CAP_40MHZ_INTOLERANT, align 4
  %146 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %157

150:                                              ; preds = %138
  %151 = load i32, i32* @IEEE80211_HT_CAP_40MHZ_INTOLERANT, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %144
  %158 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %159 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @ISSUPP_RXLDPC(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %165 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %176

169:                                              ; preds = %157
  %170 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %173 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %169, %163
  %177 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %184 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %185 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %189 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @GET_RXMCSSUPP(i64 %190)
  store i32 %191, i32* %5, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @memset(%struct.TYPE_5__* %192, i32 255, i32 %193)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %197
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 4, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 @memset(%struct.TYPE_5__* %198, i32 0, i32 %202)
  %204 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %205 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %176
  %210 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %211 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @ISSUPP_CHANWIDTH40(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %209, %176
  %216 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %6, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @SETHT_MCS32(i32 %217)
  br label %219

219:                                              ; preds = %215, %209
  %220 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %221 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %223 = call i32 @memcpy(%struct.TYPE_5__* %221, %struct.TYPE_5__* %222, i32 4)
  %224 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %225 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %3, align 8
  %226 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ISSUPP_CHANWIDTH40(i32) #1

declare dso_local i64 @ISSUPP_SHORTGI20(i32) #1

declare dso_local i64 @ISSUPP_SHORTGI40(i32) #1

declare dso_local i64 @ISSUPP_TXSTBC(i32) #1

declare dso_local i64 @ISSUPP_GREENFIELD(i32) #1

declare dso_local i64 @ISENABLED_40MHZ_INTOLERANT(i32) #1

declare dso_local i64 @ISSUPP_RXLDPC(i32) #1

declare dso_local i32 @GET_RXMCSSUPP(i64) #1

declare dso_local i32 @SETHT_MCS32(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
