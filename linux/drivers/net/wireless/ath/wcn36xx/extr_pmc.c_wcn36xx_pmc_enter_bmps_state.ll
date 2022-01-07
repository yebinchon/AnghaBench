; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_pmc.c_wcn36xx_pmc_enter_bmps_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_pmc.c_wcn36xx_pmc_enter_bmps_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_vif = type { i32 }

@WCN36XX_DBG_PMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Entered BMPS\0A\00", align 1
@WCN36XX_BMPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Can not enter BMPS!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_pmc_enter_bmps_state(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcn36xx_vif*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %7)
  store %struct.wcn36xx_vif* %8, %struct.wcn36xx_vif** %6, align 8
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = call i32 @wcn36xx_smd_enter_bmps(%struct.wcn36xx* %9, %struct.ieee80211_vif* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @WCN36XX_DBG_PMC, align 4
  %16 = call i32 @wcn36xx_dbg(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @WCN36XX_BMPS, align 4
  %18 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %19 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %22

20:                                               ; preds = %2
  %21 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_smd_enter_bmps(%struct.wcn36xx*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
