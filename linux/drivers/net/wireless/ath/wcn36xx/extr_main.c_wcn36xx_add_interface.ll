; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.wcn36xx_vif = type { i32, i32, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mac add interface vif %p type %d\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Unsupported interface type requested: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WCN36XX_HAL_BSS_INVALID_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wcn36xx_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wcn36xx*, align 8
  %7 = alloca %struct.wcn36xx_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  store %struct.wcn36xx* %10, %struct.wcn36xx** %6, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %11)
  store %struct.wcn36xx_vif* %12, %struct.wcn36xx_vif** %7, align 8
  %13 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @wcn36xx_dbg(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_vif* %14, i64 %17)
  %19 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %49, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %49, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %36, %30, %24, %2
  %50 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %51 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load i32, i32* @WCN36XX_HAL_BSS_INVALID_IDX, align 4
  %54 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %7, align 8
  %55 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %7, align 8
  %57 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %56, i32 0, i32 1
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %7, align 8
  %60 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %59, i32 0, i32 0
  %61 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %62 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %61, i32 0, i32 1
  %63 = call i32 @list_add(i32* %60, i32* %62)
  %64 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %66 = call i32 @wcn36xx_smd_add_sta_self(%struct.wcn36xx* %64, %struct.ieee80211_vif* %65)
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %68 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %49, %42
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, %struct.ieee80211_vif*, i64) #1

declare dso_local i32 @wcn36xx_warn(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wcn36xx_smd_add_sta_self(%struct.wcn36xx*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
