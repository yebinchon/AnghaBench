; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_move_mimo2_to_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_move_mimo2_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.il_lq_sta = type { i64, i32, i32, i32, %struct.il_scale_tbl_info*, i32 }
%struct.il_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.il_rate_scale_data* }
%struct.il_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LQ: MIMO2 toggle Antennas\0A\00", align 1
@IL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LQ: MIMO2 switch to SISO\0A\00", align 1
@ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@ANT_C = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LQ: MIMO2 toggle SGI/NGI\0A\00", align 1
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @il4965_rs_move_mimo2_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_move_mimo2_to_other(%struct.il_priv* %0, %struct.il_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.il_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.il_scale_tbl_info*, align 8
  %14 = alloca %struct.il_scale_tbl_info*, align 8
  %15 = alloca %struct.il_rate_scale_data*, align 8
  %16 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %8, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %25 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %28 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %27, i32 0, i32 4
  %29 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %28, align 8
  %30 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %31 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %29, i64 %32
  store %struct.il_scale_tbl_info* %33, %struct.il_scale_tbl_info** %13, align 8
  %34 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %35 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %34, i32 0, i32 4
  %36 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %35, align 8
  %37 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %38 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 1, %39
  %41 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %36, i64 %40
  store %struct.il_scale_tbl_info* %41, %struct.il_scale_tbl_info** %14, align 8
  %42 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %43 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %42, i32 0, i32 7
  %44 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %44, i64 %46
  store %struct.il_rate_scale_data* %47, %struct.il_rate_scale_data** %15, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %48, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %49, %struct.ieee80211_sta_ht_cap** %16, align 8
  %50 = load i32, i32* @RATE_COUNT, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = sub i64 40, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %19, align 4
  %59 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %63 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %64 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %237, %5
  %67 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %68 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %72 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %218 [
    i32 133, label %74
    i32 132, label %74
    i32 130, label %99
    i32 129, label %99
    i32 128, label %99
    i32 131, label %147
  ]

74:                                               ; preds = %66, %66
  %75 = call i32 @D_RATE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %20, align 4
  %77 = icmp sle i32 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %218

79:                                               ; preds = %74
  %80 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %15, align 8
  %81 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IL_RS_GOOD_RATIO, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %218

86:                                               ; preds = %79
  %87 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %88 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @memcpy(%struct.il_scale_tbl_info* %87, %struct.il_scale_tbl_info* %88, i32 %89)
  %91 = load i32, i32* %19, align 4
  %92 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %93 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %92, i32 0, i32 4
  %94 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %95 = call i32 @il4965_rs_toggle_antenna(i32 %91, i32* %93, %struct.il_scale_tbl_info* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i32 1, i32* %21, align 4
  br label %242

98:                                               ; preds = %86
  br label %218

99:                                               ; preds = %66, %66, %66
  %100 = call i32 @D_RATE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %102 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @memcpy(%struct.il_scale_tbl_info* %101, %struct.il_scale_tbl_info* %102, i32 %103)
  %105 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %106 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 130
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* @ANT_A, align 4
  %111 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %112 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  br label %127

113:                                              ; preds = %99
  %114 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %115 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @ANT_B, align 4
  %120 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %121 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  br label %126

122:                                              ; preds = %113
  %123 = load i32, i32* @ANT_C, align 4
  %124 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %125 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %109
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %130 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @il4965_rs_is_valid_ant(i32 %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %218

135:                                              ; preds = %127
  %136 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %137 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %138 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %139 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %140 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @il4965_rs_switch_to_siso(%struct.il_priv* %136, %struct.il_lq_sta* %137, %struct.ieee80211_conf* %138, %struct.ieee80211_sta* %139, %struct.il_scale_tbl_info* %140, i32 %141)
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %22, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %135
  br label %242

146:                                              ; preds = %135
  br label %218

147:                                              ; preds = %66
  %148 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %149 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  br label %218

160:                                              ; preds = %152, %147
  %161 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %162 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  br label %218

173:                                              ; preds = %165, %160
  %174 = call i32 @D_RATE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %175 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %176 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @memcpy(%struct.il_scale_tbl_info* %175, %struct.il_scale_tbl_info* %176, i32 %177)
  %179 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %180 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %186 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %188 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %189 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %187, %struct.il_scale_tbl_info* %188)
  %190 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %191 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %173
  %195 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %196 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %197, 100
  store i32 %198, i32* %23, align 4
  %199 = load i32, i32* %23, align 4
  %200 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %201 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp sge i32 %199, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %194
  br label %218

209:                                              ; preds = %194
  br label %210

210:                                              ; preds = %209, %173
  %211 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %212 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %211, %struct.il_scale_tbl_info* %212, i32 %213, i32 %214)
  %216 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %217 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  store i32 1, i32* %21, align 4
  br label %242

218:                                              ; preds = %66, %208, %172, %159, %146, %134, %98, %85, %78
  %219 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %220 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  %223 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %224 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 131
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  %228 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %229 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %228, i32 0, i32 0
  store i32 133, i32* %229, align 8
  br label %230

230:                                              ; preds = %227, %218
  %231 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %232 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %18, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  br label %238

237:                                              ; preds = %230
  br label %66

238:                                              ; preds = %236
  %239 = load i32, i32* @LQ_NONE, align 4
  %240 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %241 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 8
  store i32 0, i32* %6, align 4
  br label %266

242:                                              ; preds = %210, %145, %97
  %243 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %244 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %243, i32 0, i32 2
  store i32 1, i32* %244, align 4
  %245 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %246 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 8
  %249 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %250 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp sgt i32 %251, 131
  br i1 %252, label %253, label %256

253:                                              ; preds = %242
  %254 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %255 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %254, i32 0, i32 0
  store i32 133, i32* %255, align 8
  br label %256

256:                                              ; preds = %253, %242
  %257 = load i32, i32* %21, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %261 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %264 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %259, %256
  store i32 0, i32* %6, align 4
  br label %266

266:                                              ; preds = %265, %238
  %267 = load i32, i32* %6, align 4
  ret i32 %267
}

declare dso_local i32 @D_RATE(i8*) #1

declare dso_local i32 @memcpy(%struct.il_scale_tbl_info*, %struct.il_scale_tbl_info*, i32) #1

declare dso_local i32 @il4965_rs_toggle_antenna(i32, i32*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @il4965_rs_switch_to_siso(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_scale_tbl_info*, i32) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
