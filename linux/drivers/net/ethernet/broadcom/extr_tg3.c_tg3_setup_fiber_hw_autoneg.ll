; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_fiber_hw_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_fiber_hw_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@CHIPREV_ID_5704_A0 = common dso_local global i64 0, align 8
@CHIPREV_ID_5704_A1 = common dso_local global i64 0, align 8
@TG3PCI_DUAL_MAC_CTRL = common dso_local global i32 0, align 4
@DUAL_MAC_CTRL_ID = common dso_local global i32 0, align 4
@MAC_SERDES_CFG = common dso_local global i32 0, align 4
@SG_DIG_CTRL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SG_DIG_USING_HW_AUTONEG = common dso_local global i32 0, align 4
@SG_DIG_COMMON_SETUP = common dso_local global i32 0, align 4
@MAC_STATUS_PCS_SYNCED = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@SG_DIG_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@SG_DIG_ASYM_PAUSE = common dso_local global i32 0, align 4
@TG3_PHYFLG_PARALLEL_DETECT = common dso_local global i32 0, align 4
@MAC_STATUS_RCVD_CFG = common dso_local global i32 0, align 4
@SG_DIG_SOFT_RESET = common dso_local global i32 0, align 4
@SERDES_AN_TIMEOUT_5704S = common dso_local global i8* null, align 8
@MAC_STATUS_SIGNAL_DET = common dso_local global i32 0, align 4
@SG_DIG_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@SG_DIG_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@SG_DIG_PARTNER_PAUSE_CAPABLE = common dso_local global i32 0, align 4
@LPA_1000XPAUSE = common dso_local global i32 0, align 4
@SG_DIG_PARTNER_ASYM_PAUSE = common dso_local global i32 0, align 4
@LPA_1000XPAUSE_ASYM = common dso_local global i32 0, align 4
@SERDES_PARALLEL_DET_TIMEOUT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_setup_fiber_hw_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_setup_fiber_hw_autoneg(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = call i64 @tg3_chip_rev_id(%struct.tg3* %17)
  %19 = load i64, i64* @CHIPREV_ID_5704_A0, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = call i64 @tg3_chip_rev_id(%struct.tg3* %22)
  %24 = load i64, i64* @CHIPREV_ID_5704_A1, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  %27 = load i32, i32* @TG3PCI_DUAL_MAC_CTRL, align 4
  %28 = call i32 @tr32(i32 %27)
  %29 = load i32, i32* @DUAL_MAC_CTRL_ID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* @MAC_SERDES_CFG, align 4
  %35 = call i32 @tr32(i32 %34)
  %36 = and i32 %35, 15757311
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %21, %2
  %38 = load i32, i32* @SG_DIG_CTRL, align 4
  %39 = call i32 @tr32(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.tg3*, %struct.tg3** %3, align 8
  %41 = getelementptr inbounds %struct.tg3, %struct.tg3* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AUTONEG_ENABLE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SG_DIG_USING_HW_AUTONEG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, 201392128
  store i32 %60, i32* %13, align 4
  br label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, 67174400
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @MAC_SERDES_CFG, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @tw32_f(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %51
  %69 = load i32, i32* @SG_DIG_CTRL, align 4
  %70 = load i32, i32* @SG_DIG_COMMON_SETUP, align 4
  %71 = call i32 @tw32_f(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %46
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.tg3*, %struct.tg3** %3, align 8
  %79 = call i32 @tg3_setup_flow_control(%struct.tg3* %78, i32 0, i32 0)
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %315

81:                                               ; preds = %37
  %82 = load i32, i32* @SG_DIG_USING_HW_AUTONEG, align 4
  %83 = load i32, i32* @SG_DIG_COMMON_SETUP, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load %struct.tg3*, %struct.tg3** %3, align 8
  %86 = getelementptr inbounds %struct.tg3, %struct.tg3* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tg3_advert_flowctrl_1000X(i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = load i32, i32* @SG_DIG_PAUSE_CAP, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %81
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @SG_DIG_ASYM_PAUSE, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %164

111:                                              ; preds = %107
  %112 = load %struct.tg3*, %struct.tg3** %3, align 8
  %113 = getelementptr inbounds %struct.tg3, %struct.tg3* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %111
  %119 = load %struct.tg3*, %struct.tg3** %3, align 8
  %120 = getelementptr inbounds %struct.tg3, %struct.tg3* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %126 = load i32, i32* @MAC_STATUS_RCVD_CFG, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.tg3*, %struct.tg3** %3, align 8
  %133 = getelementptr inbounds %struct.tg3, %struct.tg3* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 -1
  store i8* %135, i8** %133, align 8
  store i32 1, i32* %6, align 4
  br label %315

136:                                              ; preds = %123, %118, %111
  br label %137

137:                                              ; preds = %298, %136
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @MAC_SERDES_CFG, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, 201396224
  %144 = call i32 @tw32_f(i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i32, i32* @SG_DIG_CTRL, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SG_DIG_SOFT_RESET, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @tw32_f(i32 %146, i32 %149)
  %151 = call i32 @udelay(i32 5)
  %152 = load i32, i32* @SG_DIG_CTRL, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @tw32_f(i32 %152, i32 %153)
  %155 = load i8*, i8** @SERDES_AN_TIMEOUT_5704S, align 8
  %156 = load %struct.tg3*, %struct.tg3** %3, align 8
  %157 = getelementptr inbounds %struct.tg3, %struct.tg3* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.tg3*, %struct.tg3** %3, align 8
  %161 = getelementptr inbounds %struct.tg3, %struct.tg3* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %314

164:                                              ; preds = %107
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %167 = load i32, i32* @MAC_STATUS_SIGNAL_DET, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %303

171:                                              ; preds = %164
  %172 = load i32, i32* @SG_DIG_STATUS, align 4
  %173 = call i32 @tr32(i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* @MAC_STATUS, align 4
  %175 = call i32 @tr32(i32 %174)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @SG_DIG_AUTONEG_COMPLETE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %239

180:                                              ; preds = %171
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %239

185:                                              ; preds = %180
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @SG_DIG_PAUSE_CAP, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %192 = load i32, i32* %14, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @SG_DIG_ASYM_PAUSE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %201 = load i32, i32* %14, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @SG_DIG_PARTNER_PAUSE_CAPABLE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* @LPA_1000XPAUSE, align 4
  %210 = load i32, i32* %15, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %15, align 4
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @SG_DIG_PARTNER_ASYM_PAUSE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32, i32* @LPA_1000XPAUSE_ASYM, align 4
  %219 = load i32, i32* %15, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %217, %212
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @mii_adv_to_ethtool_adv_x(i32 %222)
  %224 = load %struct.tg3*, %struct.tg3** %3, align 8
  %225 = getelementptr inbounds %struct.tg3, %struct.tg3* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 8
  %227 = load %struct.tg3*, %struct.tg3** %3, align 8
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @tg3_setup_flow_control(%struct.tg3* %227, i32 %228, i32 %229)
  store i32 1, i32* %6, align 4
  %231 = load %struct.tg3*, %struct.tg3** %3, align 8
  %232 = getelementptr inbounds %struct.tg3, %struct.tg3* %231, i32 0, i32 1
  store i8* null, i8** %232, align 8
  %233 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.tg3*, %struct.tg3** %3, align 8
  %236 = getelementptr inbounds %struct.tg3, %struct.tg3* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %302

239:                                              ; preds = %180, %171
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @SG_DIG_AUTONEG_COMPLETE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %301, label %244

244:                                              ; preds = %239
  %245 = load %struct.tg3*, %struct.tg3** %3, align 8
  %246 = getelementptr inbounds %struct.tg3, %struct.tg3* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.tg3*, %struct.tg3** %3, align 8
  %251 = getelementptr inbounds %struct.tg3, %struct.tg3* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 -1
  store i8* %253, i8** %251, align 8
  br label %300

254:                                              ; preds = %244
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %254
  %258 = load i32, i32* %9, align 4
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* %16, align 4
  %263 = or i32 %262, 201392128
  store i32 %263, i32* %16, align 4
  br label %267

264:                                              ; preds = %257
  %265 = load i32, i32* %16, align 4
  %266 = or i32 %265, 67174400
  store i32 %266, i32* %16, align 4
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* @MAC_SERDES_CFG, align 4
  %269 = load i32, i32* %16, align 4
  %270 = call i32 @tw32_f(i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %267, %254
  %272 = load i32, i32* @SG_DIG_CTRL, align 4
  %273 = load i32, i32* @SG_DIG_COMMON_SETUP, align 4
  %274 = call i32 @tw32_f(i32 %272, i32 %273)
  %275 = call i32 @udelay(i32 40)
  %276 = load i32, i32* @MAC_STATUS, align 4
  %277 = call i32 @tr32(i32 %276)
  store i32 %277, i32* %4, align 4
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %271
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @MAC_STATUS_RCVD_CFG, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %298, label %287

287:                                              ; preds = %282
  %288 = load %struct.tg3*, %struct.tg3** %3, align 8
  %289 = call i32 @tg3_setup_flow_control(%struct.tg3* %288, i32 0, i32 0)
  store i32 1, i32* %6, align 4
  %290 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %291 = load %struct.tg3*, %struct.tg3** %3, align 8
  %292 = getelementptr inbounds %struct.tg3, %struct.tg3* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load i8*, i8** @SERDES_PARALLEL_DET_TIMEOUT, align 8
  %296 = load %struct.tg3*, %struct.tg3** %3, align 8
  %297 = getelementptr inbounds %struct.tg3, %struct.tg3* %296, i32 0, i32 1
  store i8* %295, i8** %297, align 8
  br label %299

298:                                              ; preds = %282, %271
  br label %137

299:                                              ; preds = %287
  br label %300

300:                                              ; preds = %299, %249
  br label %301

301:                                              ; preds = %300, %239
  br label %302

302:                                              ; preds = %301, %221
  br label %313

303:                                              ; preds = %164
  %304 = load i8*, i8** @SERDES_AN_TIMEOUT_5704S, align 8
  %305 = load %struct.tg3*, %struct.tg3** %3, align 8
  %306 = getelementptr inbounds %struct.tg3, %struct.tg3* %305, i32 0, i32 1
  store i8* %304, i8** %306, align 8
  %307 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.tg3*, %struct.tg3** %3, align 8
  %310 = getelementptr inbounds %struct.tg3, %struct.tg3* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %303, %302
  br label %314

314:                                              ; preds = %313, %145
  br label %315

315:                                              ; preds = %314, %131, %80
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @tg3_setup_flow_control(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_advert_flowctrl_1000X(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mii_adv_to_ethtool_adv_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
