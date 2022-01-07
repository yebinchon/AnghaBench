; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_move_siso_to_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_move_siso_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, i32, i32, i32, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid BT load %d\0A\00", align 1
@IWL_ANT_OK_SINGLE = common dso_local global i64 0, align 8
@IWL_LEGACY_SWITCH_ANTENNA2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle Antenna\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle SGI/NGI\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SGI was set in GF+SISO\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@IWL_LEGACY_SWITCH_MIMO3_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @rs_move_siso_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_move_siso_to_other(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
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
  %24 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %27 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %26, i32 0, i32 5
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %29 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i64 %31
  store %struct.iwl_scale_tbl_info* %32, %struct.iwl_scale_tbl_info** %12, align 8
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %33, i32 0, i32 5
  %35 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %34, align 8
  %36 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %36, i32 0, i32 1
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
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %91 [
    i32 135, label %66
    i32 136, label %67
    i32 137, label %76
    i32 138, label %76
  ]

66:                                               ; preds = %5
  br label %97

67:                                               ; preds = %5
  %68 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 133
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %74 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %73, i32 0, i32 0
  store i32 131, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  br label %97

76:                                               ; preds = %5, %5
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %78 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @first_antenna(i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %84 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 134
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %89 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %88, i32 0, i32 0
  store i32 134, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %76
  br label %97

91:                                               ; preds = %5
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %94 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %90, %75, %66
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %99 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %98)
  %100 = load i64, i64* @IWL_ANT_OK_SINGLE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %104 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 133
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %109 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %108, i32 0, i32 0
  store i32 134, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %102, %97
  %111 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %112 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @first_antenna(i32 %120)
  store i32 %121, i32* %18, align 4
  %122 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %123 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IWL_LEGACY_SWITCH_ANTENNA2, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %129 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %128, i32 0, i32 0
  store i32 134, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %115
  br label %131

131:                                              ; preds = %130, %110
  %132 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %133 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %379, %131
  %136 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %137 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %141 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %359 [
    i32 134, label %143
    i32 133, label %143
    i32 131, label %192
    i32 130, label %192
    i32 129, label %192
    i32 132, label %243
    i32 128, label %328
  ]

143:                                              ; preds = %135, %135
  %144 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %145 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %146 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %147 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 134
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32, i32* %19, align 4
  %152 = icmp sle i32 %151, 1
  br i1 %152, label %161, label %153

153:                                              ; preds = %150, %143
  %154 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %155 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 133
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* %19, align 4
  %160 = icmp sle i32 %159, 2
  br i1 %160, label %161, label %162

161:                                              ; preds = %158, %150
  br label %359

162:                                              ; preds = %158, %153
  %163 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %164 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %170 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %175 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 135
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %359

179:                                              ; preds = %173, %168, %162
  %180 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %181 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %180, %struct.iwl_scale_tbl_info* %181, i32 %182)
  %184 = load i32, i32* %18, align 4
  %185 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %186 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %185, i32 0, i32 5
  %187 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %188 = call i32 @rs_toggle_antenna(i32 %184, i32* %186, %struct.iwl_scale_tbl_info* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  store i32 1, i32* %20, align 4
  br label %384

191:                                              ; preds = %179
  br label %359

192:                                              ; preds = %135, %135, %135
  %193 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %194 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %193, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %195 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %196 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %195, %struct.iwl_scale_tbl_info* %196, i32 %197)
  %199 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %200 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %202 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 131
  br i1 %204, label %205, label %209

205:                                              ; preds = %192
  %206 = load i32, i32* @ANT_AB, align 4
  %207 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %208 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 4
  br label %223

209:                                              ; preds = %192
  %210 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %211 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 130
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* @ANT_AC, align 4
  %216 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %217 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  br label %222

218:                                              ; preds = %209
  %219 = load i32, i32* @ANT_BC, align 4
  %220 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %221 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %214
  br label %223

223:                                              ; preds = %222, %205
  %224 = load i32, i32* %18, align 4
  %225 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %226 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @rs_is_valid_ant(i32 %224, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  br label %359

231:                                              ; preds = %223
  %232 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %233 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %234 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %235 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %236 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @rs_switch_to_mimo2(%struct.iwl_priv* %232, %struct.iwl_lq_sta* %233, %struct.ieee80211_conf* %234, %struct.ieee80211_sta* %235, %struct.iwl_scale_tbl_info* %236, i32 %237)
  store i32 %238, i32* %21, align 4
  %239 = load i32, i32* %21, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %231
  br label %384

242:                                              ; preds = %231
  br label %359

243:                                              ; preds = %135
  %244 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %245 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %243
  %249 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %15, align 8
  %250 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  br label %359

256:                                              ; preds = %248, %243
  %257 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %258 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %256
  %262 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %15, align 8
  %263 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  br label %359

269:                                              ; preds = %261, %256
  %270 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %271 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %272 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %273 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %274 = load i32, i32* %16, align 4
  %275 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %272, %struct.iwl_scale_tbl_info* %273, i32 %274)
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %269
  %279 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %280 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %278
  br label %359

284:                                              ; preds = %278
  %285 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %286 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %285, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %287, %269
  %289 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %290 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  %295 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %296 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %298 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %299 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %297, %struct.iwl_scale_tbl_info* %298)
  %300 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %301 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %288
  %305 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %306 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = sdiv i32 %307, 100
  store i32 %308, i32* %22, align 4
  %309 = load i32, i32* %22, align 4
  %310 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %311 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = icmp sge i32 %309, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %304
  br label %359

319:                                              ; preds = %304
  br label %320

320:                                              ; preds = %319, %288
  %321 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %322 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %321, %struct.iwl_scale_tbl_info* %322, i32 %323, i32 %324)
  %326 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %327 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %326, i32 0, i32 5
  store i32 %325, i32* %327, align 8
  store i32 1, i32* %20, align 4
  br label %384

328:                                              ; preds = %135
  %329 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %330 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %329, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %331 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %332 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %333 = load i32, i32* %16, align 4
  %334 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %331, %struct.iwl_scale_tbl_info* %332, i32 %333)
  %335 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %336 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %335, i32 0, i32 1
  store i32 0, i32* %336, align 4
  %337 = load i32, i32* @ANT_ABC, align 4
  %338 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %339 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 4
  %340 = load i32, i32* %18, align 4
  %341 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %342 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @rs_is_valid_ant(i32 %340, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %328
  br label %359

347:                                              ; preds = %328
  %348 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %349 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %350 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %351 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %352 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @rs_switch_to_mimo3(%struct.iwl_priv* %348, %struct.iwl_lq_sta* %349, %struct.ieee80211_conf* %350, %struct.ieee80211_sta* %351, %struct.iwl_scale_tbl_info* %352, i32 %353)
  store i32 %354, i32* %21, align 4
  %355 = load i32, i32* %21, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %347
  br label %384

358:                                              ; preds = %347
  br label %359

359:                                              ; preds = %135, %358, %346, %318, %283, %268, %255, %242, %230, %191, %178, %161
  %360 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %361 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 8
  %364 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %365 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @IWL_LEGACY_SWITCH_MIMO3_ABC, align 4
  %368 = icmp sgt i32 %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %359
  %370 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %371 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %370, i32 0, i32 0
  store i32 134, i32* %371, align 8
  br label %372

372:                                              ; preds = %369, %359
  %373 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %374 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %17, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %372
  br label %380

379:                                              ; preds = %372
  br label %135

380:                                              ; preds = %378
  %381 = load i32, i32* @LQ_NONE, align 4
  %382 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %383 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %382, i32 0, i32 3
  store i32 %381, i32* %383, align 8
  br label %407

384:                                              ; preds = %357, %320, %241, %190
  %385 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %386 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %385, i32 0, i32 3
  store i32 1, i32* %386, align 4
  %387 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %388 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  %391 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %392 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = icmp sgt i32 %393, 128
  br i1 %394, label %395, label %398

395:                                              ; preds = %384
  %396 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %397 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %396, i32 0, i32 0
  store i32 134, i32* %397, align 8
  br label %398

398:                                              ; preds = %395, %384
  %399 = load i32, i32* %20, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %403 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %406 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %405, i32 0, i32 0
  store i32 %404, i32* %406, align 8
  br label %407

407:                                              ; preds = %380, %401, %398
  ret void
}

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
