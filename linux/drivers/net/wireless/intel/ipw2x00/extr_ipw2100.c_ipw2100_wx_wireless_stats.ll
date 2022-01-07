; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i8* }
%struct.net_device = type { i32 }
%struct.ipw2100_priv = type { i32, %struct.iw_statistics }

@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@IPW_ORD_STAT_PERCENT_MISSED_BCNS = common dso_local global i32 0, align 4
@IPW_ORD_RSSI_AVG_CURR = common dso_local global i32 0, align 4
@IPW2100_RSSI_TO_DBM = common dso_local global i8* null, align 8
@IPW_ORD_STAT_PERCENT_RETRIES = common dso_local global i32 0, align 4
@IPW_ORD_STAT_TX_FAILURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed querying ordinals.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @ipw2100_wx_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @ipw2100_wx_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw2100_priv*, align 8
  %9 = alloca %struct.iw_statistics*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %15)
  store %struct.ipw2100_priv* %16, %struct.ipw2100_priv** %8, align 8
  store i32 4, i32* %14, align 4
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %18 = icmp ne %struct.ipw2100_priv* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  br label %277

20:                                               ; preds = %1
  %21 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %21, i32 0, i32 1
  store %struct.iw_statistics* %22, %struct.iw_statistics** %9, align 8
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %20
  %30 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %31 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %34 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %37 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %40 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i8* null, i8** %41, align 8
  %42 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %43 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %46 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 7, i32* %47, align 4
  %48 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %49 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %54 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  store %struct.iw_statistics* %58, %struct.iw_statistics** %2, align 8
  br label %277

59:                                               ; preds = %20
  %60 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %61 = load i32, i32* @IPW_ORD_STAT_PERCENT_MISSED_BCNS, align 4
  %62 = call i64 @ipw2100_get_ordinal(%struct.ipw2100_priv* %60, i32 %61, i32* %12, i32* %14)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %275

65:                                               ; preds = %59
  %66 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %67 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %74 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %77 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i8* null, i8** %78, align 8
  br label %247

79:                                               ; preds = %65
  %80 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %81 = load i32, i32* @IPW_ORD_RSSI_AVG_CURR, align 4
  %82 = call i64 @ipw2100_get_ordinal(%struct.ipw2100_priv* %80, i32 %81, i32* %10, i32* %14)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %275

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = load i8*, i8** @IPW2100_RSSI_TO_DBM, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %91 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 10
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %96, 30
  %98 = sdiv i32 %97, 10
  store i32 %98, i32* %4, align 4
  br label %135

99:                                               ; preds = %85
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 15
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 10
  %105 = mul nsw i32 %104, 30
  %106 = sdiv i32 %105, 5
  %107 = add nsw i32 %106, 30
  store i32 %107, i32* %4, align 4
  br label %134

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 20
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %112, 15
  %114 = mul nsw i32 %113, 20
  %115 = sdiv i32 %114, 5
  %116 = add nsw i32 %115, 60
  store i32 %116, i32* %4, align 4
  br label %133

117:                                              ; preds = %108
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 30
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 20
  %123 = mul nsw i32 %122, 10
  %124 = sdiv i32 %123, 10
  %125 = add nsw i32 %124, 80
  store i32 %125, i32* %4, align 4
  br label %132

126:                                              ; preds = %117
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 30
  %129 = mul nsw i32 %128, 10
  %130 = sdiv i32 %129, 10
  %131 = add nsw i32 %130, 90
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %126, %120
  br label %133

133:                                              ; preds = %132, %111
  br label %134

134:                                              ; preds = %133, %102
  br label %135

135:                                              ; preds = %134, %95
  %136 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %137 = load i32, i32* @IPW_ORD_STAT_PERCENT_RETRIES, align 4
  %138 = call i64 @ipw2100_get_ordinal(%struct.ipw2100_priv* %136, i32 %137, i32* %11, i32* %14)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %275

141:                                              ; preds = %135
  %142 = load i32, i32* %11, align 4
  %143 = icmp sgt i32 %142, 75
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 90, %145
  %147 = mul nsw i32 %146, 30
  %148 = sdiv i32 %147, 15
  store i32 %148, i32* %5, align 4
  br label %185

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  %151 = icmp sgt i32 %150, 70
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 75, %153
  %155 = mul nsw i32 %154, 30
  %156 = sdiv i32 %155, 5
  %157 = add nsw i32 %156, 30
  store i32 %157, i32* %5, align 4
  br label %184

158:                                              ; preds = %149
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %159, 65
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 70, %162
  %164 = mul nsw i32 %163, 20
  %165 = sdiv i32 %164, 5
  %166 = add nsw i32 %165, 60
  store i32 %166, i32* %5, align 4
  br label %183

167:                                              ; preds = %158
  %168 = load i32, i32* %11, align 4
  %169 = icmp sgt i32 %168, 50
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 65, %171
  %173 = mul nsw i32 %172, 10
  %174 = sdiv i32 %173, 15
  %175 = add nsw i32 %174, 80
  store i32 %175, i32* %5, align 4
  br label %182

176:                                              ; preds = %167
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 50, %177
  %179 = mul nsw i32 %178, 10
  %180 = sdiv i32 %179, 50
  %181 = add nsw i32 %180, 90
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %176, %170
  br label %183

183:                                              ; preds = %182, %161
  br label %184

184:                                              ; preds = %183, %152
  br label %185

185:                                              ; preds = %184, %144
  %186 = load i32, i32* %12, align 4
  %187 = icmp sgt i32 %186, 50
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %12, align 4
  %190 = sub nsw i32 60, %189
  %191 = mul nsw i32 %190, 30
  %192 = sdiv i32 %191, 10
  store i32 %192, i32* %6, align 4
  br label %229

193:                                              ; preds = %185
  %194 = load i32, i32* %12, align 4
  %195 = icmp sgt i32 %194, 40
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32, i32* %12, align 4
  %198 = sub nsw i32 50, %197
  %199 = mul nsw i32 %198, 30
  %200 = sdiv i32 %199, 10
  %201 = add nsw i32 %200, 30
  store i32 %201, i32* %6, align 4
  br label %228

202:                                              ; preds = %193
  %203 = load i32, i32* %12, align 4
  %204 = icmp sgt i32 %203, 32
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32, i32* %12, align 4
  %207 = sub nsw i32 40, %206
  %208 = mul nsw i32 %207, 20
  %209 = sdiv i32 %208, 18
  %210 = add nsw i32 %209, 60
  store i32 %210, i32* %6, align 4
  br label %227

211:                                              ; preds = %202
  %212 = load i32, i32* %12, align 4
  %213 = icmp sgt i32 %212, 20
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* %12, align 4
  %216 = sub nsw i32 32, %215
  %217 = mul nsw i32 %216, 10
  %218 = sdiv i32 %217, 20
  %219 = add nsw i32 %218, 80
  store i32 %219, i32* %6, align 4
  br label %226

220:                                              ; preds = %211
  %221 = load i32, i32* %12, align 4
  %222 = sub nsw i32 20, %221
  %223 = mul nsw i32 %222, 10
  %224 = sdiv i32 %223, 20
  %225 = add nsw i32 %224, 90
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %220, %214
  br label %227

227:                                              ; preds = %226, %205
  br label %228

228:                                              ; preds = %227, %196
  br label %229

229:                                              ; preds = %228, %188
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @min(i32 %230, i32 %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @min(i32 %233, i32 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %238 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i8*, i8** @IPW2100_RSSI_TO_DBM, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr i8, i8* %241, i64 %242
  %244 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %245 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  store i8* %243, i8** %246, align 8
  br label %247

247:                                              ; preds = %229, %72
  %248 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %249 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %252 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  store i32 7, i32* %253, align 4
  %254 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %255 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %256 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %254
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %262 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 4
  %264 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %265 = load i32, i32* @IPW_ORD_STAT_TX_FAILURES, align 4
  %266 = call i64 @ipw2100_get_ordinal(%struct.ipw2100_priv* %264, i32 %265, i32* %13, i32* %14)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %247
  br label %275

269:                                              ; preds = %247
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  %272 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load %struct.iw_statistics*, %struct.iw_statistics** %9, align 8
  store %struct.iw_statistics* %274, %struct.iw_statistics** %2, align 8
  br label %277

275:                                              ; preds = %268, %140, %84, %64
  %276 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  br label %277

277:                                              ; preds = %275, %269, %29, %19
  %278 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %278
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i64 @ipw2100_get_ordinal(%struct.ipw2100_priv*, i32, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
