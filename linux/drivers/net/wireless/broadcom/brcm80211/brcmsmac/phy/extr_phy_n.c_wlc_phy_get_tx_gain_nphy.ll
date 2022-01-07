; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_get_tx_gain_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_get_tx_gain_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_txgains = type { i32*, i32*, i32*, i32*, i32* }
%struct.brcms_phy = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@PHY_TPC_HW_OFF = common dso_local global i64 0, align 8
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@nphy_tpc_txgain = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_get_tx_gain_nphy(%struct.nphy_txgains* noalias sret %0, %struct.brcms_phy* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %1, %struct.brcms_phy** %3, align 8
  store i32* null, i32** %7, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_TPC_HW_OFF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %201

14:                                               ; preds = %2
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %20, i32 1)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %26 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %23, i32 %24, i32 2, i32 272, i32 16, i32* %25)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %22
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %197, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %200

38:                                               ; preds = %35
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @NREV_GE(i32 %42, i32 7)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %100

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 7
  %51 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 248
  %61 = ashr i32 %60, 3
  %62 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 3840
  %72 = ashr i32 %71, 8
  %73 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 28672
  %83 = ashr i32 %82, 12
  %84 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 32768
  %94 = ashr i32 %93, 15
  %95 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %94, i32* %99, align 4
  br label %196

100:                                              ; preds = %38
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @NREV_GE(i32 %104, i32 3)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %151

107:                                              ; preds = %100
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 15
  %113 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 240
  %123 = ashr i32 %122, 4
  %124 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 3840
  %134 = ashr i32 %133, 8
  %135 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 28672
  %145 = ashr i32 %144, 12
  %146 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %145, i32* %150, align 4
  br label %195

151:                                              ; preds = %100
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 3
  %157 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 12
  %167 = ashr i32 %166, 2
  %168 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 112
  %178 = ashr i32 %177, 4
  %179 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %178, i32* %183, align 4
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 896
  %189 = ashr i32 %188, 7
  %190 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %151, %107
  br label %196

196:                                              ; preds = %195, %45
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %35

200:                                              ; preds = %35
  br label %433

201:                                              ; preds = %2
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %203 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %8, align 4
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %207 = call i32 @read_phy_reg(%struct.brcms_phy* %206, i32 493)
  %208 = ashr i32 %207, 8
  %209 = and i32 %208, 127
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %209, i32* %210, align 4
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %212 = call i32 @read_phy_reg(%struct.brcms_phy* %211, i32 494)
  %213 = ashr i32 %212, 8
  %214 = and i32 %213, 127
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %214, i32* %215, align 4
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %429, %201
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %219, label %432

219:                                              ; preds = %216
  %220 = load i32, i32* %8, align 4
  %221 = call i64 @NREV_GE(i32 %220, i32 3)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %367

223:                                              ; preds = %219
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %225 = call i32* @brcms_phy_get_tx_pwrctrl_tbl(%struct.brcms_phy* %224)
  store i32* %225, i32** %7, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i64 @NREV_GE(i32 %226, i32 7)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %305

229:                                              ; preds = %223
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %230, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = ashr i32 %237, 16
  %239 = and i32 %238, 7
  %240 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 19
  %254 = and i32 %253, 31
  %255 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %254, i32* %259, align 4
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %260, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 24
  %269 = and i32 %268, 15
  %270 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %269, i32* %274, align 4
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %275, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = ashr i32 %282, 28
  %284 = and i32 %283, 7
  %285 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %284, i32* %289, align 4
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %290, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = ashr i32 %297, 31
  %299 = and i32 %298, 1
  %300 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 4
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32 %299, i32* %304, align 4
  br label %366

305:                                              ; preds = %223
  %306 = load i32*, i32** %7, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = ashr i32 %313, 16
  %315 = and i32 %314, 15
  %316 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %315, i32* %320, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %321, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 20
  %330 = and i32 %329, 15
  %331 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %330, i32* %335, align 4
  %336 = load i32*, i32** %7, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %336, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = ashr i32 %343, 24
  %345 = and i32 %344, 15
  %346 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %345, i32* %350, align 4
  %351 = load i32*, i32** %7, align 8
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %351, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = ashr i32 %358, 28
  %360 = and i32 %359, 7
  %361 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %6, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  store i32 %360, i32* %365, align 4
  br label %366

366:                                              ; preds = %305, %229
  br label %428

367:                                              ; preds = %219
  %368 = load i32*, i32** @nphy_tpc_txgain, align 8
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %368, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = ashr i32 %375, 16
  %377 = and i32 %376, 3
  %378 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %377, i32* %382, align 4
  %383 = load i32*, i32** @nphy_tpc_txgain, align 8
  %384 = load i32, i32* %6, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %383, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = ashr i32 %390, 18
  %392 = and i32 %391, 3
  %393 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32 %392, i32* %397, align 4
  %398 = load i32*, i32** @nphy_tpc_txgain, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %398, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = ashr i32 %405, 20
  %407 = and i32 %406, 7
  %408 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %6, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %407, i32* %412, align 4
  %413 = load i32*, i32** @nphy_tpc_txgain, align 8
  %414 = load i32, i32* %6, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %413, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = ashr i32 %420, 23
  %422 = and i32 %421, 7
  %423 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  store i32 %422, i32* %427, align 4
  br label %428

428:                                              ; preds = %367, %366
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %6, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %6, align 4
  br label %216

432:                                              ; preds = %216
  br label %433

433:                                              ; preds = %432, %200
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32* @brcms_phy_get_tx_pwrctrl_tbl(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
