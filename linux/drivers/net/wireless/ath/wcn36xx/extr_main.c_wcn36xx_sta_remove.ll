; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_sta = type { i32*, i32, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mac sta remove vif %p sta %pM index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @wcn36xx_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %10, align 8
  store %struct.wcn36xx* %11, %struct.wcn36xx** %7, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %13 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %12)
  store %struct.wcn36xx_sta* %13, %struct.wcn36xx_sta** %8, align 8
  %14 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %20 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @wcn36xx_dbg(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_vif* %15, i32 %18, i32 %21)
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %24 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %26, i32 0, i32 2
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %30 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @wcn36xx_smd_delete_sta(%struct.wcn36xx* %29, i32 %32)
  %34 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %37 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret i32 0
}

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wcn36xx_smd_delete_sta(%struct.wcn36xx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
