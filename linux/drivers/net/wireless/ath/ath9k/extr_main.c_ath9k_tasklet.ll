; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i64, i32, i32, %struct.ath_hw*, i32, i32, i64, i32 }
%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_INT_FATAL = common dso_local global i32 0, align 4
@RESET_TYPE_FATAL_INT = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FATAL: Skipping interrupts\0A\00", align 1
@HW_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@RESET_TYPE_BB_WATCHDOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"BB_WATCHDOG: Skipping interrupts\0A\00", align 1
@ATH9K_INT_GTT = common dso_local global i32 0, align 4
@MAX_GTT_CNT = common dso_local global i64 0, align 8
@RESET_TYPE_TX_GTT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GTT: Skipping interrupts\0A\00", align 1
@ATH9K_INT_TSFOOR = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"TSFOOR - Sync with next Beacon\0A\00", align 1
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH9K_INT_RXHP = common dso_local global i32 0, align 4
@ATH9K_INT_RXLP = common dso_local global i32 0, align 4
@ATH9K_INT_RXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RXORN = common dso_local global i32 0, align 4
@ATH9K_INT_RX = common dso_local global i32 0, align 4
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@ATH9K_INT_GENTIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.ath_softc*
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %4, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %30)
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 3
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load i32, i32* @RESET_TYPE_FATAL_INT, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ath9k_queue_reset(%struct.ath_softc* %41, i32 %42)
  %44 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %45 = load i32, i32* @RESET, align 4
  %46 = call i32 @ath_dbg(%struct.ath_common* %44, i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %229

47:                                               ; preds = %1
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HW_BB_WATCHDOG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %62 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %61, i32 0, i32 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %66 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %68 = call i32 @ar9003_hw_bb_watchdog_dbg_info(%struct.ath_hw* %67)
  %69 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %70 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %69, i32 0, i32 0
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %74 = call i64 @ar9003_hw_bb_watchdog_check(%struct.ath_hw* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load i32, i32* @RESET_TYPE_BB_WATCHDOG, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ath9k_queue_reset(%struct.ath_softc* %78, i32 %79)
  %81 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %82 = load i32, i32* @RESET, align 4
  %83 = call i32 @ath_dbg(%struct.ath_common* %81, i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %229

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %55, %47
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ATH9K_INT_GTT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MAX_GTT_CNT, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = call i32 @ath9k_hw_check_alive(%struct.ath_hw* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @RESET_TYPE_TX_GTT, align 4
  store i32 %105, i32* %6, align 4
  %106 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @ath9k_queue_reset(%struct.ath_softc* %106, i32 %107)
  %109 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %110 = load i32, i32* @RESET, align 4
  %111 = call i32 @ath_dbg(%struct.ath_common* %109, i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %229

112:                                              ; preds = %100, %90
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %114, i32 0, i32 6
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %129 = load i32, i32* @PS, align 4
  %130 = call i32 @ath_dbg(%struct.ath_common* %128, i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %132 = load i32, i32* @PS_BEACON_SYNC, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %127, %122, %113
  %139 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %139, i32 0, i32 6
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %144 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %138
  %151 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %152 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %9, align 4
  br label %164

158:                                              ; preds = %138
  %159 = load i32, i32* @ATH9K_INT_RX, align 4
  %160 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %158, %150
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %164
  %170 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %171 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %184 = call i32 @ath_rx_tasklet(%struct.ath_softc* %183, i32 0, i32 1)
  br label %185

185:                                              ; preds = %182, %177, %169
  %186 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %187 = call i32 @ath_rx_tasklet(%struct.ath_softc* %186, i32 0, i32 0)
  br label %188

188:                                              ; preds = %185, %164
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @ATH9K_INT_TX, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %188
  %194 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %195 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %203 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %205 = call i32 @ath_tx_edma_tasklet(%struct.ath_softc* %204)
  br label %209

206:                                              ; preds = %193
  %207 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %208 = call i32 @ath_tx_tasklet(%struct.ath_softc* %207)
  br label %209

209:                                              ; preds = %206, %201
  %210 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %210, i32 0, i32 5
  %212 = call i32 @wake_up(i32* %211)
  br label %213

213:                                              ; preds = %209, %188
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %219, i32 0, i32 4
  %221 = load %struct.ath_hw*, %struct.ath_hw** %220, align 8
  %222 = call i32 @ath_gen_timer_isr(%struct.ath_hw* %221)
  br label %223

223:                                              ; preds = %218, %213
  %224 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @ath9k_btcoex_handle_interrupt(%struct.ath_softc* %224, i32 %225)
  %227 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %228 = call i32 @ath9k_hw_resume_interrupts(%struct.ath_hw* %227)
  br label %229

229:                                              ; preds = %223, %104, %76, %39
  %230 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %231 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %230, i32 0, i32 3
  %232 = call i32 @spin_unlock(i32* %231)
  %233 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %234 = call i32 @ath9k_ps_restore(%struct.ath_softc* %233)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @ar9003_hw_bb_watchdog_dbg_info(%struct.ath_hw*) #1

declare dso_local i64 @ar9003_hw_bb_watchdog_check(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_check_alive(%struct.ath_hw*) #1

declare dso_local i32 @ath_rx_tasklet(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_tx_edma_tasklet(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_tasklet(%struct.ath_softc*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ath_gen_timer_isr(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_btcoex_handle_interrupt(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_resume_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
