; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_get_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_get_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i8*, i8*, %struct.TYPE_2__, %struct.ath9k_hw_capabilities }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath_common = type { i32 }

@AR_INTR_MAC_IRQ = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_MASK_MCI = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_CAUSE = common dso_local global i32 0, align 4
@AR_RTC_STATUS = common dso_local global i32 0, align 4
@AR_RTC_STATUS_M = common dso_local global i32 0, align 4
@AR_RTC_STATUS_ON = common dso_local global i32 0, align 4
@AR_ISR = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_ISR_BCNMISC = common dso_local global i32 0, align 4
@AR_ISR_S2 = common dso_local global i32 0, align 4
@AR_ISR_S2_TIM = common dso_local global i32 0, align 4
@MAP_ISR_S2_TIM = common dso_local global i32 0, align 4
@AR_ISR_S2_DTIM = common dso_local global i32 0, align 4
@MAP_ISR_S2_DTIM = common dso_local global i32 0, align 4
@AR_ISR_S2_DTIMSYNC = common dso_local global i32 0, align 4
@MAP_ISR_S2_DTIMSYNC = common dso_local global i32 0, align 4
@AR_ISR_S2_CABEND = common dso_local global i32 0, align 4
@MAP_ISR_S2_CABEND = common dso_local global i32 0, align 4
@AR_ISR_S2_GTT = common dso_local global i32 0, align 4
@MAP_ISR_S2_GTT = common dso_local global i32 0, align 4
@AR_ISR_S2_CST = common dso_local global i32 0, align 4
@MAP_ISR_S2_CST = common dso_local global i32 0, align 4
@AR_ISR_S2_TSFOOR = common dso_local global i32 0, align 4
@MAP_ISR_S2_TSFOOR = common dso_local global i32 0, align 4
@AR_ISR_S2_BB_WATCHDOG = common dso_local global i32 0, align 4
@MAP_ISR_S2_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RAC_SUPPORTED = common dso_local global i32 0, align 4
@AR_ISR_RAC = common dso_local global i32 0, align 4
@ATH9K_INT_COMMON = common dso_local global i32 0, align 4
@AR_ISR_RXMINTR = common dso_local global i32 0, align 4
@AR_ISR_RXINTM = common dso_local global i32 0, align 4
@ATH9K_INT_RXLP = common dso_local global i32 0, align 4
@AR_ISR_TXMINTR = common dso_local global i32 0, align 4
@AR_ISR_TXINTM = common dso_local global i32 0, align 4
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@AR_ISR_LP_RXOK = common dso_local global i32 0, align 4
@AR_ISR_RXERR = common dso_local global i32 0, align 4
@AR_ISR_HP_RXOK = common dso_local global i32 0, align 4
@ATH9K_INT_RXHP = common dso_local global i32 0, align 4
@AR_ISR_TXOK = common dso_local global i32 0, align 4
@AR_ISR_TXERR = common dso_local global i32 0, align 4
@AR_ISR_TXEOL = common dso_local global i32 0, align 4
@AR_ISR_S0 = common dso_local global i32 0, align 4
@AR_ISR_S1 = common dso_local global i32 0, align 4
@AR_ISR_GENTMR = common dso_local global i32 0, align 4
@AR_ISR_S5_S = common dso_local global i32 0, align 4
@AR_ISR_S5 = common dso_local global i32 0, align 4
@AR_ISR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4
@AR_ISR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@ATH9K_INT_GENTIMER = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_FATAL = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_PERR = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"received PCI FATAL interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"received PCI PERR interrupt\0A\00", align 1
@ATH9K_INT_FATAL = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_TIMEOUT = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@AR_RC_HOSTIF = common dso_local global i32 0, align 4
@AR_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"AR_INTR_SYNC_LOCAL_TIMEOUT\0A\00", align 1
@AR_INTR_SYNC_CAUSE_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32*, i32*)* @ar9003_hw_get_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_get_isr(%struct.ath_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath9k_hw_capabilities*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 3
  store %struct.ath9k_hw_capabilities* %21, %struct.ath9k_hw_capabilities** %10, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @AR_INTR_MAC_IRQ, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @AR_INTR_ASYNC_MASK_MCI, align 4
  %30 = load i32, i32* %14, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %34 = load i32, i32* @AR_INTR_ASYNC_CAUSE, align 4
  %35 = call i32 @REG_READ(%struct.ath_hw* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = load i32, i32* @AR_RTC_STATUS, align 4
  %43 = call i32 @REG_READ(%struct.ath_hw* %41, i32 %42)
  %44 = load i32, i32* @AR_RTC_STATUS_M, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @AR_RTC_STATUS_ON, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %50 = load i32, i32* @AR_ISR, align 4
  %51 = call i32 @REG_READ(%struct.ath_hw* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %55 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %56 = call i32 @REG_READ(%struct.ath_hw* %54, i32 %55)
  %57 = load i32, i32* @AR_INTR_SYNC_DEFAULT, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %450

69:                                               ; preds = %65, %62, %53
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %363

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @AR_ISR_BCNMISC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %153

77:                                               ; preds = %72
  %78 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %79 = load i32, i32* @AR_ISR_S2, align 4
  %80 = call i32 @REG_READ(%struct.ath_hw* %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @AR_ISR_S2_TIM, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @MAP_ISR_S2_TIM, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @AR_ISR_S2_DTIM, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @MAP_ISR_S2_DTIM, align 4
  %92 = ashr i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @AR_ISR_S2_DTIMSYNC, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @MAP_ISR_S2_DTIMSYNC, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @AR_ISR_S2_CABEND, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @MAP_ISR_S2_CABEND, align 4
  %106 = ashr i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @AR_ISR_S2_GTT, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @MAP_ISR_S2_GTT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @AR_ISR_S2_CST, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @MAP_ISR_S2_CST, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @AR_ISR_S2_TSFOOR, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @MAP_ISR_S2_TSFOOR, align 4
  %127 = ashr i32 %125, %126
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @AR_ISR_S2_BB_WATCHDOG, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @MAP_ISR_S2_BB_WATCHDOG, align 4
  %134 = ashr i32 %132, %133
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %10, align 8
  %138 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %77
  %144 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %145 = load i32, i32* @AR_ISR_S2, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @REG_WRITE(%struct.ath_hw* %144, i32 %145, i32 %146)
  %148 = load i32, i32* @AR_ISR_BCNMISC, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %143, %77
  br label %153

153:                                              ; preds = %152, %72
  %154 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %10, align 8
  %155 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %162 = load i32, i32* @AR_ISR_RAC, align 4
  %163 = call i32 @REG_READ(%struct.ath_hw* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %160, %153
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32*, i32** %6, align 8
  store i32 0, i32* %168, align 4
  store i32 0, i32* %4, align 4
  br label %450

169:                                              ; preds = %164
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @ATH9K_INT_COMMON, align 4
  %172 = and i32 %170, %171
  %173 = load i32*, i32** %6, align 8
  store i32 %172, i32* %173, align 4
  %174 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %175 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %169
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @AR_ISR_RXMINTR, align 4
  %182 = load i32, i32* @AR_ISR_RXINTM, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %187
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %186, %179
  br label %192

192:                                              ; preds = %191, %169
  %193 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %194 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %192
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @AR_ISR_TXMINTR, align 4
  %201 = load i32, i32* @AR_ISR_TXINTM, align 4
  %202 = or i32 %200, %201
  %203 = and i32 %199, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load i32, i32* @ATH9K_INT_TX, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %206
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %205, %198
  br label %211

211:                                              ; preds = %210, %192
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @AR_ISR_LP_RXOK, align 4
  %214 = load i32, i32* @AR_ISR_RXERR, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %219
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %218, %211
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @AR_ISR_HP_RXOK, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %229
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %228, %223
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @AR_ISR_TXOK, align 4
  %236 = load i32, i32* @AR_ISR_TXERR, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @AR_ISR_TXEOL, align 4
  %239 = or i32 %237, %238
  %240 = and i32 %234, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %277

242:                                              ; preds = %233
  %243 = load i32, i32* @ATH9K_INT_TX, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %243
  store i32 %246, i32* %244, align 4
  %247 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %10, align 8
  %248 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %276, label %253

253:                                              ; preds = %242
  %254 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %255 = load i32, i32* @AR_ISR_S0, align 4
  %256 = call i32 @REG_READ(%struct.ath_hw* %254, i32 %255)
  store i32 %256, i32* %17, align 4
  %257 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %258 = load i32, i32* @AR_ISR_S0, align 4
  %259 = load i32, i32* %17, align 4
  %260 = call i32 @REG_WRITE(%struct.ath_hw* %257, i32 %258, i32 %259)
  %261 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %262 = load i32, i32* @AR_ISR_S1, align 4
  %263 = call i32 @REG_READ(%struct.ath_hw* %261, i32 %262)
  store i32 %263, i32* %18, align 4
  %264 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %265 = load i32, i32* @AR_ISR_S1, align 4
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @REG_WRITE(%struct.ath_hw* %264, i32 %265, i32 %266)
  %268 = load i32, i32* @AR_ISR_TXOK, align 4
  %269 = load i32, i32* @AR_ISR_TXERR, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @AR_ISR_TXEOL, align 4
  %272 = or i32 %270, %271
  %273 = xor i32 %272, -1
  %274 = load i32, i32* %8, align 4
  %275 = and i32 %274, %273
  store i32 %275, i32* %8, align 4
  br label %276

276:                                              ; preds = %253, %242
  br label %277

277:                                              ; preds = %276, %233
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @AR_ISR_GENTMR, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %334

282:                                              ; preds = %277
  %283 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %10, align 8
  %284 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %291 = load i32, i32* @AR_ISR_S5_S, align 4
  %292 = call i32 @REG_READ(%struct.ath_hw* %290, i32 %291)
  store i32 %292, i32* %19, align 4
  br label %297

293:                                              ; preds = %282
  %294 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %295 = load i32, i32* @AR_ISR_S5, align 4
  %296 = call i32 @REG_READ(%struct.ath_hw* %294, i32 %295)
  store i32 %296, i32* %19, align 4
  br label %297

297:                                              ; preds = %293, %289
  %298 = load i32, i32* %19, align 4
  %299 = load i32, i32* @AR_ISR_S5_GENTIMER_TRIG, align 4
  %300 = call i8* @MS(i32 %298, i32 %299)
  %301 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %302 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* @AR_ISR_S5_GENTIMER_THRESH, align 4
  %305 = call i8* @MS(i32 %303, i32 %304)
  %306 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %307 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %306, i32 0, i32 1
  store i8* %305, i8** %307, align 8
  %308 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %309 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %297
  %313 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %314 = load i32*, i32** %6, align 8
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %313
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %312, %297
  %318 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %10, align 8
  %319 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %317
  %325 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %326 = load i32, i32* @AR_ISR_S5, align 4
  %327 = load i32, i32* %19, align 4
  %328 = call i32 @REG_WRITE(%struct.ath_hw* %325, i32 %326, i32 %327)
  %329 = load i32, i32* @AR_ISR_GENTMR, align 4
  %330 = xor i32 %329, -1
  %331 = load i32, i32* %8, align 4
  %332 = and i32 %331, %330
  store i32 %332, i32* %8, align 4
  br label %333

333:                                              ; preds = %324, %317
  br label %334

334:                                              ; preds = %333, %277
  %335 = load i32, i32* %9, align 4
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %335
  store i32 %338, i32* %336, align 4
  %339 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %10, align 8
  %340 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %353, label %345

345:                                              ; preds = %334
  %346 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %347 = load i32, i32* @AR_ISR, align 4
  %348 = load i32, i32* %8, align 4
  %349 = call i32 @REG_WRITE(%struct.ath_hw* %346, i32 %347, i32 %348)
  %350 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %351 = load i32, i32* @AR_ISR, align 4
  %352 = call i32 @REG_READ(%struct.ath_hw* %350, i32 %351)
  br label %353

353:                                              ; preds = %345, %334
  %354 = load i32*, i32** %6, align 8
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %353
  %360 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %361 = call i32 @ar9003_hw_bb_watchdog_read(%struct.ath_hw* %360)
  br label %362

362:                                              ; preds = %359, %353
  br label %363

363:                                              ; preds = %362, %69
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* @AR_INTR_ASYNC_MASK_MCI, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %363
  %369 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %370 = load i32*, i32** %6, align 8
  %371 = call i32 @ar9003_mci_get_isr(%struct.ath_hw* %369, i32* %370)
  br label %372

372:                                              ; preds = %368, %363
  %373 = load i32, i32* %12, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %449

375:                                              ; preds = %372
  %376 = load i32*, i32** %7, align 8
  %377 = icmp ne i32* %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i32, i32* %12, align 4
  %380 = load i32*, i32** %7, align 8
  store i32 %379, i32* %380, align 4
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %384 = load i32, i32* @AR_INTR_SYNC_HOST1_PERR, align 4
  %385 = or i32 %383, %384
  %386 = and i32 %382, %385
  %387 = icmp ne i32 %386, 0
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i32 1, i32 0
  store i32 %389, i32* %15, align 4
  %390 = load i32, i32* %15, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %415

392:                                              ; preds = %381
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %392
  %398 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %399 = load i32, i32* @ANY, align 4
  %400 = call i32 @ath_dbg(%struct.ath_common* %398, i32 %399, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %401

401:                                              ; preds = %397, %392
  %402 = load i32, i32* %12, align 4
  %403 = load i32, i32* @AR_INTR_SYNC_HOST1_PERR, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %401
  %407 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %408 = load i32, i32* @ANY, align 4
  %409 = call i32 @ath_dbg(%struct.ath_common* %407, i32 %408, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %410

410:                                              ; preds = %406, %401
  %411 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %412 = load i32*, i32** %6, align 8
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %411
  store i32 %414, i32* %412, align 4
  br label %415

415:                                              ; preds = %410, %381
  %416 = load i32, i32* %12, align 4
  %417 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_TIMEOUT, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %415
  %421 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %422 = load i32, i32* @AR_RC, align 4
  %423 = load i32, i32* @AR_RC_HOSTIF, align 4
  %424 = call i32 @REG_WRITE(%struct.ath_hw* %421, i32 %422, i32 %423)
  %425 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %426 = load i32, i32* @AR_RC, align 4
  %427 = call i32 @REG_WRITE(%struct.ath_hw* %425, i32 %426, i32 0)
  %428 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %429 = load i32*, i32** %6, align 8
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, %428
  store i32 %431, i32* %429, align 4
  br label %432

432:                                              ; preds = %420, %415
  %433 = load i32, i32* %12, align 4
  %434 = load i32, i32* @AR_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %439 = load i32, i32* @INTERRUPT, align 4
  %440 = call i32 @ath_dbg(%struct.ath_common* %438, i32 %439, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %441

441:                                              ; preds = %437, %432
  %442 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %443 = load i32, i32* @AR_INTR_SYNC_CAUSE_CLR, align 4
  %444 = load i32, i32* %12, align 4
  %445 = call i32 @REG_WRITE(%struct.ath_hw* %442, i32 %443, i32 %444)
  %446 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %447 = load i32, i32* @AR_INTR_SYNC_CAUSE_CLR, align 4
  %448 = call i32 @REG_READ(%struct.ath_hw* %446, i32 %447)
  br label %449

449:                                              ; preds = %441, %372
  store i32 1, i32* %4, align 4
  br label %450

450:                                              ; preds = %449, %167, %68
  %451 = load i32, i32* %4, align 4
  ret i32 %451
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @ar9003_hw_bb_watchdog_read(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_get_isr(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
