; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_pmc.c_wcn36xx_pmc_exit_bmps_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_pmc.c_wcn36xx_pmc_exit_bmps_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_vif = type { i64 }

@WCN36XX_BMPS = common dso_local global i64 0, align 8
@WCN36XX_DBG_PMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not in BMPS mode, no need to exit\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@WCN36XX_FULL_POWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_pmc_exit_bmps_state(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wcn36xx_vif*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %8 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %7)
  store %struct.wcn36xx_vif* %8, %struct.wcn36xx_vif** %6, align 8
  %9 = load i64, i64* @WCN36XX_BMPS, align 8
  %10 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %11 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @WCN36XX_DBG_PMC, align 4
  %16 = call i32 @wcn36xx_dbg(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EALREADY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %22 = call i32 @wcn36xx_smd_exit_bmps(%struct.wcn36xx* %20, %struct.ieee80211_vif* %21)
  %23 = load i64, i64* @WCN36XX_FULL_POWER, align 8
  %24 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i32 @wcn36xx_smd_exit_bmps(%struct.wcn36xx*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
