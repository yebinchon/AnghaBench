; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_5__, %struct.ath_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.ath_softc = type { i32, i32, %struct.ath_hw*, i32, %struct.ath_chanctx* }
%struct.ath_hw = type { i32, i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ath_chanctx = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_channel = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Starting driver with initial channel: %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to reset hardware; reset status %d (freq %u MHz)\0A\00", align 1
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@ATH9K_INT_RXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RXORN = common dso_local global i32 0, align 4
@ATH9K_INT_FATAL = common dso_local global i32 0, align 4
@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH9K_INT_RXHP = common dso_local global i32 0, align 4
@ATH9K_INT_RXLP = common dso_local global i32 0, align 4
@ATH9K_INT_RX = common dso_local global i32 0, align 4
@HW_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_INT_GTT = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_HT = common dso_local global i32 0, align 4
@ATH9K_INT_CST = common dso_local global i32 0, align 4
@ATH_OP_INVALID = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath9k_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ath_chanctx*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 1
  %12 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  store %struct.ath_softc* %12, %struct.ath_softc** %3, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %4, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %5, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 4
  %20 = load %struct.ath_chanctx*, %struct.ath_chanctx** %19, align 8
  %21 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, align 8
  store %struct.ieee80211_channel* %23, %struct.ieee80211_channel** %6, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 4
  %26 = load %struct.ath_chanctx*, %struct.ath_chanctx** %25, align 8
  store %struct.ath_chanctx* %26, %struct.ath_chanctx** %7, align 8
  %27 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %28 = load i32, i32* @CONFIG, align 4
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ath_dbg(%struct.ath_common* %27, i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %34 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %33)
  %35 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = load %struct.ath_chanctx*, %struct.ath_chanctx** %7, align 8
  %41 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %40, i32 0, i32 0
  %42 = call %struct.ath9k_channel* @ath9k_cmn_get_channel(%struct.ieee80211_hw* %38, %struct.ath_hw* %39, %struct.TYPE_8__* %41)
  store %struct.ath9k_channel* %42, %struct.ath9k_channel** %8, align 8
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %50 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %49, i32 0)
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 7
  %56 = call i32 @atomic_set(i32* %55, i32 -1)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %58 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ath9k_hw_reset(%struct.ath_hw* %57, %struct.ath9k_channel* %58, i32 %61, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %1
  %66 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ath_err(%struct.ath_common* %66, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %65, %1
  %75 = load i32, i32* @ATH9K_INT_TX, align 4
  %76 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %74
  %94 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %95 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %107

101:                                              ; preds = %74
  %102 = load i32, i32* @ATH9K_INT_RX, align 4
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %109 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HW_BB_WATCHDOG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %117 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %118 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %107
  %122 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %123 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* @ATH9K_INT_GTT, align 4
  %127 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %128 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %121
  %132 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %133 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load i32, i32* @ATH9K_INT_CST, align 4
  %141 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %142 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %131
  %146 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %147 = call i32 @ath_mci_enable(%struct.ath_softc* %146)
  %148 = load i32, i32* @ATH_OP_INVALID, align 4
  %149 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %150 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %149, i32 0, i32 0
  %151 = call i32 @clear_bit(i32 %148, i32* %150)
  %152 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %153 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %152, i32 0, i32 2
  %154 = load %struct.ath_hw*, %struct.ath_hw** %153, align 8
  %155 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %154, i32 0, i32 2
  store i32 0, i32* %155, align 8
  %156 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %157 = call i32 @ath_complete_reset(%struct.ath_softc* %156, i32 0)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %145
  %160 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %161 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %145
  %163 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %164 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp sge i64 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %162
  %168 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %169 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %170 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %173 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  %179 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %168, i64 %171, i32 %178)
  %180 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %181 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %182 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %185 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %180, i64 %183, i32* null, i32 %184)
  br label %186

186:                                              ; preds = %167, %162
  %187 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %188 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %187, i32 0, i32 2
  %189 = load %struct.ath_hw*, %struct.ath_hw** %188, align 8
  %190 = call i32 @ath9k_cmn_init_crypto(%struct.ath_hw* %189)
  %191 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %192 = call i32 @ath9k_hw_reset_tsf(%struct.ath_hw* %191)
  %193 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %194 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %193, i32 0, i32 1
  %195 = call i32 @spin_unlock_bh(i32* %194)
  %196 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %197 = call i32 @ath9k_rng_start(%struct.ath_softc* %196)
  %198 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %199 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %202 = call i32 @ath9k_ps_restore(%struct.ath_softc* %201)
  ret i32 0
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ath9k_channel* @ath9k_cmn_get_channel(%struct.ieee80211_hw*, %struct.ath_hw*, %struct.TYPE_8__*) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath_mci_enable(%struct.ath_softc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath_complete_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_gpio_request_out(%struct.ath_hw*, i64, i32*, i32) #1

declare dso_local i32 @ath9k_cmn_init_crypto(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_reset_tsf(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_rng_start(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
