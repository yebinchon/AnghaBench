; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath_softc* }
%struct.ieee80211_conf = type { i32, i32 }
%struct.ath_softc = type { i32, i32, %struct.ath_hw*, i32, %struct.ath_chanctx* }
%struct.ath_hw = type { i32 }
%struct.ath_chanctx = type { i32, i32 }
%struct.ath_common = type { i32 }

@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Monitor mode is enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Monitor mode is disabled\0A\00", align 1
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath9k_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca %struct.ath_chanctx*, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %5, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  store %struct.ath_hw* %16, %struct.ath_hw** %6, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  store %struct.ieee80211_conf* %20, %struct.ieee80211_conf** %8, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 4
  %23 = load %struct.ath_chanctx*, %struct.ath_chanctx** %22, align 8
  store %struct.ath_chanctx* %23, %struct.ath_chanctx** %9, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %25 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %2
  %34 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %51 = call i32 @ath_cancel_work(%struct.ath_softc* %50)
  %52 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %53 = call i32 @ath9k_stop_btcoex(%struct.ath_softc* %52)
  br label %62

54:                                               ; preds = %33
  %55 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %56 = call i32 @ath9k_start_btcoex(%struct.ath_softc* %55)
  %57 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %58 = load %struct.ath_chanctx*, %struct.ath_chanctx** %9, align 8
  %59 = load %struct.ath_chanctx*, %struct.ath_chanctx** %9, align 8
  %60 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %59, i32 0, i32 1
  %61 = call i32 @ath_chanctx_set_channel(%struct.ath_softc* %57, %struct.ath_chanctx* %58, i32* %60)
  br label %62

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 3
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %81 = call i32 @ath9k_enable_ps(%struct.ath_softc* %80)
  br label %85

82:                                               ; preds = %68
  %83 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %84 = call i32 @ath9k_disable_ps(%struct.ath_softc* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %86, i32 0, i32 3
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %63
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  %96 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %104 = load i32, i32* @CONFIG, align 4
  %105 = call i32 @ath_dbg(%struct.ath_common* %103, i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %107 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %106, i32 0, i32 2
  %108 = load %struct.ath_hw*, %struct.ath_hw** %107, align 8
  %109 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %118

110:                                              ; preds = %95
  %111 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %112 = load i32, i32* @CONFIG, align 4
  %113 = call i32 @ath_dbg(%struct.ath_common* %111, i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %115 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %114, i32 0, i32 2
  %116 = load %struct.ath_hw*, %struct.ath_hw** %115, align 8
  %117 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %102
  br label %119

119:                                              ; preds = %118, %90
  %120 = call i32 (...) @ath9k_is_chanctx_enabled()
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %122
  %128 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %129 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = load %struct.ath_chanctx*, %struct.ath_chanctx** %9, align 8
  %138 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %140 = load %struct.ath_chanctx*, %struct.ath_chanctx** %9, align 8
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %142 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %142, i32 0, i32 1
  %144 = call i32 @ath_chanctx_set_channel(%struct.ath_softc* %139, %struct.ath_chanctx* %140, i32* %143)
  br label %145

145:                                              ; preds = %127, %122, %119
  %146 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %147 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %146, i32 0, i32 1
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %150 = call i32 @ath9k_ps_restore(%struct.ath_softc* %149)
  ret i32 0
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_stop_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_start_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @ath_chanctx_set_channel(%struct.ath_softc*, %struct.ath_chanctx*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath9k_enable_ps(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_disable_ps(%struct.ath_softc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
