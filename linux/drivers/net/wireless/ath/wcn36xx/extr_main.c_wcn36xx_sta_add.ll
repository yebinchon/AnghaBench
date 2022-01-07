; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i32 }
%struct.wcn36xx_vif = type { i32 }
%struct.wcn36xx_sta = type { i32, i32, %struct.wcn36xx_vif*, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mac sta add vif %p sta %pM\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @wcn36xx_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.wcn36xx_vif*, align 8
  %9 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %11, align 8
  store %struct.wcn36xx* %12, %struct.wcn36xx** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %13)
  store %struct.wcn36xx_vif* %14, %struct.wcn36xx_vif** %8, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %16 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %15)
  store %struct.wcn36xx_sta* %16, %struct.wcn36xx_sta** %9, align 8
  %17 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wcn36xx_dbg(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_vif* %18, i32 %21)
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %24 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %9, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %8, align 8
  %30 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %9, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %30, i32 0, i32 2
  store %struct.wcn36xx_vif* %29, %struct.wcn36xx_vif** %31, align 8
  %32 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %9, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %32, i32 0, i32 1
  %34 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %8, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %34, i32 0, i32 0
  %36 = call i32 @list_add(i32* %33, i32* %35)
  %37 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %3
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %44 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %45 = call i32 @WCN36XX_BAND(%struct.wcn36xx* %44)
  %46 = call i32 @wcn36xx_update_allowed_rates(%struct.ieee80211_sta* %43, i32 %45)
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %9, align 8
  %51 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %55 = call i32 @wcn36xx_smd_config_sta(%struct.wcn36xx* %52, %struct.ieee80211_vif* %53, %struct.ieee80211_sta* %54)
  br label %56

56:                                               ; preds = %42, %3
  %57 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %58 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret i32 0
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wcn36xx_update_allowed_rates(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @WCN36XX_BAND(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_config_sta(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
