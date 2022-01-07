; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_reg_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_reg_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32 }
%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i64, i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_5__ = type { i32 }

@CONFIG_ATH10K_DFS_CERTIFIED = common dso_local global i32 0, align 4
@ATH10K_DBG_REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dfs region 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"DFS region 0x%X not supported, will trigger radar for every pulse\0A\00", align 1
@ATH10K_STATE_ON = common dso_local global i64 0, align 8
@WHAL_WLAN_11A_CAPABILITY = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @ath10k_reg_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_reg_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %8)
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %6, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %14 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @ath_reg_notifier_apply(%struct.wiphy* %13, %struct.regulatory_request* %14, i32* %17)
  %19 = load i32, i32* @CONFIG_ATH10K_DFS_CERTIFIED, align 4
  %20 = call i64 @IS_ENABLED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %2
  %23 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %30 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %31 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ath10k_dbg(%struct.ath10k* %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %37, align 8
  %39 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %43 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %38(%struct.TYPE_8__* %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %27
  %49 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %50 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %51 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ath10k_warn(%struct.ath10k* %49, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %27
  br label %55

55:                                               ; preds = %54, %22, %2
  %56 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 3
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %60 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATH10K_STATE_ON, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %66 = call i32 @ath10k_regd_update(%struct.ath10k* %65)
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %69 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %68, i32 0, i32 3
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WHAL_WLAN_11A_CAPABILITY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %79 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ath10k_mac_update_channel_list(%struct.ath10k* %78, i32 %88)
  br label %90

90:                                               ; preds = %77, %67
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local i32 @ath_reg_notifier_apply(%struct.wiphy*, %struct.regulatory_request*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_regd_update(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath10k_mac_update_channel_list(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
