; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_hw = type { i32 }
%struct.cfg80211_wowlan = type { i32 }
%struct.ath_common = type { i32 }

@ATH_OP_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Device not present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"None of the WoW triggers enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"WoW for multivif is not yet supported\0A\00", align 1
@ATH_OP_MULTI_CHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Multi-channel WOW is not supported\0A\00", align 1
@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"None of the STA vifs are associated\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"No valid WoW triggers\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Unable to add disassoc/deauth pattern: %d\0A\00", align 1
@AH_WOW_USER_PATTERN_EN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Unable to add user pattern: %d\0A\00", align 1
@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@ATH9K_INT_BMISS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Suspend with WoW triggers: 0x%x\0A\00", align 1
@ATH_OP_WOW_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_suspend(%struct.ieee80211_hw* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.cfg80211_wowlan*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  store %struct.ath_softc* %12, %struct.ath_softc** %5, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 6
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %6, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %19 = call i32 @ath9k_deinit_channel_context(%struct.ath_softc* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @ATH_OP_INVALID, align 4
  %24 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %30 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %172

33:                                               ; preds = %2
  %34 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %35 = icmp ne %struct.cfg80211_wowlan* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %42 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %172

45:                                               ; preds = %33
  %46 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %54 = load i32, i32* @WOW, align 4
  %55 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %53, i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %172

56:                                               ; preds = %45
  %57 = call i64 (...) @ath9k_is_chanctx_enabled()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* @ATH_OP_MULTI_CHANNEL, align 4
  %61 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %62 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %67 = load i32, i32* @WOW, align 4
  %68 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %66, i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %172

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %72 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %73 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %72, i32 0, i32 0
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %78 = load i32, i32* @WOW, align 4
  %79 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %77, i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %172

80:                                               ; preds = %70
  %81 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %82 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %83 = call i32 @ath9k_wow_map_triggers(%struct.ath_softc* %81, %struct.cfg80211_wowlan* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %88 = load i32, i32* @WOW, align 4
  %89 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %87, i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %172

90:                                               ; preds = %80
  %91 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %92 = call i32 @ath_cancel_work(%struct.ath_softc* %91)
  %93 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %94 = call i32 @ath_stop_ani(%struct.ath_softc* %93)
  %95 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %96 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %95)
  %97 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %98 = call i32 @ath9k_stop_btcoex(%struct.ath_softc* %97)
  %99 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %100 = call i32 @ath9k_wow_add_disassoc_deauth_pattern(%struct.ath_softc* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  br label %172

107:                                              ; preds = %90
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @AH_WOW_USER_PATTERN_EN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %114 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %115 = call i32 @ath9k_wow_add_pattern(%struct.ath_softc* %113, %struct.cfg80211_wowlan* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  br label %172

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %125 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %124, i32 0, i32 4
  %126 = call i32 @spin_lock_bh(i32* %125)
  %127 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %128 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %131 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %135 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %139 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %138)
  %140 = load i32, i32* @ATH9K_INT_BMISS, align 4
  %141 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %144 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %146 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %148 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %147)
  %149 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %150 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %149, i32 0, i32 4
  %151 = call i32 @spin_unlock_bh(i32* %150)
  %152 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %153 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @synchronize_irq(i32 %154)
  %156 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %157 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %156, i32 0, i32 2
  %158 = call i32 @tasklet_kill(i32* %157)
  %159 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @ath9k_hw_wow_enable(%struct.ath_hw* %159, i32 %160)
  %162 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %163 = call i32 @ath9k_ps_restore(%struct.ath_softc* %162)
  %164 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %165 = load i32, i32* @WOW, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %164, i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @ATH_OP_WOW_ENABLED, align 4
  %169 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %170 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %169, i32 0, i32 0
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %123, %118, %103, %86, %76, %65, %52, %40, %28
  %173 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %174 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %173, i32 0, i32 1
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_deinit_channel_context(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @ath9k_wow_map_triggers(%struct.ath_softc*, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i32 @ath_stop_ani(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_stop_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_wow_add_disassoc_deauth_pattern(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_wow_add_pattern(%struct.ath_softc*, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ath9k_hw_wow_enable(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
