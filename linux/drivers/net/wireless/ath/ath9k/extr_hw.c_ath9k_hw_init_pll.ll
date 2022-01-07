; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64 }
%struct.ath9k_channel = type { i32 }

@AR_CH0_BB_DPLL2 = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_PLL_PWD = common dso_local global i32 0, align 4
@AR_CH0_DPLL2_KD = common dso_local global i32 0, align 4
@AR_CH0_DPLL2_KI = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1 = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1_REFDIV = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1_NINI = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1_NFRAC = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_OUTDIV = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_LOCAL_PLL = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_EN_NEGTRIG = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL3 = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL3_PHASE_SHIFT = common dso_local global i32 0, align 4
@AR_CH0_DDR_DPLL2 = common dso_local global i32 0, align 4
@AR_CH0_DDR_DPLL3 = common dso_local global i32 0, align 4
@AR_CH0_DPLL3_PHASE_SHIFT = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL = common dso_local global i32 0, align 4
@AR_RTC_9300_PLL_BYPASS = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL2 = common dso_local global i32 0, align 4
@AR_RTC_9300_SOC_PLL_BYPASS = common dso_local global i32 0, align 4
@AR_PHY_PLL_MODE = common dso_local global i32 0, align 4
@AR_PHY_PLL_CONTROL = common dso_local global i32 0, align 4
@RTC_PLL_SETTLE_DELAY = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_DERIVED_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_pll(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %15 = call i32 @ath9k_hw_compute_pll_control(%struct.ath_hw* %13, %struct.ath9k_channel* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i64 @AR_SREV_9485(%struct.ath_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = call i64 @AR_SREV_9565(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %19, %2
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %26 = load i32, i32* @AR_CH0_BB_DPLL2_PLL_PWD, align 4
  %27 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %24, i32 %25, i32 %26, i32 1)
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %30 = load i32, i32* @AR_CH0_DPLL2_KD, align 4
  %31 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %28, i32 %29, i32 %30, i32 64)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %34 = load i32, i32* @AR_CH0_DPLL2_KI, align 4
  %35 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %32, i32 %33, i32 %34, i32 4)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = load i32, i32* @AR_CH0_BB_DPLL1, align 4
  %38 = load i32, i32* @AR_CH0_BB_DPLL1_REFDIV, align 4
  %39 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %36, i32 %37, i32 %38, i32 5)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_CH0_BB_DPLL1, align 4
  %42 = load i32, i32* @AR_CH0_BB_DPLL1_NINI, align 4
  %43 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %40, i32 %41, i32 %42, i32 88)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_CH0_BB_DPLL1, align 4
  %46 = load i32, i32* @AR_CH0_BB_DPLL1_NFRAC, align 4
  %47 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %50 = load i32, i32* @AR_CH0_BB_DPLL2_OUTDIV, align 4
  %51 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %48, i32 %49, i32 %50, i32 1)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %54 = load i32, i32* @AR_CH0_BB_DPLL2_LOCAL_PLL, align 4
  %55 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %58 = load i32, i32* @AR_CH0_BB_DPLL2_EN_NEGTRIG, align 4
  %59 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %56, i32 %57, i32 %58, i32 1)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load i32, i32* @AR_CH0_BB_DPLL3, align 4
  %62 = load i32, i32* @AR_CH0_BB_DPLL3_PHASE_SHIFT, align 4
  %63 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %60, i32 %61, i32 %62, i32 6)
  %64 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %65 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %66 = load i32, i32* @AR_CH0_BB_DPLL2_PLL_PWD, align 4
  %67 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %64, i32 %65, i32 %66, i32 0)
  %68 = call i32 @udelay(i32 1000)
  br label %283

69:                                               ; preds = %19
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = call i64 @AR_SREV_9330(%struct.ath_hw* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %69
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 417869569, i32* %6, align 4
  store i32 14699069, i32* %7, align 4
  store i32 29, i32* %8, align 4
  br label %80

79:                                               ; preds = %73
  store i32 434646785, i32* %6, align 4
  store i32 8939110, i32* %7, align 4
  store i32 61, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = load i32, i32* @AR_CH0_DDR_DPLL2, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @REG_WRITE(%struct.ath_hw* %81, i32 %82, i32 %83)
  %85 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %86 = load i32, i32* @AR_CH0_DDR_DPLL3, align 4
  %87 = load i32, i32* @AR_CH0_DPLL3_PHASE_SHIFT, align 4
  %88 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %85, i32 %86, i32 %87, i32 1)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @AR_RTC_9300_PLL_BYPASS, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @REG_WRITE(%struct.ath_hw* %89, i32 %90, i32 %93)
  %95 = call i32 @udelay(i32 1000)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %97 = load i32, i32* @AR_RTC_PLL_CONTROL2, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @REG_WRITE(%struct.ath_hw* %96, i32 %97, i32 %98)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %102 = load i32, i32* @AR_CH0_DPLL2_KD, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %107 = load i32, i32* @AR_CH0_DPLL2_KI, align 4
  %108 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %105, i32 %106, i32 %107, i32 6)
  %109 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %110 = load i32, i32* @AR_CH0_BB_DPLL3, align 4
  %111 = load i32, i32* @AR_CH0_BB_DPLL3_PHASE_SHIFT, align 4
  %112 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %109, i32 %110, i32 %111, i32 1)
  br label %282

113:                                              ; preds = %69
  %114 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %115 = call i64 @AR_SREV_9340(%struct.ath_hw* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %113
  %118 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %119 = call i64 @AR_SREV_9550(%struct.ath_hw* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %123 = call i64 @AR_SREV_9531(%struct.ath_hw* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %127 = call i64 @AR_SREV_9561(%struct.ath_hw* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %281

129:                                              ; preds = %125, %121, %117, %113
  %130 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %131 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @AR_RTC_9300_SOC_PLL_BYPASS, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @REG_WRITE(%struct.ath_hw* %130, i32 %131, i32 %134)
  %136 = call i32 @udelay(i32 1000)
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %139 = call i32 @REG_SET_BIT(%struct.ath_hw* %137, i32 %138, i32 65536)
  %140 = call i32 @udelay(i32 100)
  %141 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %142 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %129
  %146 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %147 = call i64 @AR_SREV_9531(%struct.ath_hw* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %151 = call i64 @AR_SREV_9561(%struct.ath_hw* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %145
  store i32 28, i32* %10, align 4
  store i32 41938, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %155

154:                                              ; preds = %149
  store i32 84, i32* %10, align 4
  store i32 125829, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %155

155:                                              ; preds = %154, %153
  br label %174

156:                                              ; preds = %129
  %157 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %158 = call i64 @AR_SREV_9340(%struct.ath_hw* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 88, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 5, i32* %12, align 4
  br label %173

161:                                              ; preds = %156
  store i32 17, i32* %10, align 4
  %162 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %163 = call i64 @AR_SREV_9531(%struct.ath_hw* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %167 = call i64 @AR_SREV_9561(%struct.ath_hw* %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i1 [ true, %161 ], [ %168, %165 ]
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 157285, i32 157286
  store i32 %172, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %173

173:                                              ; preds = %169, %160
  br label %174

174:                                              ; preds = %173, %155
  %175 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %176 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %177 = call i32 @REG_READ(%struct.ath_hw* %175, i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %179 = call i64 @AR_SREV_9531(%struct.ath_hw* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %174
  %182 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %183 = call i64 @AR_SREV_9561(%struct.ath_hw* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181, %174
  %186 = load i32, i32* %9, align 4
  %187 = or i32 %186, 4194304
  store i32 %187, i32* %9, align 4
  br label %191

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %189, 65536
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %193 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @REG_WRITE(%struct.ath_hw* %192, i32 %193, i32 %194)
  %196 = call i32 @udelay(i32 100)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = load i32, i32* @AR_PHY_PLL_CONTROL, align 4
  %199 = load i32, i32* %12, align 4
  %200 = shl i32 %199, 27
  %201 = load i32, i32* %10, align 4
  %202 = shl i32 %201, 18
  %203 = or i32 %200, %202
  %204 = load i32, i32* %11, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @REG_WRITE(%struct.ath_hw* %197, i32 %198, i32 %205)
  %207 = call i32 @udelay(i32 100)
  %208 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %209 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %210 = call i32 @REG_READ(%struct.ath_hw* %208, i32 %209)
  store i32 %210, i32* %9, align 4
  %211 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %212 = call i64 @AR_SREV_9340(%struct.ath_hw* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %191
  %215 = load i32, i32* %9, align 4
  %216 = and i32 %215, -2147016705
  %217 = or i32 %216, 1073741824
  %218 = or i32 %217, 8192
  %219 = or i32 %218, 268435456
  %220 = or i32 %219, 12582912
  store i32 %220, i32* %9, align 4
  br label %251

221:                                              ; preds = %191
  %222 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %223 = call i64 @AR_SREV_9531(%struct.ath_hw* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %227 = call i64 @AR_SREV_9561(%struct.ath_hw* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %225, %221
  %230 = load i32, i32* %9, align 4
  %231 = and i32 %230, 29364223
  %232 = or i32 %231, -2147483648
  %233 = or i32 %232, 1073741824
  %234 = or i32 %233, 335544320
  %235 = or i32 %234, 524288
  store i32 %235, i32* %9, align 4
  %236 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %237 = call i64 @AR_SREV_9531(%struct.ath_hw* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load i32, i32* %9, align 4
  %241 = or i32 %240, 24576
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %239, %229
  br label %250

243:                                              ; preds = %225
  %244 = load i32, i32* %9, align 4
  %245 = and i32 %244, -2147016705
  %246 = or i32 %245, -1073741824
  %247 = or i32 %246, 8192
  %248 = or i32 %247, 268435456
  %249 = or i32 %248, 50331648
  store i32 %249, i32* %9, align 4
  br label %250

250:                                              ; preds = %243, %242
  br label %251

251:                                              ; preds = %250, %214
  %252 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %253 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @REG_WRITE(%struct.ath_hw* %252, i32 %253, i32 %254)
  %256 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %257 = call i64 @AR_SREV_9531(%struct.ath_hw* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %251
  %260 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %261 = call i64 @AR_SREV_9561(%struct.ath_hw* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %259, %251
  %264 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %265 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %266 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %267 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %268 = call i32 @REG_READ(%struct.ath_hw* %266, i32 %267)
  %269 = and i32 %268, -4194305
  %270 = call i32 @REG_WRITE(%struct.ath_hw* %264, i32 %265, i32 %269)
  br label %279

271:                                              ; preds = %259
  %272 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %273 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %274 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %275 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %276 = call i32 @REG_READ(%struct.ath_hw* %274, i32 %275)
  %277 = and i32 %276, -65537
  %278 = call i32 @REG_WRITE(%struct.ath_hw* %272, i32 %273, i32 %277)
  br label %279

279:                                              ; preds = %271, %263
  %280 = call i32 @udelay(i32 1000)
  br label %281

281:                                              ; preds = %279, %125
  br label %282

282:                                              ; preds = %281, %80
  br label %283

283:                                              ; preds = %282, %23
  %284 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %285 = call i64 @AR_SREV_9565(%struct.ath_hw* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load i32, i32* %5, align 4
  %289 = or i32 %288, 262144
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %287, %283
  %291 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %292 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @REG_WRITE(%struct.ath_hw* %291, i32 %292, i32 %293)
  %295 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %296 = call i64 @AR_SREV_9485(%struct.ath_hw* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %310, label %298

298:                                              ; preds = %290
  %299 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %300 = call i64 @AR_SREV_9340(%struct.ath_hw* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %298
  %303 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %304 = call i64 @AR_SREV_9330(%struct.ath_hw* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %308 = call i64 @AR_SREV_9550(%struct.ath_hw* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %306, %302, %298, %290
  %311 = call i32 @udelay(i32 1000)
  br label %312

312:                                              ; preds = %310, %306
  %313 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %314 = call i64 @AR_SREV_9271(%struct.ath_hw* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = call i32 @udelay(i32 500)
  %318 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %319 = call i32 @REG_WRITE(%struct.ath_hw* %318, i32 327744, i32 772)
  br label %320

320:                                              ; preds = %316, %312
  %321 = load i32, i32* @RTC_PLL_SETTLE_DELAY, align 4
  %322 = call i32 @udelay(i32 %321)
  %323 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %324 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %325 = load i32, i32* @AR_RTC_FORCE_DERIVED_CLK, align 4
  %326 = call i32 @REG_WRITE(%struct.ath_hw* %323, i32 %324, i32 %325)
  ret void
}

declare dso_local i32 @ath9k_hw_compute_pll_control(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
