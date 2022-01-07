; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_set_tx_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_set_tx_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@MT_CCK_PROT_CFG = common dso_local global i64 0, align 8
@MT_PROT_CFG_CTRL = common dso_local global i32 0, align 4
@MT_PROT_CFG_RATE = common dso_local global i32 0, align 4
@MT_TX_PROT_CFG6 = common dso_local global i64 0, align 8
@MT_TX_RTS_CFG = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG_THRESH = common dso_local global i32 0, align 4
@MT_PROT_CTRL_RTS_CTS = common dso_local global i32 0, align 4
@MT_PROT_CTRL_CTS2SELF = common dso_local global i32 0, align 4
@MT_PROT_RATE_CCK_11 = common dso_local global i32 0, align 4
@MT_PROT_RATE_OFDM_24 = common dso_local global i32 0, align 4
@MT_PROT_RATE_DUP_OFDM_24 = common dso_local global i32 0, align 4
@MT_PROT_RATE_SGI_OFDM_24 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_mac_set_tx_protection(%struct.mt76x02_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %57, %3
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %30 = load i64, i64* @MT_CCK_PROT_CFG, align 8
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @mt76_rr(%struct.mt76x02_dev* %29, i64 %34)
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @MT_PROT_CFG_CTRL, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %56

48:                                               ; preds = %28
  %49 = load i32, i32* @MT_PROT_CFG_RATE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %23

60:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i32* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %61
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %68 = load i64, i64* @MT_TX_PROT_CFG6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @mt76_rr(%struct.mt76x02_dev* %67, i64 %72)
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @MT_PROT_CFG_CTRL, align 4
  %78 = load i32, i32* @MT_PROT_CFG_RATE, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %66
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %61

89:                                               ; preds = %61
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %91 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %92 = load i32, i32* @MT_TX_RTS_CFG_THRESH, align 4
  %93 = call i32 @mt76_get_field(%struct.mt76x02_dev* %90, i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 65535
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 16
  br label %101

101:                                              ; preds = %96, %89
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %101
  %105 = load i32, i32* @MT_PROT_CTRL_CTS2SELF, align 4
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %119 = load i32, i32* %118, align 16
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 16
  %121 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %174

137:                                              ; preds = %101
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 65535
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %142 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i32, i32* @MT_PROT_RATE_OFDM_24, align 4
  %147 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @MT_PROT_RATE_DUP_OFDM_24, align 4
  %151 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* @MT_PROT_RATE_OFDM_24, align 4
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %156 = load i32, i32* %155, align 16
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 16
  %158 = load i32, i32* @MT_PROT_RATE_DUP_OFDM_24, align 4
  %159 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* @MT_PROT_RATE_OFDM_24, align 4
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @MT_PROT_RATE_DUP_OFDM_24, align 4
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %166
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @MT_PROT_RATE_SGI_OFDM_24, align 4
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %170
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %145, %104
  %175 = load i32, i32* %7, align 4
  switch i32 %175, label %222 [
    i32 128, label %176
    i32 129, label %176
    i32 130, label %205
  ]

176:                                              ; preds = %174, %174
  %177 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %178 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %177
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %182 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %186 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %187 = load i32, i32* %186, align 16
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 16
  %189 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %190 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %198 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %197
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 4
  br label %222

205:                                              ; preds = %174
  %206 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %207 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %206
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %211 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %210
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %214
  store i32 %217, i32* %215, align 4
  %218 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %218
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %174, %205, %176
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %227 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %228 = load i32, i32* %227, align 16
  %229 = or i32 %228, %226
  store i32 %229, i32* %227, align 16
  %230 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %231 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %225, %222
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %252, %234
  %236 = load i32, i32* %11, align 4
  %237 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %238 = call i32 @ARRAY_SIZE(i32* %237)
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %235
  %241 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %242 = load i64, i64* @MT_CCK_PROT_CFG, align 8
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 %243, 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %242, %245
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @mt76_wr(%struct.mt76x02_dev* %241, i64 %246, i32 %250)
  br label %252

252:                                              ; preds = %240
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %235

255:                                              ; preds = %235
  store i32 0, i32* %11, align 4
  br label %256

256:                                              ; preds = %273, %255
  %257 = load i32, i32* %11, align 4
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %259 = call i32 @ARRAY_SIZE(i32* %258)
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %256
  %262 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %263 = load i64, i64* @MT_TX_PROT_CFG6, align 8
  %264 = load i32, i32* %11, align 4
  %265 = mul nsw i32 %264, 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %263, %266
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @mt76_wr(%struct.mt76x02_dev* %262, i64 %267, i32 %271)
  br label %273

273:                                              ; preds = %261
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %11, align 4
  br label %256

276:                                              ; preds = %256
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @mt76_get_field(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
