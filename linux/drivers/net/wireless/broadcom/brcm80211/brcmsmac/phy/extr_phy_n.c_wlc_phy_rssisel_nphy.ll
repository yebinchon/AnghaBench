; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssisel_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssisel_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@RADIO_MIMO_CORESEL_OFF = common dso_local global i64 0, align 8
@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i64 0, align 8
@PHY_CORE_0 = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_W1 = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_W2 = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_NB = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_TBD = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_IQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_rssisel_nphy(%struct.brcms_phy* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @NREV_GE(i32 %26, i32 3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %236

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @RADIO_MIMO_CORESEL_OFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %35 = call i32 @mod_phy_reg(%struct.brcms_phy* %34, i32 143, i32 512, i32 0)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %37 = call i32 @mod_phy_reg(%struct.brcms_phy* %36, i32 165, i32 512, i32 0)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %39 = call i32 @mod_phy_reg(%struct.brcms_phy* %38, i32 166, i32 768, i32 0)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %41 = call i32 @mod_phy_reg(%struct.brcms_phy* %40, i32 167, i32 768, i32 0)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %43 = call i32 @mod_phy_reg(%struct.brcms_phy* %42, i32 229, i32 32, i32 0)
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %45 = call i32 @mod_phy_reg(%struct.brcms_phy* %44, i32 230, i32 32, i32 0)
  store i32 60, i32* %7, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mod_phy_reg(%struct.brcms_phy* %46, i32 249, i32 %47, i32 0)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @mod_phy_reg(%struct.brcms_phy* %49, i32 251, i32 %50, i32 0)
  br label %235

52:                                               ; preds = %29
  store i64 0, i64* %22, align 8
  br label %53

53:                                               ; preds = %231, %52
  %54 = load i64, i64* %22, align 8
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %234

60:                                               ; preds = %53
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* @PHY_CORE_1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %231

69:                                               ; preds = %64, %60
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* %22, align 8
  %75 = load i64, i64* @PHY_CORE_0, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %231

78:                                               ; preds = %73, %69
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load i64, i64* @PHY_CORE_0, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 143, i32 165
  %86 = call i32 @mod_phy_reg(%struct.brcms_phy* %80, i32 %85, i32 512, i32 512)
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %79
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %152

98:                                               ; preds = %94, %90, %79
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* @PHY_CORE_0, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 166, i32 167
  %105 = call i32 @mod_phy_reg(%struct.brcms_phy* %99, i32 %104, i32 768, i32 0)
  store i32 60, i32* %7, align 4
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* @PHY_CORE_0, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 249, i32 251
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @mod_phy_reg(%struct.brcms_phy* %106, i32 %111, i32 %112, i32 0)
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %98
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @CHSPEC_IS5G(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 4, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %125

124:                                              ; preds = %117
  store i32 8, i32* %7, align 4
  store i32 8, i32* %8, align 4
  br label %125

125:                                              ; preds = %124, %123
  br label %133

126:                                              ; preds = %98
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  br label %132

131:                                              ; preds = %126
  store i32 32, i32* %7, align 4
  store i32 32, i32* %8, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %125
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* @PHY_CORE_0, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 249, i32 251
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @mod_phy_reg(%struct.brcms_phy* %134, i32 %139, i32 %140, i32 %141)
  store i32 32, i32* %7, align 4
  store i32 32, i32* %8, align 4
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* @PHY_CORE_0, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 229, i32 230
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @mod_phy_reg(%struct.brcms_phy* %143, i32 %148, i32 %149, i32 %150)
  br label %230

152:                                              ; preds = %94
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @NPHY_RSSI_SEL_TBD, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %152
  store i32 768, i32* %7, align 4
  store i32 256, i32* %8, align 4
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %158 = load i64, i64* %22, align 8
  %159 = load i64, i64* @PHY_CORE_0, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 166, i32 167
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @mod_phy_reg(%struct.brcms_phy* %157, i32 %162, i32 %163, i32 %164)
  store i32 3072, i32* %7, align 4
  store i32 1024, i32* %8, align 4
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %167 = load i64, i64* %22, align 8
  %168 = load i64, i64* @PHY_CORE_0, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 166, i32 167
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @mod_phy_reg(%struct.brcms_phy* %166, i32 %171, i32 %172, i32 %173)
  br label %229

175:                                              ; preds = %152
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @NPHY_RSSI_SEL_IQ, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %175
  store i32 768, i32* %7, align 4
  store i32 512, i32* %8, align 4
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %181 = load i64, i64* %22, align 8
  %182 = load i64, i64* @PHY_CORE_0, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 166, i32 167
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @mod_phy_reg(%struct.brcms_phy* %180, i32 %185, i32 %186, i32 %187)
  store i32 3072, i32* %7, align 4
  store i32 2048, i32* %8, align 4
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %190 = load i64, i64* %22, align 8
  %191 = load i64, i64* @PHY_CORE_0, align 8
  %192 = icmp eq i64 %190, %191
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 166, i32 167
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @mod_phy_reg(%struct.brcms_phy* %189, i32 %194, i32 %195, i32 %196)
  br label %228

198:                                              ; preds = %175
  store i32 768, i32* %7, align 4
  store i32 768, i32* %8, align 4
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %200 = load i64, i64* %22, align 8
  %201 = load i64, i64* @PHY_CORE_0, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 166, i32 167
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @mod_phy_reg(%struct.brcms_phy* %199, i32 %204, i32 %205, i32 %206)
  store i32 3072, i32* %7, align 4
  store i32 3072, i32* %8, align 4
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %209 = load i64, i64* %22, align 8
  %210 = load i64, i64* @PHY_CORE_0, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 166, i32 167
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @mod_phy_reg(%struct.brcms_phy* %208, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %218 = load i64, i64* %22, align 8
  %219 = call i32 @brcms_phy_wr_tx_mux(%struct.brcms_phy* %217, i64 %218)
  store i32 512, i32* %9, align 4
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %221 = load i64, i64* %22, align 8
  %222 = load i64, i64* @PHY_CORE_0, align 8
  %223 = icmp eq i64 %221, %222
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 143, i32 165
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @mod_phy_reg(%struct.brcms_phy* %220, i32 %225, i32 512, i32 %226)
  br label %228

228:                                              ; preds = %198, %179
  br label %229

229:                                              ; preds = %228, %156
  br label %230

230:                                              ; preds = %229, %133
  br label %231

231:                                              ; preds = %230, %77, %68
  %232 = load i64, i64* %22, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %22, align 8
  br label %53

234:                                              ; preds = %53
  br label %235

235:                                              ; preds = %234, %33
  br label %375

236:                                              ; preds = %3
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %248, label %240

240:                                              ; preds = %236
  %241 = load i64, i64* %6, align 8
  %242 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %244, %240, %236
  store i32 0, i32* %8, align 4
  br label %262

249:                                              ; preds = %244
  %250 = load i64, i64* %6, align 8
  %251 = load i64, i64* @NPHY_RSSI_SEL_TBD, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 1, i32* %8, align 4
  br label %261

254:                                              ; preds = %249
  %255 = load i64, i64* %6, align 8
  %256 = load i64, i64* @NPHY_RSSI_SEL_IQ, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 2, i32* %8, align 4
  br label %260

259:                                              ; preds = %254
  store i32 3, i32* %8, align 4
  br label %260

260:                                              ; preds = %259, %258
  br label %261

261:                                              ; preds = %260, %253
  br label %262

262:                                              ; preds = %261, %248
  store i32 61440, i32* %7, align 4
  %263 = load i32, i32* %8, align 4
  %264 = shl i32 %263, 12
  %265 = load i32, i32* %8, align 4
  %266 = shl i32 %265, 14
  %267 = or i32 %264, %266
  store i32 %267, i32* %8, align 4
  %268 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @mod_phy_reg(%struct.brcms_phy* %268, i32 166, i32 %269, i32 %270)
  %272 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @mod_phy_reg(%struct.brcms_phy* %272, i32 167, i32 %273, i32 %274)
  %276 = load i64, i64* %6, align 8
  %277 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %287, label %279

279:                                              ; preds = %262
  %280 = load i64, i64* %6, align 8
  %281 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = load i64, i64* %6, align 8
  %285 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %313

287:                                              ; preds = %283, %279, %262
  %288 = load i64, i64* %6, align 8
  %289 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  store i32 1, i32* %8, align 4
  br label %292

292:                                              ; preds = %291, %287
  %293 = load i64, i64* %6, align 8
  %294 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i32 2, i32* %8, align 4
  br label %297

297:                                              ; preds = %296, %292
  %298 = load i64, i64* %6, align 8
  %299 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  store i32 3, i32* %8, align 4
  br label %302

302:                                              ; preds = %301, %297
  store i32 48, i32* %7, align 4
  %303 = load i32, i32* %8, align 4
  %304 = shl i32 %303, 4
  store i32 %304, i32* %8, align 4
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @mod_phy_reg(%struct.brcms_phy* %305, i32 122, i32 %306, i32 %307)
  %309 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @mod_phy_reg(%struct.brcms_phy* %309, i32 125, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %302, %283
  %314 = load i64, i64* %5, align 8
  %315 = load i64, i64* @RADIO_MIMO_CORESEL_OFF, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %321

318:                                              ; preds = %313
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %319 = load i64, i64* %5, align 8
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %11, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %12, align 4
  br label %321

321:                                              ; preds = %318, %317
  store i32 12288, i32* %17, align 4
  %322 = load i32, i32* %9, align 4
  %323 = shl i32 %322, 12
  %324 = load i32, i32* %9, align 4
  %325 = shl i32 %324, 13
  %326 = or i32 %323, %325
  store i32 %326, i32* %9, align 4
  %327 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @mod_phy_reg(%struct.brcms_phy* %327, i32 165, i32 %328, i32 %329)
  %331 = load i64, i64* %6, align 8
  %332 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %342, label %334

334:                                              ; preds = %321
  %335 = load i64, i64* %6, align 8
  %336 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = load i64, i64* %6, align 8
  %340 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %374

342:                                              ; preds = %338, %334, %321
  store i32 312, i32* %18, align 4
  %343 = load i32, i32* %10, align 4
  %344 = shl i32 %343, 8
  %345 = load i32, i32* %11, align 4
  %346 = shl i32 %345, 3
  %347 = or i32 %344, %346
  store i32 %347, i32* %20, align 4
  store i32 4131, i32* %19, align 4
  %348 = load i32, i32* %13, align 4
  %349 = shl i32 %348, 5
  %350 = load i32, i32* %14, align 4
  %351 = shl i32 %350, 12
  %352 = or i32 %349, %351
  %353 = load i32, i32* %15, align 4
  %354 = shl i32 %353, 1
  %355 = or i32 %352, %354
  %356 = load i32, i32* %16, align 4
  %357 = shl i32 %356, 0
  %358 = or i32 %355, %357
  store i32 %358, i32* %21, align 4
  %359 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %360 = load i32, i32* %18, align 4
  %361 = load i32, i32* %20, align 4
  %362 = call i32 @mod_phy_reg(%struct.brcms_phy* %359, i32 120, i32 %360, i32 %361)
  %363 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %364 = load i32, i32* %19, align 4
  %365 = load i32, i32* %21, align 4
  %366 = call i32 @mod_phy_reg(%struct.brcms_phy* %363, i32 236, i32 %364, i32 %365)
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %368 = load i32, i32* %12, align 4
  %369 = shl i32 %368, 0
  %370 = call i32 @mod_phy_reg(%struct.brcms_phy* %367, i32 120, i32 1, i32 %369)
  %371 = call i32 @udelay(i32 20)
  %372 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %373 = call i32 @mod_phy_reg(%struct.brcms_phy* %372, i32 236, i32 1, i32 0)
  br label %374

374:                                              ; preds = %342, %338
  br label %375

375:                                              ; preds = %374, %235
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @brcms_phy_wr_tx_mux(%struct.brcms_phy*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
