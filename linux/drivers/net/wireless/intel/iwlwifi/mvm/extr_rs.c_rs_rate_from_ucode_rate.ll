; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_from_ucode_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_from_ucode_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_rate = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@IWL_RATE_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@RATE_MCS_HE_MSK = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@LQ_LEGACY_A = common dso_local global i32 0, align 4
@LQ_LEGACY_G = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RATE_MCS_LDPC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_STBC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_BF_MSK = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@RATE_HT_MCS_NSS_MSK = common dso_local global i32 0, align 4
@RATE_HT_MCS_NSS_POS = common dso_local global i32 0, align 4
@LQ_HT_SISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stbc %d bfer %d\00", align 1
@LQ_HT_MIMO2 = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_POS = common dso_local global i32 0, align 4
@LQ_VHT_SISO = common dso_local global i32 0, align 4
@LQ_VHT_MIMO2 = common dso_local global i32 0, align 4
@LQ_HE_SISO = common dso_local global i32 0, align 4
@LQ_HE_MIMO2 = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.rs_rate*)* @rs_rate_from_ucode_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_rate_from_ucode_rate(i32 %0, i32 %1, %struct.rs_rate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rs_rate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.rs_rate* %2, %struct.rs_rate** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_num_of_ant_from_rate(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %17 = call i32 @memset(%struct.rs_rate* %16, i32 0, i32 40)
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @iwl_hwrate_to_plcp_idx(i32 %18)
  %20 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %21 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %23 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_RATE_INVALID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %290

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %33 = ashr i32 %31, %32
  %34 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %35 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @LQ_LEGACY_A, align 4
  %59 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %60 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @LQ_LEGACY_G, align 4
  %63 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %64 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %50
  store i32 0, i32* %4, align 4
  br label %290

67:                                               ; preds = %45, %40, %30
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %74 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @RATE_MCS_LDPC_MSK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %82 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %90 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %89, i32 0, i32 4
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @RATE_MCS_BF_MSK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %98 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %97, i32 0, i32 5
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %104 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %159

109:                                              ; preds = %99
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @RATE_HT_MCS_NSS_MSK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @RATE_HT_MCS_NSS_POS, align 4
  %114 = ashr i32 %112, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %144

118:                                              ; preds = %109
  %119 = load i32, i32* @LQ_HT_SISO, align 4
  %120 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %121 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  %122 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %123 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %128 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 1
  br label %134

134:                                              ; preds = %131, %126, %118
  %135 = phi i1 [ false, %126 ], [ false, %118 ], [ %133, %131 ]
  %136 = zext i1 %135 to i32
  %137 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %138 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %141 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @WARN_ONCE(i32 %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %142)
  br label %158

144:                                              ; preds = %109
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32, i32* @LQ_HT_MIMO2, align 4
  %149 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %150 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 2
  %153 = zext i1 %152 to i32
  %154 = call i32 @WARN_ON_ONCE(i32 %153)
  br label %157

155:                                              ; preds = %144
  %156 = call i32 @WARN_ON_ONCE(i32 1)
  br label %157

157:                                              ; preds = %155, %147
  br label %158

158:                                              ; preds = %157, %134
  br label %271

159:                                              ; preds = %99
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %214

164:                                              ; preds = %159
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %169 = ashr i32 %167, %168
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %199

173:                                              ; preds = %164
  %174 = load i32, i32* @LQ_VHT_SISO, align 4
  %175 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %176 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 8
  %177 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %178 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %183 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 1
  br label %189

189:                                              ; preds = %186, %181, %173
  %190 = phi i1 [ false, %181 ], [ false, %173 ], [ %188, %186 ]
  %191 = zext i1 %190 to i32
  %192 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %193 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %196 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @WARN_ONCE(i32 %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %197)
  br label %213

199:                                              ; preds = %164
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* @LQ_VHT_MIMO2, align 4
  %204 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %205 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 2
  %208 = zext i1 %207 to i32
  %209 = call i32 @WARN_ON_ONCE(i32 %208)
  br label %212

210:                                              ; preds = %199
  %211 = call i32 @WARN_ON_ONCE(i32 1)
  br label %212

212:                                              ; preds = %210, %202
  br label %213

213:                                              ; preds = %212, %189
  br label %270

214:                                              ; preds = %159
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %269

219:                                              ; preds = %214
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %224 = ashr i32 %222, %223
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %254

228:                                              ; preds = %219
  %229 = load i32, i32* @LQ_HE_SISO, align 4
  %230 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %231 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %230, i32 0, i32 7
  store i32 %229, i32* %231, align 8
  %232 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %233 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %228
  %237 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %238 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 1
  br label %244

244:                                              ; preds = %241, %236, %228
  %245 = phi i1 [ false, %236 ], [ false, %228 ], [ %243, %241 ]
  %246 = zext i1 %245 to i32
  %247 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %248 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %251 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @WARN_ONCE(i32 %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %249, i32 %252)
  br label %268

254:                                              ; preds = %219
  %255 = load i32, i32* %10, align 4
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = load i32, i32* @LQ_HE_MIMO2, align 4
  %259 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %260 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %259, i32 0, i32 7
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 2
  %263 = zext i1 %262 to i32
  %264 = call i32 @WARN_ON_ONCE(i32 %263)
  br label %267

265:                                              ; preds = %254
  %266 = call i32 @WARN_ON_ONCE(i32 1)
  br label %267

267:                                              ; preds = %265, %257
  br label %268

268:                                              ; preds = %267, %244
  br label %269

269:                                              ; preds = %268, %214
  br label %270

270:                                              ; preds = %269, %213
  br label %271

271:                                              ; preds = %270, %158
  %272 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %273 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @RATE_MCS_CHAN_WIDTH_80, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %286

277:                                              ; preds = %271
  %278 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %279 = call i32 @is_he(%struct.rs_rate* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %277
  %282 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %283 = call i32 @is_vht(%struct.rs_rate* %282)
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  br label %286

286:                                              ; preds = %281, %277, %271
  %287 = phi i1 [ false, %277 ], [ false, %271 ], [ %285, %281 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @WARN_ON_ONCE(i32 %288)
  store i32 0, i32* %4, align 4
  br label %290

290:                                              ; preds = %286, %66, %27
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @get_num_of_ant_from_rate(i32) #1

declare dso_local i32 @memset(%struct.rs_rate*, i32, i32) #1

declare dso_local i64 @iwl_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_he(%struct.rs_rate*) #1

declare dso_local i32 @is_vht(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
