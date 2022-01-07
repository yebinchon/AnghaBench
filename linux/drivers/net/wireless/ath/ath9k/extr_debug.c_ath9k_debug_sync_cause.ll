; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_debug_sync_cause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_debug_sync_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_INTR_SYNC_RTC_IRQ = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MAC_IRQ = common dso_local global i32 0, align 4
@AR_INTR_SYNC_EEPROM_ILLEGAL_ACCESS = common dso_local global i32 0, align 4
@AR_INTR_SYNC_APB_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_PCI_MODE_CONFLICT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_FATAL = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_PERR = common dso_local global i32 0, align 4
@AR_INTR_SYNC_TRCV_FIFO_PERR = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_EP = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_DLLP_ABORT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_TLP_ABORT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_ECRC_ERR = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_PM_ACCESS = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MAC_AWAKE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MAC_ASLEEP = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MAC_SLEEP_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_debug_sync_cause(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 18
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AR_INTR_SYNC_RTC_IRQ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AR_INTR_SYNC_MAC_IRQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 16
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @AR_INTR_SYNC_EEPROM_ILLEGAL_ACCESS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @AR_INTR_SYNC_APB_TIMEOUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @AR_INTR_SYNC_PCI_MODE_CONFLICT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @AR_INTR_SYNC_HOST1_PERR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %98, %93
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @AR_INTR_SYNC_TRCV_FIFO_PERR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %111, %106
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_EP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_DLLP_ABORT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %132
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_TLP_ABORT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %152 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %145
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_ECRC_ERR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %163, %158
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_TIMEOUT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %178 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %176, %171
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @AR_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %191 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %189, %184
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @AR_INTR_SYNC_PM_ACCESS, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %204 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %202, %197
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* @AR_INTR_SYNC_MAC_AWAKE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %215, %210
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @AR_INTR_SYNC_MAC_ASLEEP, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %230 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %228, %223
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @AR_INTR_SYNC_MAC_SLEEP_ACCESS, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %236
  %242 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %243 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %241, %236
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
