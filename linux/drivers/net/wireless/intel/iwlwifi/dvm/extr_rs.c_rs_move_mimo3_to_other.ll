; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_move_mimo3_to_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_move_mimo3_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i32, i32, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid BT load %d\0A\00", align 1
@IWL_ANT_OK_SINGLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"LQ: MIMO3 toggle Antennas\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LQ: MIMO3 switch to SISO\0A\00", align 1
@ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@ANT_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"LQ: MIMO3 switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"LQ: MIMO3 toggle SGI/NGI\0A\00", align 1
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @rs_move_mimo3_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_move_mimo3_to_other(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_scale_tbl_info*, align 8
  %13 = alloca %struct.iwl_scale_tbl_info*, align 8
  %14 = alloca %struct.iwl_rate_scale_data*, align 8
  %15 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %27 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %26, i32 0, i32 4
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %29 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i64 %31
  store %struct.iwl_scale_tbl_info* %32, %struct.iwl_scale_tbl_info** %12, align 8
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %33, i32 0, i32 4
  %35 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %34, align 8
  %36 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 1, %38
  %40 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %35, i64 %39
  store %struct.iwl_scale_tbl_info* %40, %struct.iwl_scale_tbl_info** %13, align 8
  %41 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %42 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %41, i32 0, i32 7
  %43 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %43, i64 %45
  store %struct.iwl_rate_scale_data* %46, %struct.iwl_rate_scale_data** %14, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %48, %struct.ieee80211_sta_ht_cap** %15, align 8
  %49 = load i32, i32* @IWL_RATE_COUNT, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = sub i64 40, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %16, align 4
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %90 [
    i32 137, label %66
    i32 139, label %67
    i32 140, label %67
    i32 138, label %76
  ]

66:                                               ; preds = %5
  br label %96

67:                                               ; preds = %5, %5
  %68 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 130
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %74 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %73, i32 0, i32 0
  store i32 130, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  br label %96

76:                                               ; preds = %5
  %77 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %78 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 129
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %83 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %76
  %87 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %88 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %87, i32 0, i32 0
  store i32 130, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %96

90:                                               ; preds = %5
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %93 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IWL_ERR(%struct.iwl_priv* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %89, %75, %66
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %98 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %97)
  %99 = load i64, i64* @IWL_ANT_OK_SINGLE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %103 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 130
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %108 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 128
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %101
  %112 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %113 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %112, i32 0, i32 0
  store i32 130, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %106, %96
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %116 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %121 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %122, 130
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %126 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 128
  br i1 %128, label %129, label %132

129:                                              ; preds = %124, %119
  %130 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %131 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %130, i32 0, i32 0
  store i32 130, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %124, %114
  %133 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %134 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %361, %132
  %137 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %138 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %142 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %342 [
    i32 136, label %144
    i32 135, label %144
    i32 130, label %170
    i32 129, label %170
    i32 128, label %170
    i32 133, label %219
    i32 132, label %219
    i32 131, label %219
    i32 134, label %270
  ]

144:                                              ; preds = %136, %136
  %145 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %146 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* %19, align 4
  %148 = icmp sle i32 %147, 3
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %342

150:                                              ; preds = %144
  %151 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %152 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %342

157:                                              ; preds = %150
  %158 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %159 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %158, %struct.iwl_scale_tbl_info* %159, i32 %160)
  %162 = load i32, i32* %18, align 4
  %163 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %164 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %163, i32 0, i32 4
  %165 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %166 = call i32 @rs_toggle_antenna(i32 %162, i32* %164, %struct.iwl_scale_tbl_info* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %366

169:                                              ; preds = %157
  br label %342

170:                                              ; preds = %136, %136, %136
  %171 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %172 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %173 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %174 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %173, %struct.iwl_scale_tbl_info* %174, i32 %175)
  %177 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %178 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 130
  br i1 %180, label %181, label %185

181:                                              ; preds = %170
  %182 = load i32, i32* @ANT_A, align 4
  %183 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %184 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 4
  br label %199

185:                                              ; preds = %170
  %186 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %187 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 129
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @ANT_B, align 4
  %192 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %193 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 4
  br label %198

194:                                              ; preds = %185
  %195 = load i32, i32* @ANT_C, align 4
  %196 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %197 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %190
  br label %199

199:                                              ; preds = %198, %181
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %202 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @rs_is_valid_ant(i32 %200, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %199
  br label %342

207:                                              ; preds = %199
  %208 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %209 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %210 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %211 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %212 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @rs_switch_to_siso(%struct.iwl_priv* %208, %struct.iwl_lq_sta* %209, %struct.ieee80211_conf* %210, %struct.ieee80211_sta* %211, %struct.iwl_scale_tbl_info* %212, i32 %213)
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %207
  br label %366

218:                                              ; preds = %207
  br label %342

219:                                              ; preds = %136, %136, %136
  %220 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %221 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %222 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %223 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %222, %struct.iwl_scale_tbl_info* %223, i32 %224)
  %226 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %227 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %226, i32 0, i32 1
  store i32 0, i32* %227, align 4
  %228 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %229 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 133
  br i1 %231, label %232, label %236

232:                                              ; preds = %219
  %233 = load i32, i32* @ANT_AB, align 4
  %234 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %235 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %234, i32 0, i32 6
  store i32 %233, i32* %235, align 4
  br label %250

236:                                              ; preds = %219
  %237 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %238 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 132
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* @ANT_AC, align 4
  %243 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %244 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  br label %249

245:                                              ; preds = %236
  %246 = load i32, i32* @ANT_BC, align 4
  %247 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %248 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %247, i32 0, i32 6
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %245, %241
  br label %250

250:                                              ; preds = %249, %232
  %251 = load i32, i32* %18, align 4
  %252 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %253 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @rs_is_valid_ant(i32 %251, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %250
  br label %342

258:                                              ; preds = %250
  %259 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %260 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %261 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %262 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %263 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @rs_switch_to_mimo2(%struct.iwl_priv* %259, %struct.iwl_lq_sta* %260, %struct.ieee80211_conf* %261, %struct.ieee80211_sta* %262, %struct.iwl_scale_tbl_info* %263, i32 %264)
  store i32 %265, i32* %20, align 4
  %266 = load i32, i32* %20, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %258
  br label %366

269:                                              ; preds = %258
  br label %342

270:                                              ; preds = %136
  %271 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %272 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %270
  %276 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %15, align 8
  %277 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %275
  br label %342

283:                                              ; preds = %275, %270
  %284 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %285 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %283
  %289 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %15, align 8
  %290 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %288
  br label %342

296:                                              ; preds = %288, %283
  %297 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %298 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %297, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %299 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %300 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %299, %struct.iwl_scale_tbl_info* %300, i32 %301)
  %303 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %304 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %310 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %312 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %313 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %311, %struct.iwl_scale_tbl_info* %312)
  %314 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %315 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %334

318:                                              ; preds = %296
  %319 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %320 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = sdiv i32 %321, 100
  store i32 %322, i32* %22, align 4
  %323 = load i32, i32* %22, align 4
  %324 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %325 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %10, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = icmp sge i32 %323, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %318
  br label %342

333:                                              ; preds = %318
  br label %334

334:                                              ; preds = %333, %296
  %335 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %336 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %11, align 4
  %339 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %335, %struct.iwl_scale_tbl_info* %336, i32 %337, i32 %338)
  %340 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %341 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %340, i32 0, i32 4
  store i32 %339, i32* %341, align 4
  store i32 1, i32* %21, align 4
  br label %366

342:                                              ; preds = %136, %332, %295, %282, %269, %257, %218, %206, %169, %156, %149
  %343 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %344 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 8
  %347 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %348 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp sgt i32 %349, 134
  br i1 %350, label %351, label %354

351:                                              ; preds = %342
  %352 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %353 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %352, i32 0, i32 0
  store i32 136, i32* %353, align 8
  br label %354

354:                                              ; preds = %351, %342
  %355 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %356 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* %17, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  br label %362

361:                                              ; preds = %354
  br label %136

362:                                              ; preds = %360
  %363 = load i32, i32* @LQ_NONE, align 4
  %364 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %365 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %364, i32 0, i32 3
  store i32 %363, i32* %365, align 8
  br label %389

366:                                              ; preds = %334, %268, %217, %168
  %367 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %368 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %367, i32 0, i32 2
  store i32 1, i32* %368, align 4
  %369 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %370 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 8
  %373 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %374 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp sgt i32 %375, 134
  br i1 %376, label %377, label %380

377:                                              ; preds = %366
  %378 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %379 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %378, i32 0, i32 0
  store i32 136, i32* %379, align 8
  br label %380

380:                                              ; preds = %377, %366
  %381 = load i32, i32* %21, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %385 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %388 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %387, i32 0, i32 0
  store i32 %386, i32* %388, align 8
  br label %389

389:                                              ; preds = %362, %383, %380
  ret void
}

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
