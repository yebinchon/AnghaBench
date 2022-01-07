; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, %struct.TYPE_2__, i64, i64, i64, i64, i64, %struct.ath9k_hw_capabilities }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Clearing AR_INTR_PRIO_ASYNC_ENABLE\0A\00", align 1
@AR_INTR_PRIO_ASYNC_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"New interrupt mask 0x%x\0A\00", align 1
@ATH9K_INT_COMMON = common dso_local global i32 0, align 4
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@AR_INTR_PRIO_TX = common dso_local global i32 0, align 4
@AR_IMR_TXMINTR = common dso_local global i32 0, align 4
@AR_IMR_TXINTM = common dso_local global i32 0, align 4
@AR_IMR_TXOK = common dso_local global i32 0, align 4
@AR_IMR_TXDESC = common dso_local global i32 0, align 4
@AR_IMR_TXERR = common dso_local global i32 0, align 4
@AR_IMR_TXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RX = common dso_local global i32 0, align 4
@AR_INTR_PRIO_RXLP = common dso_local global i32 0, align 4
@AR_INTR_PRIO_RXHP = common dso_local global i32 0, align 4
@AR_IMR_RXERR = common dso_local global i32 0, align 4
@AR_IMR_RXOK_HP = common dso_local global i32 0, align 4
@AR_IMR_RXOK_LP = common dso_local global i32 0, align 4
@AR_IMR_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_RXINTM = common dso_local global i32 0, align 4
@AR_IMR_RXOK = common dso_local global i32 0, align 4
@AR_IMR_RXDESC = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@AR_IMR_GENTMR = common dso_local global i32 0, align 4
@ATH9K_INT_GENTIMER = common dso_local global i32 0, align 4
@ATH9K_INT_BMISC = common dso_local global i32 0, align 4
@AR_IMR_BCNMISC = common dso_local global i32 0, align 4
@ATH9K_INT_TIM = common dso_local global i32 0, align 4
@AR_IMR_S2_TIM = common dso_local global i32 0, align 4
@ATH9K_INT_DTIM = common dso_local global i32 0, align 4
@AR_IMR_S2_DTIM = common dso_local global i32 0, align 4
@ATH9K_INT_DTIMSYNC = common dso_local global i32 0, align 4
@AR_IMR_S2_DTIMSYNC = common dso_local global i32 0, align 4
@ATH9K_INT_CABEND = common dso_local global i32 0, align 4
@AR_IMR_S2_CABEND = common dso_local global i32 0, align 4
@ATH9K_INT_TSFOOR = common dso_local global i32 0, align 4
@AR_IMR_S2_TSFOOR = common dso_local global i32 0, align 4
@ATH9K_INT_GTT = common dso_local global i32 0, align 4
@ATH9K_INT_CST = common dso_local global i32 0, align 4
@AR_IMR_S2_GTT = common dso_local global i32 0, align 4
@AR_IMR_S2_CST = common dso_local global i32 0, align 4
@HW_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@AR_IMR_S2_BB_WATCHDOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"new IMR 0x%x\0A\00", align 1
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_S2_CABTO = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@ATH9K_INT_TIM_TIMER = common dso_local global i32 0, align 4
@AR_IMR_S5 = common dso_local global i32 0, align 4
@AR_IMR_S5_TIM_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_interrupts(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_hw_capabilities*, align 8
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 9
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %29 = load i32, i32* @INTERRUPT, align 4
  %30 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %28, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* @AR_INTR_PRIO_ASYNC_ENABLE, align 4
  %33 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %32, i32 0)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = load i32, i32* @AR_INTR_PRIO_ASYNC_ENABLE, align 4
  %36 = call i32 @REG_READ(%struct.ath_hw* %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %39 = load i32, i32* @INTERRUPT, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %38, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ATH9K_INT_COMMON, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ATH9K_INT_TX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %37
  %52 = load i32, i32* @AR_INTR_PRIO_TX, align 4
  %53 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32, i32* @AR_IMR_TXMINTR, align 4
  %64 = load i32, i32* @AR_IMR_TXINTM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %87

68:                                               ; preds = %51
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @AR_IMR_TXOK, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @AR_IMR_TXDESC, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %77
  br label %87

87:                                               ; preds = %86, %62
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @AR_IMR_TXERR, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @AR_IMR_TXEOL, align 4
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %37
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @ATH9K_INT_RX, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %179

111:                                              ; preds = %106
  %112 = load i32, i32* @AR_INTR_PRIO_RXLP, align 4
  %113 = load i32, i32* @AR_INTR_PRIO_RXHP, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %116 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %120 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %111
  %123 = load i32, i32* @AR_IMR_RXERR, align 4
  %124 = load i32, i32* @AR_IMR_RXOK_HP, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %129 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %122
  %134 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %139 = load i32, i32* @AR_IMR_RXINTM, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %4, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %4, align 4
  br label %147

143:                                              ; preds = %122
  %144 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %145 = load i32, i32* %4, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %133
  br label %167

148:                                              ; preds = %111
  %149 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %150 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %156 = load i32, i32* @AR_IMR_RXINTM, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %4, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %4, align 4
  br label %166

160:                                              ; preds = %148
  %161 = load i32, i32* @AR_IMR_RXOK, align 4
  %162 = load i32, i32* @AR_IMR_RXDESC, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %160, %154
  br label %167

167:                                              ; preds = %166, %147
  %168 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %6, align 8
  %169 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @AR_IMR_GENTMR, align 4
  %176 = load i32, i32* %4, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %167
  br label %179

179:                                              ; preds = %178, %106
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32, i32* @AR_IMR_GENTMR, align 4
  %186 = load i32, i32* %4, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %184, %179
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @ATH9K_INT_BMISC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %242

193:                                              ; preds = %188
  %194 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %195 = load i32, i32* %4, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @ATH9K_INT_TIM, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i32, i32* @AR_IMR_S2_TIM, align 4
  %203 = load i32, i32* %5, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %201, %193
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* @ATH9K_INT_DTIM, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i32, i32* @AR_IMR_S2_DTIM, align 4
  %212 = load i32, i32* %5, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @ATH9K_INT_DTIMSYNC, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load i32, i32* @AR_IMR_S2_DTIMSYNC, align 4
  %221 = load i32, i32* %5, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %219, %214
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* @ATH9K_INT_CABEND, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i32, i32* @AR_IMR_S2_CABEND, align 4
  %230 = load i32, i32* %5, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %228, %223
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i32, i32* @AR_IMR_S2_TSFOOR, align 4
  %239 = load i32, i32* %5, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %237, %232
  br label %242

242:                                              ; preds = %241, %188
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @ATH9K_INT_GTT, align 4
  %245 = load i32, i32* @ATH9K_INT_CST, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %243, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %242
  %250 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %251 = load i32, i32* %4, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %4, align 4
  %253 = load i32, i32* %3, align 4
  %254 = load i32, i32* @ATH9K_INT_GTT, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %249
  %258 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %259 = load i32, i32* %5, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %257, %249
  %262 = load i32, i32* %3, align 4
  %263 = load i32, i32* @ATH9K_INT_CST, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load i32, i32* @AR_IMR_S2_CST, align 4
  %268 = load i32, i32* %5, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %266, %261
  br label %271

271:                                              ; preds = %270, %242
  %272 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %273 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @HW_BB_WATCHDOG, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %271
  %280 = load i32, i32* %3, align 4
  %281 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %286 = load i32, i32* %4, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %4, align 4
  %288 = load i32, i32* @AR_IMR_S2_BB_WATCHDOG, align 4
  %289 = load i32, i32* %5, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %284, %279
  br label %292

292:                                              ; preds = %291, %271
  %293 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %294 = load i32, i32* @INTERRUPT, align 4
  %295 = load i32, i32* %4, align 4
  %296 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %293, i32 %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %295)
  %297 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %298 = load i32, i32* @AR_IMR, align 4
  %299 = load i32, i32* %4, align 4
  %300 = call i32 @REG_WRITE(%struct.ath_hw* %297, i32 %298, i32 %299)
  %301 = load i32, i32* @AR_IMR_S2_TIM, align 4
  %302 = load i32, i32* @AR_IMR_S2_DTIM, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @AR_IMR_S2_DTIMSYNC, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @AR_IMR_S2_CABEND, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @AR_IMR_S2_CABTO, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @AR_IMR_S2_TSFOOR, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @AR_IMR_S2_CST, align 4
  %315 = or i32 %313, %314
  %316 = xor i32 %315, -1
  %317 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %318 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = and i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %322 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @HW_BB_WATCHDOG, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %341

328:                                              ; preds = %292
  %329 = load i32, i32* %3, align 4
  %330 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %328
  %334 = load i32, i32* @AR_IMR_S2_BB_WATCHDOG, align 4
  %335 = xor i32 %334, -1
  %336 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %337 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %333, %328
  br label %341

341:                                              ; preds = %340, %292
  %342 = load i32, i32* %5, align 4
  %343 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %344 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %348 = load i32, i32* @AR_IMR_S2, align 4
  %349 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %350 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @REG_WRITE(%struct.ath_hw* %347, i32 %348, i32 %351)
  %353 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %6, align 8
  %354 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %375, label %359

359:                                              ; preds = %341
  %360 = load i32, i32* %3, align 4
  %361 = load i32, i32* @ATH9K_INT_TIM_TIMER, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %366 = load i32, i32* @AR_IMR_S5, align 4
  %367 = load i32, i32* @AR_IMR_S5_TIM_TIMER, align 4
  %368 = call i32 @REG_SET_BIT(%struct.ath_hw* %365, i32 %366, i32 %367)
  br label %374

369:                                              ; preds = %359
  %370 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %371 = load i32, i32* @AR_IMR_S5, align 4
  %372 = load i32, i32* @AR_IMR_S5_TIM_TIMER, align 4
  %373 = call i32 @REG_CLR_BIT(%struct.ath_hw* %370, i32 %371, i32 %372)
  br label %374

374:                                              ; preds = %369, %364
  br label %375

375:                                              ; preds = %374, %341
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
