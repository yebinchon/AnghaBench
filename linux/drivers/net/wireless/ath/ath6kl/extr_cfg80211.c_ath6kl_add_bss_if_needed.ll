; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_add_bss_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_add_bss_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32 }
%struct.ath6kl_vif = type { i64*, i64, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ieee80211_channel = type { i32 }

@ADHOC_NETWORK = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_ESS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i64 0, align 8
@CFG80211_BSS_FTYPE_UNKNOWN = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"added bss %pM to cfg80211\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cfg80211 already has a bss\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_bss* (%struct.ath6kl_vif*, i32, i64*, %struct.ieee80211_channel*, i64*, i64)* @ath6kl_add_bss_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_bss* @ath6kl_add_bss_if_needed(%struct.ath6kl_vif* %0, i32 %1, i64* %2, %struct.ieee80211_channel* %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.cfg80211_bss*, align 8
  %8 = alloca %struct.ath6kl_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ath6kl*, align 8
  %15 = alloca %struct.cfg80211_bss*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %20 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %19, i32 0, i32 2
  %21 = load %struct.ath6kl*, %struct.ath6kl** %20, align 8
  store %struct.ath6kl* %21, %struct.ath6kl** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ADHOC_NETWORK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* @IEEE80211_BSS_TYPE_IBSS, align 4
  store i32 %28, i32* %17, align 4
  br label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* @IEEE80211_BSS_TYPE_ESS, align 4
  store i32 %31, i32* %17, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.ath6kl*, %struct.ath6kl** %14, align 8
  %34 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %39 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %42 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %46 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %35, %struct.ieee80211_channel* %36, i64* %37, i64* %40, i64 %43, i32 %44, i32 %45)
  store %struct.cfg80211_bss* %46, %struct.cfg80211_bss** %15, align 8
  %47 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %15, align 8
  %48 = icmp eq %struct.cfg80211_bss* %47, null
  br i1 %48, label %49, label %114

49:                                               ; preds = %32
  %50 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %51 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 2, %52
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %53, %54
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i64* @kmalloc(i64 %55, i32 %56)
  store i64* %57, i64** %18, align 8
  %58 = load i64*, i64** %18, align 8
  %59 = icmp eq i64* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %7, align 8
  br label %119

61:                                               ; preds = %49
  %62 = load i64, i64* @WLAN_EID_SSID, align 8
  %63 = load i64*, i64** %18, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %66 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %18, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %67, i64* %69, align 8
  %70 = load i64*, i64** %18, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  %72 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %73 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %76 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i64* %71, i64* %74, i64 %77)
  %79 = load i64*, i64** %18, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %82 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64*, i64** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @memcpy(i64* %84, i64* %85, i64 %86)
  %88 = load %struct.ath6kl*, %struct.ath6kl** %14, align 8
  %89 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %92 = load i32, i32* @CFG80211_BSS_FTYPE_UNKNOWN, align 4
  %93 = load i64*, i64** %10, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i64*, i64** %18, align 8
  %96 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %97 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 2, %98
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.cfg80211_bss* @cfg80211_inform_bss(i32 %90, %struct.ieee80211_channel* %91, i32 %92, i64* %93, i32 0, i32 %94, i32 100, i64* %95, i32 %102, i32 0, i32 %103)
  store %struct.cfg80211_bss* %104, %struct.cfg80211_bss** %15, align 8
  %105 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %15, align 8
  %106 = icmp ne %struct.cfg80211_bss* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %61
  %108 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %109 = load i64*, i64** %10, align 8
  %110 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64* %109)
  br label %111

111:                                              ; preds = %107, %61
  %112 = load i64*, i64** %18, align 8
  %113 = call i32 @kfree(i64* %112)
  br label %117

114:                                              ; preds = %32
  %115 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %116 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %15, align 8
  store %struct.cfg80211_bss* %118, %struct.cfg80211_bss** %7, align 8
  br label %119

119:                                              ; preds = %117, %60
  %120 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  ret %struct.cfg80211_bss* %120
}

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, %struct.ieee80211_channel*, i64*, i64*, i64, i32, i32) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(i32, %struct.ieee80211_channel*, i32, i64*, i32, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
