; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_min_txpower_limits_with_local_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_min_txpower_limits_with_local_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { i32 }
%struct.txpwr_limits = type { i8*, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8** }

@WL_TX_POWER_CCK_NUM = common dso_local global i32 0, align 4
@WL_TX_POWER_OFDM_NUM = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_OFDM = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_MCS_1_STREAM = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_MCS_2_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_cm_info*, %struct.txpwr_limits*, i32)* @brcms_c_channel_min_txpower_limits_with_local_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_channel_min_txpower_limits_with_local_constraint(%struct.brcms_cm_info* %0, %struct.txpwr_limits* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_cm_info*, align 8
  %5 = alloca %struct.txpwr_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %4, align 8
  store %struct.txpwr_limits* %1, %struct.txpwr_limits** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @WL_TX_POWER_CCK_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %14 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %13, i32 0, i32 13
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @min(i8* %19, i32 %20)
  %22 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %23 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %22, i32 0, i32 13
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %21, i8** %27, align 8
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @WL_TX_POWER_OFDM_NUM, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %38 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %37, i32 0, i32 12
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @min(i8* %43, i32 %44)
  %46 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %47 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %46, i32 0, i32 12
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %32

55:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %62 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %61, i32 0, i32 11
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i8* @min(i8* %67, i32 %68)
  %70 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %71 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %70, i32 0, i32 11
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %69, i8** %75, align 8
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %56

79:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %100, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %86 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %85, i32 0, i32 10
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i8* @min(i8* %91, i32 %92)
  %94 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %95 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %94, i32 0, i32 10
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %93, i8** %99, align 8
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %80

103:                                              ; preds = %80
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %110 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %109, i32 0, i32 9
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i8* @min(i8* %115, i32 %116)
  %118 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %119 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %118, i32 0, i32 9
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %117, i8** %123, align 8
  br label %124

124:                                              ; preds = %108
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %104

127:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %148, %127
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %134 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %133, i32 0, i32 8
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i8* @min(i8* %139, i32 %140)
  %142 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %143 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %142, i32 0, i32 8
  %144 = load i8**, i8*** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %141, i8** %147, align 8
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %128

151:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %172, %151
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %152
  %157 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %158 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %157, i32 0, i32 7
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i8* @min(i8* %163, i32 %164)
  %166 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %167 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %166, i32 0, i32 7
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %165, i8** %171, align 8
  br label %172

172:                                              ; preds = %156
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %152

175:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %196, %175
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %176
  %181 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %182 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %181, i32 0, i32 6
  %183 = load i8**, i8*** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i8* @min(i8* %187, i32 %188)
  %190 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %191 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %190, i32 0, i32 6
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %189, i8** %195, align 8
  br label %196

196:                                              ; preds = %180
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %176

199:                                              ; preds = %176
  store i32 0, i32* %7, align 4
  br label %200

200:                                              ; preds = %220, %199
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @BRCMS_NUM_RATES_MCS_2_STREAM, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %223

204:                                              ; preds = %200
  %205 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %206 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %205, i32 0, i32 5
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i8* @min(i8* %211, i32 %212)
  %214 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %215 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %214, i32 0, i32 5
  %216 = load i8**, i8*** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  store i8* %213, i8** %219, align 8
  br label %220

220:                                              ; preds = %204
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %200

223:                                              ; preds = %200
  store i32 0, i32* %7, align 4
  br label %224

224:                                              ; preds = %244, %223
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %247

228:                                              ; preds = %224
  %229 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %230 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %229, i32 0, i32 4
  %231 = load i8**, i8*** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i8* @min(i8* %235, i32 %236)
  %238 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %239 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %238, i32 0, i32 4
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  store i8* %237, i8** %243, align 8
  br label %244

244:                                              ; preds = %228
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %224

247:                                              ; preds = %224
  store i32 0, i32* %7, align 4
  br label %248

248:                                              ; preds = %268, %247
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %248
  %253 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %254 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %253, i32 0, i32 3
  %255 = load i8**, i8*** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = call i8* @min(i8* %259, i32 %260)
  %262 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %263 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %262, i32 0, i32 3
  %264 = load i8**, i8*** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  store i8* %261, i8** %267, align 8
  br label %268

268:                                              ; preds = %252
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %248

271:                                              ; preds = %248
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %292, %271
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %295

276:                                              ; preds = %272
  %277 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %278 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %277, i32 0, i32 2
  %279 = load i8**, i8*** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = call i8* @min(i8* %283, i32 %284)
  %286 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %287 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %286, i32 0, i32 2
  %288 = load i8**, i8*** %287, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  store i8* %285, i8** %291, align 8
  br label %292

292:                                              ; preds = %276
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %272

295:                                              ; preds = %272
  store i32 0, i32* %7, align 4
  br label %296

296:                                              ; preds = %316, %295
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @BRCMS_NUM_RATES_MCS_2_STREAM, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %319

300:                                              ; preds = %296
  %301 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %302 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %301, i32 0, i32 1
  %303 = load i8**, i8*** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = call i8* @min(i8* %307, i32 %308)
  %310 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %311 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %310, i32 0, i32 1
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %312, i64 %314
  store i8* %309, i8** %315, align 8
  br label %316

316:                                              ; preds = %300
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %7, align 4
  br label %296

319:                                              ; preds = %296
  %320 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %321 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = call i8* @min(i8* %322, i32 %323)
  %325 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %326 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %325, i32 0, i32 0
  store i8* %324, i8** %326, align 8
  ret void
}

declare dso_local i8* @min(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
