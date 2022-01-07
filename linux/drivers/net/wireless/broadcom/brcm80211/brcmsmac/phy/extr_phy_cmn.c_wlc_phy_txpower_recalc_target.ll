; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_recalc_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_recalc_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i64*, i64*, i32, i64*, i64*, i64, i64, i64, i64*, %struct.TYPE_2__, i32, i64, i64, i64*, i32 }
%struct.TYPE_2__ = type { void (%struct.brcms_phy.0*)* }
%struct.brcms_phy.0 = type opaque
%struct.brcms_phy_pub = type { i32 }

@TXP_NUM_RATES = common dso_local global i32 0, align 4
@WL_CHANSPEC_CTL_SB_NONE = common dso_local global i64 0, align 8
@WL_CHANSPEC_CTL_SB_UPPER = common dso_local global i64 0, align 8
@TXP_FIRST_SISO_MCS_20 = common dso_local global i32 0, align 4
@TXP_LAST_SISO_MCS_20 = common dso_local global i32 0, align 4
@TXP_LAST_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_recalc_target(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (%struct.brcms_phy*)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %20 = load i32, i32* @TXP_NUM_RATES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 255, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 16
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @CHSPEC2BAND(i32 %26)
  store i32 %27, i32* %16, align 4
  store void (%struct.brcms_phy*)* null, void (%struct.brcms_phy*)** %17, align 8
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @CHSPEC_CTL_SB(i32 %31)
  %33 = load i64, i64* @WL_CHANSPEC_CTL_SB_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @CHSPEC_CHANNEL(i32 %36)
  store i32 %37, i32* %7, align 4
  br label %52

38:                                               ; preds = %1
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @CHSPEC_CTL_SB(i32 %39)
  %41 = load i64, i64* @WL_CHANSPEC_CTL_SB_UPPER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @CHSPEC_CHANNEL(i32 %44)
  %46 = call i32 @upper_20_sb(i32 %45)
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @CHSPEC_CHANNEL(i32 %48)
  %50 = call i32 @lower_20_sb(i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %35
  store i64 0, i64* %6, align 8
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = call i64 @ISLCNPHY(%struct.brcms_phy* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %52
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @CHSPEC_IS40(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* @TXP_FIRST_SISO_MCS_20, align 4
  store i32 %66, i32* %19, align 4
  br label %67

67:                                               ; preds = %89, %62
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @TXP_LAST_SISO_MCS_20, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 14
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = and i32 %75, 15
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %74, %78
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 15
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sub nsw i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 %79, i64* %86, align 8
  %87 = load i32, i32* %18, align 4
  %88 = ashr i32 %87, 4
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %19, align 4
  br label %67

92:                                               ; preds = %67
  br label %124

93:                                               ; preds = %56
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* @TXP_FIRST_SISO_MCS_20, align 4
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %120, %93
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @TXP_LAST_SISO_MCS_20, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %98
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %103, i32 0, i32 14
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %106, 15
  %108 = mul nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %105, %109
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 15
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sub nsw i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  store i64 %110, i64* %117, align 8
  %118 = load i32, i32* %18, align 4
  %119 = ashr i32 %118, 4
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %102
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %98

123:                                              ; preds = %98
  br label %124

124:                                              ; preds = %123, %92
  br label %125

125:                                              ; preds = %124, %52
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %127 = call i64 @ISNPHY(%struct.brcms_phy* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @TXP_NUM_RATES, align 4
  br label %143

131:                                              ; preds = %125
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = call i64 @ISLCNPHY(%struct.brcms_phy* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @TXP_LAST_SISO_MCS_20, align 4
  %137 = add nsw i32 %136, 1
  br label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @TXP_LAST_OFDM, align 4
  %140 = add nsw i32 %139, 1
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i32 [ %137, %135 ], [ %140, %138 ]
  br label %143

143:                                              ; preds = %141, %129
  %144 = phi i32 [ %130, %129 ], [ %142, %141 ]
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %13, align 8
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @wlc_phy_upd_env_txpwr_rate_limits(%struct.brcms_phy* %146, i32 %147)
  %149 = load i64, i64* %14, align 8
  store i64 %149, i64* %5, align 8
  br label %150

150:                                              ; preds = %262, %143
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* %13, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %265

154:                                              ; preds = %150
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %156 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds i64, i64* %23, i64 %161
  store i64 %160, i64* %162, align 8
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %163, i32 0, i32 13
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %154
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i64, i64* %5, align 8
  %172 = call i64 @wlc_user_txpwr_antport_to_rfport(%struct.brcms_phy* %168, i32 %169, i32 %170, i64 %171)
  %173 = load i64, i64* %5, align 8
  %174 = getelementptr inbounds i64, i64* %23, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, %172
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %167, %154
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = bitcast %struct.brcms_phy* %178 to %struct.brcms_phy_pub*
  %180 = load i32, i32* %7, align 4
  %181 = load i64, i64* %5, align 8
  %182 = call i32 @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub* %179, i32 %180, i64* %4, i64* %3, i64 %181)
  %183 = load i64, i64* %3, align 8
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %185 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @min(i64 %183, i64 %189)
  store i64 %190, i64* %3, align 8
  %191 = load i64, i64* %3, align 8
  %192 = load i64, i64* %6, align 8
  %193 = icmp ugt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %177
  %195 = load i64, i64* %3, align 8
  %196 = load i64, i64* %6, align 8
  %197 = sub i64 %195, %196
  br label %199

198:                                              ; preds = %177
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi i64 [ %197, %194 ], [ 0, %198 ]
  store i64 %200, i64* %3, align 8
  %201 = load i64, i64* %3, align 8
  %202 = icmp ugt i64 %201, 6
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i64, i64* %3, align 8
  %205 = sub i64 %204, 6
  br label %207

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206, %203
  %208 = phi i64 [ %205, %203 ], [ 0, %206 ]
  store i64 %208, i64* %3, align 8
  %209 = load i64, i64* %3, align 8
  %210 = load i64, i64* %5, align 8
  %211 = getelementptr inbounds i64, i64* %23, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @min(i64 %209, i64 %212)
  store i64 %213, i64* %3, align 8
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %215 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp sle i32 %216, 100
  br i1 %217, label %218, label %226

218:                                              ; preds = %207
  %219 = load i64, i64* %3, align 8
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %221 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = mul i64 %219, %223
  %225 = udiv i64 %224, 100
  store i64 %225, i64* %3, align 8
  br label %226

226:                                              ; preds = %218, %207
  %227 = load i64, i64* %3, align 8
  %228 = load i64, i64* %4, align 8
  %229 = call i64 @max(i64 %227, i64 %228)
  %230 = load i64, i64* %5, align 8
  %231 = getelementptr inbounds i64, i64* %23, i64 %230
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %5, align 8
  %233 = getelementptr inbounds i64, i64* %23, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %235, i32 0, i32 5
  %237 = load i64*, i64** %236, align 8
  %238 = load i64, i64* %5, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @min(i64 %234, i64 %240)
  %242 = load i64, i64* %5, align 8
  %243 = getelementptr inbounds i64, i64* %23, i64 %242
  store i64 %241, i64* %243, align 8
  %244 = load i64, i64* %5, align 8
  %245 = getelementptr inbounds i64, i64* %23, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %10, align 8
  %248 = icmp ugt i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %226
  %250 = load i64, i64* %5, align 8
  store i64 %250, i64* %12, align 8
  br label %251

251:                                              ; preds = %249, %226
  %252 = load i64, i64* %10, align 8
  %253 = load i64, i64* %5, align 8
  %254 = getelementptr inbounds i64, i64* %23, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = call i64 @max(i64 %252, i64 %255)
  store i64 %256, i64* %10, align 8
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* %5, align 8
  %259 = getelementptr inbounds i64, i64* %23, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @min(i64 %257, i64 %260)
  store i64 %261, i64* %11, align 8
  br label %262

262:                                              ; preds = %251
  %263 = load i64, i64* %5, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %5, align 8
  br label %150

265:                                              ; preds = %150
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %267 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %266, i32 0, i32 6
  %268 = load i64*, i64** %267, align 8
  %269 = call i32 @memset(i64* %268, i32 0, i32 8)
  %270 = load i64, i64* %10, align 8
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %272 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %271, i32 0, i32 7
  store i64 %270, i64* %272, align 8
  %273 = load i64, i64* %11, align 8
  %274 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %275 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %274, i32 0, i32 8
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* %12, align 8
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %277, i32 0, i32 9
  store i64 %276, i64* %278, align 8
  store i64 0, i64* %5, align 8
  br label %279

279:                                              ; preds = %333, %265
  %280 = load i64, i64* %5, align 8
  %281 = load i64, i64* %13, align 8
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %336

283:                                              ; preds = %279
  %284 = load i64, i64* %5, align 8
  %285 = getelementptr inbounds i64, i64* %23, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %288 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %287, i32 0, i32 10
  %289 = load i64*, i64** %288, align 8
  %290 = load i64, i64* %5, align 8
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  store i64 %286, i64* %291, align 8
  %292 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %293 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %292, i32 0, i32 12
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %283
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %298 = call i64 @ISNPHY(%struct.brcms_phy* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %296, %283
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %302 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %301, i32 0, i32 7
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %305 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %304, i32 0, i32 10
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* %5, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = sub i64 %303, %309
  %311 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %312 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %311, i32 0, i32 6
  %313 = load i64*, i64** %312, align 8
  %314 = load i64, i64* %5, align 8
  %315 = getelementptr inbounds i64, i64* %313, i64 %314
  store i64 %310, i64* %315, align 8
  br label %332

316:                                              ; preds = %296
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %318 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %317, i32 0, i32 10
  %319 = load i64*, i64** %318, align 8
  %320 = load i64, i64* %5, align 8
  %321 = getelementptr inbounds i64, i64* %319, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %324 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %323, i32 0, i32 8
  %325 = load i64, i64* %324, align 8
  %326 = sub i64 %322, %325
  %327 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %328 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %327, i32 0, i32 6
  %329 = load i64*, i64** %328, align 8
  %330 = load i64, i64* %5, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  store i64 %326, i64* %331, align 8
  br label %332

332:                                              ; preds = %316, %300
  br label %333

333:                                              ; preds = %332
  %334 = load i64, i64* %5, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %5, align 8
  br label %279

336:                                              ; preds = %279
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %338 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %337, i32 0, i32 11
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 0
  %340 = load void (%struct.brcms_phy.0*)*, void (%struct.brcms_phy.0*)** %339, align 8
  %341 = bitcast void (%struct.brcms_phy.0*)* %340 to void (%struct.brcms_phy*)*
  store void (%struct.brcms_phy*)* %341, void (%struct.brcms_phy*)** %17, align 8
  %342 = load void (%struct.brcms_phy*)*, void (%struct.brcms_phy*)** %17, align 8
  %343 = icmp ne void (%struct.brcms_phy*)* %342, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %336
  %345 = load void (%struct.brcms_phy*)*, void (%struct.brcms_phy*)** %17, align 8
  %346 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  call void %345(%struct.brcms_phy* %346)
  br label %347

347:                                              ; preds = %344, %336
  %348 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %348)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CHSPEC2BAND(i32) #2

declare dso_local i64 @CHSPEC_CTL_SB(i32) #2

declare dso_local i32 @CHSPEC_CHANNEL(i32) #2

declare dso_local i32 @upper_20_sb(i32) #2

declare dso_local i32 @lower_20_sb(i32) #2

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_upd_env_txpwr_rate_limits(%struct.brcms_phy*, i32) #2

declare dso_local i64 @wlc_user_txpwr_antport_to_rfport(%struct.brcms_phy*, i32, i32, i64) #2

declare dso_local i32 @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub*, i32, i64*, i64*, i64) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i64 @max(i64, i64) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
