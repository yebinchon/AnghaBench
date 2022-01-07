; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_move_legacy_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_move_legacy_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i64, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid BT load %d\0A\00", align 1
@IWL_ANT_OK_SINGLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"LQ: Legacy toggle Antenna\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"LQ: Legacy switch to SISO\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @rs_move_legacy_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_move_legacy_other(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca %struct.iwl_scale_tbl_info*, align 8
  %13 = alloca %struct.iwl_rate_scale_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %20, i32 0, i32 3
  %22 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %21, align 8
  %23 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %22, i64 %25
  store %struct.iwl_scale_tbl_info* %26, %struct.iwl_scale_tbl_info** %11, align 8
  %27 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %27, i32 0, i32 3
  %29 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %28, align 8
  %30 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 1, %32
  %34 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %29, i64 %33
  store %struct.iwl_scale_tbl_info* %34, %struct.iwl_scale_tbl_info** %12, align 8
  %35 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %36 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %35, i32 0, i32 5
  %37 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %37, i64 %39
  store %struct.iwl_rate_scale_data* %40, %struct.iwl_rate_scale_data** %13, align 8
  %41 = load i32, i32* @IWL_RATE_COUNT, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = sub i64 32, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %88 [
    i32 135, label %58
    i32 136, label %59
    i32 137, label %68
    i32 138, label %68
  ]

58:                                               ; preds = %5
  br label %94

59:                                               ; preds = %5
  %60 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %61 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 133
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %66 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %65, i32 0, i32 0
  store i32 128, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  br label %94

68:                                               ; preds = %5, %5
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @first_antenna(i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %76 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 133
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %81 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 128
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %86 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %85, i32 0, i32 0
  store i32 128, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %79, %68
  br label %94

88:                                               ; preds = %5
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %90 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %91 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @IWL_ERR(%struct.iwl_priv* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %87, %67, %58
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %96 = call i32 @iwl_ht_enabled(%struct.iwl_priv* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %100 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %99, i32 0, i32 0
  store i32 134, i32* %100, align 8
  br label %115

101:                                              ; preds = %94
  %102 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %103 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %102)
  %104 = load i64, i64* @IWL_ANT_OK_SINGLE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %108 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 128
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %113 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %112, i32 0, i32 0
  store i32 128, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %106, %101
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %122 = call i32 @iwl_ht_enabled(%struct.iwl_priv* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %126 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %125, i32 0, i32 0
  store i32 134, i32* %126, align 8
  br label %136

127:                                              ; preds = %120
  %128 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %129 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %130, 133
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %134 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %133, i32 0, i32 0
  store i32 128, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %124
  %137 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %138 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @first_antenna(i32 %141)
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %136, %115
  %144 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %145 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %334, %143
  %148 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %149 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %153 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %315 [
    i32 134, label %155
    i32 133, label %155
    i32 128, label %207
    i32 132, label %229
    i32 131, label %229
    i32 130, label %229
    i32 129, label %282
  ]

155:                                              ; preds = %147, %147
  %156 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %157 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %159 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 134
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* %17, align 4
  %164 = icmp sle i32 %163, 1
  br i1 %164, label %173, label %165

165:                                              ; preds = %162, %155
  %166 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %167 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 133
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* %17, align 4
  %172 = icmp sle i32 %171, 2
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %162
  br label %315

174:                                              ; preds = %170, %165
  %175 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %13, align 8
  %176 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %182 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %180
  %186 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %187 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 135
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %315

191:                                              ; preds = %185, %180, %174
  %192 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %193 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %192, %struct.iwl_scale_tbl_info* %193, i32 %194)
  %196 = load i32, i32* %16, align 4
  %197 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %198 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %197, i32 0, i32 4
  %199 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %200 = call i32 @rs_toggle_antenna(i32 %196, i32* %198, %struct.iwl_scale_tbl_info* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  store i32 1, i32* %19, align 4
  %203 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %204 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %205 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %203, %struct.iwl_scale_tbl_info* %204)
  br label %339

206:                                              ; preds = %191
  br label %315

207:                                              ; preds = %147
  %208 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %209 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %208, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %210 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %211 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %210, %struct.iwl_scale_tbl_info* %211, i32 %212)
  %214 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %215 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %214, i32 0, i32 3
  store i32 0, i32* %215, align 4
  %216 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %217 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %218 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %219 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %220 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @rs_switch_to_siso(%struct.iwl_priv* %216, %struct.iwl_lq_sta* %217, %struct.ieee80211_conf* %218, %struct.ieee80211_sta* %219, %struct.iwl_scale_tbl_info* %220, i32 %221)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %207
  %226 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %227 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %226, i32 0, i32 2
  store i64 0, i64* %227, align 8
  br label %339

228:                                              ; preds = %207
  br label %315

229:                                              ; preds = %147, %147, %147
  %230 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %231 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %232 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %233 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %232, %struct.iwl_scale_tbl_info* %233, i32 %234)
  %236 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %237 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %236, i32 0, i32 3
  store i32 0, i32* %237, align 4
  %238 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %239 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 132
  br i1 %241, label %242, label %246

242:                                              ; preds = %229
  %243 = load i32, i32* @ANT_AB, align 4
  %244 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %245 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  br label %260

246:                                              ; preds = %229
  %247 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %248 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 131
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i32, i32* @ANT_AC, align 4
  %253 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %254 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  br label %259

255:                                              ; preds = %246
  %256 = load i32, i32* @ANT_BC, align 4
  %257 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %258 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %255, %251
  br label %260

260:                                              ; preds = %259, %242
  %261 = load i32, i32* %16, align 4
  %262 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %263 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @rs_is_valid_ant(i32 %261, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %260
  br label %315

268:                                              ; preds = %260
  %269 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %270 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %271 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %272 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %273 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @rs_switch_to_mimo2(%struct.iwl_priv* %269, %struct.iwl_lq_sta* %270, %struct.ieee80211_conf* %271, %struct.ieee80211_sta* %272, %struct.iwl_scale_tbl_info* %273, i32 %274)
  store i32 %275, i32* %18, align 4
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %268
  %279 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %280 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  br label %339

281:                                              ; preds = %268
  br label %315

282:                                              ; preds = %147
  %283 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %284 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %283, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %285 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %286 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %285, %struct.iwl_scale_tbl_info* %286, i32 %287)
  %289 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %290 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %289, i32 0, i32 3
  store i32 0, i32* %290, align 4
  %291 = load i32, i32* @ANT_ABC, align 4
  %292 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %293 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %296 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @rs_is_valid_ant(i32 %294, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %282
  br label %315

301:                                              ; preds = %282
  %302 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %303 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %304 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %305 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %306 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %307 = load i32, i32* %10, align 4
  %308 = call i32 @rs_switch_to_mimo3(%struct.iwl_priv* %302, %struct.iwl_lq_sta* %303, %struct.ieee80211_conf* %304, %struct.ieee80211_sta* %305, %struct.iwl_scale_tbl_info* %306, i32 %307)
  store i32 %308, i32* %18, align 4
  %309 = load i32, i32* %18, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %301
  %312 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %313 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %312, i32 0, i32 2
  store i64 0, i64* %313, align 8
  br label %339

314:                                              ; preds = %301
  br label %315

315:                                              ; preds = %147, %314, %300, %281, %267, %228, %206, %190, %173
  %316 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %317 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 8
  %320 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %321 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp sgt i32 %322, 129
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %326 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %325, i32 0, i32 0
  store i32 134, i32* %326, align 8
  br label %327

327:                                              ; preds = %324, %315
  %328 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %329 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %15, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %327
  br label %335

334:                                              ; preds = %327
  br label %147

335:                                              ; preds = %333
  %336 = load i32, i32* @LQ_NONE, align 4
  %337 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %338 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  br label %362

339:                                              ; preds = %311, %278, %225, %202
  %340 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %341 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %340, i32 0, i32 1
  store i32 1, i32* %341, align 8
  %342 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %343 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 8
  %346 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %347 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp sgt i32 %348, 129
  br i1 %349, label %350, label %353

350:                                              ; preds = %339
  %351 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %352 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %351, i32 0, i32 0
  store i32 134, i32* %352, align 8
  br label %353

353:                                              ; preds = %350, %339
  %354 = load i32, i32* %19, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %358 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %361 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 8
  br label %362

362:                                              ; preds = %335, %356, %353
  ret void
}

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_ht_enabled(%struct.iwl_priv*) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
