; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_move_legacy_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_move_legacy_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.il_lq_sta = type { i64, i32, i64, %struct.il_scale_tbl_info* }
%struct.il_scale_tbl_info = type { i32, i32, i32, i32, i32, %struct.il_rate_scale_data* }
%struct.il_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LQ: Legacy toggle Antenna\0A\00", align 1
@IL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"LQ: Legacy switch to SISO\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @il4965_rs_move_legacy_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_move_legacy_other(%struct.il_priv* %0, %struct.il_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.il_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.il_scale_tbl_info*, align 8
  %13 = alloca %struct.il_scale_tbl_info*, align 8
  %14 = alloca %struct.il_rate_scale_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %8, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %22 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %21, i32 0, i32 3
  %23 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %22, align 8
  %24 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %25 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i64 %26
  store %struct.il_scale_tbl_info* %27, %struct.il_scale_tbl_info** %12, align 8
  %28 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %29 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %28, i32 0, i32 3
  %30 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %29, align 8
  %31 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %32 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 1, %33
  %35 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %30, i64 %34
  store %struct.il_scale_tbl_info* %35, %struct.il_scale_tbl_info** %13, align 8
  %36 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %37 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %36, i32 0, i32 5
  %38 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %38, i64 %40
  store %struct.il_rate_scale_data* %41, %struct.il_rate_scale_data** %14, align 8
  %42 = load i32, i32* @RATE_COUNT, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = sub i64 32, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %55 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %56 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %55, i32 0, i32 0
  store i32 128, i32* %56, align 8
  %57 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %58 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %201, %5
  %61 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %62 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %66 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %182 [
    i32 133, label %68
    i32 132, label %68
    i32 128, label %109
    i32 131, label %130
    i32 130, label %130
    i32 129, label %130
  ]

68:                                               ; preds = %60, %60
  %69 = call i32 @D_RATE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %71 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 133
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %18, align 4
  %76 = icmp sle i32 %75, 1
  br i1 %76, label %85, label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %79 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 132
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %18, align 4
  %84 = icmp sle i32 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %74
  br label %182

86:                                               ; preds = %82, %77
  %87 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %14, align 8
  %88 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IL_RS_GOOD_RATIO, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %182

93:                                               ; preds = %86
  %94 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %95 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @memcpy(%struct.il_scale_tbl_info* %94, %struct.il_scale_tbl_info* %95, i32 %96)
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %100 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %99, i32 0, i32 4
  %101 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %102 = call i32 @il4965_rs_toggle_antenna(i32 %98, i32* %100, %struct.il_scale_tbl_info* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  store i32 1, i32* %20, align 4
  %105 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %106 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %107 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %105, %struct.il_scale_tbl_info* %106)
  br label %206

108:                                              ; preds = %93
  br label %182

109:                                              ; preds = %60
  %110 = call i32 @D_RATE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %112 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @memcpy(%struct.il_scale_tbl_info* %111, %struct.il_scale_tbl_info* %112, i32 %113)
  %115 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %116 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %115, i32 0, i32 3
  store i32 0, i32* %116, align 4
  %117 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %118 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %119 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %120 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %121 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @il4965_rs_switch_to_siso(%struct.il_priv* %117, %struct.il_lq_sta* %118, %struct.ieee80211_conf* %119, %struct.ieee80211_sta* %120, %struct.il_scale_tbl_info* %121, i32 %122)
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %109
  %127 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %128 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  br label %206

129:                                              ; preds = %109
  br label %182

130:                                              ; preds = %60, %60, %60
  %131 = call i32 @D_RATE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %133 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @memcpy(%struct.il_scale_tbl_info* %132, %struct.il_scale_tbl_info* %133, i32 %134)
  %136 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %137 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %136, i32 0, i32 3
  store i32 0, i32* %137, align 4
  %138 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %139 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 131
  br i1 %141, label %142, label %146

142:                                              ; preds = %130
  %143 = load i32, i32* @ANT_AB, align 4
  %144 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %145 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %160

146:                                              ; preds = %130
  %147 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %148 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 130
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32, i32* @ANT_AC, align 4
  %153 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %154 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %159

155:                                              ; preds = %146
  %156 = load i32, i32* @ANT_BC, align 4
  %157 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %158 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %142
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %163 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @il4965_rs_is_valid_ant(i32 %161, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %182

168:                                              ; preds = %160
  %169 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %170 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %171 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %172 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %173 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @il4965_rs_switch_to_mimo2(%struct.il_priv* %169, %struct.il_lq_sta* %170, %struct.ieee80211_conf* %171, %struct.ieee80211_sta* %172, %struct.il_scale_tbl_info* %173, i32 %174)
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %168
  %179 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %180 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %179, i32 0, i32 2
  store i64 0, i64* %180, align 8
  br label %206

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %60, %181, %167, %129, %108, %92, %85
  %183 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %184 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 8
  %187 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %188 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 129
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %193 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %192, i32 0, i32 0
  store i32 133, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %182
  %195 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %196 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %202

201:                                              ; preds = %194
  br label %60

202:                                              ; preds = %200
  %203 = load i32, i32* @LQ_NONE, align 4
  %204 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %205 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  store i32 0, i32* %6, align 4
  br label %230

206:                                              ; preds = %178, %126, %104
  %207 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %208 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %207, i32 0, i32 1
  store i32 1, i32* %208, align 8
  %209 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %210 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %214 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %215, 129
  br i1 %216, label %217, label %220

217:                                              ; preds = %206
  %218 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %219 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %218, i32 0, i32 0
  store i32 133, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %206
  %221 = load i32, i32* %20, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %225 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %228 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %220
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %229, %202
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @D_RATE(i8*) #1

declare dso_local i32 @memcpy(%struct.il_scale_tbl_info*, %struct.il_scale_tbl_info*, i32) #1

declare dso_local i32 @il4965_rs_toggle_antenna(i32, i32*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_switch_to_siso(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_scale_tbl_info*, i32) #1

declare dso_local i32 @il4965_rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @il4965_rs_switch_to_mimo2(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
