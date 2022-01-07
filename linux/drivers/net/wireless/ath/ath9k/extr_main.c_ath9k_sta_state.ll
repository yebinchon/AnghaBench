; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ath_common = type { i32 }

@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Add station: %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Remove station: %pM\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@ATH_CHANCTX_EVENT_AUTHORIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32)* @ath9k_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_sta_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath_softc*, align 8
  %12 = alloca %struct.ath_common*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  store %struct.ath_softc* %16, %struct.ath_softc** %11, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ath_common* @ath9k_hw_common(i32 %19)
  store %struct.ath_common* %20, %struct.ath_common** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %32 = call i32 @ath9k_sta_add(%struct.ieee80211_hw* %29, %struct.ieee80211_vif* %30, %struct.ieee80211_sta* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %34 = load i32, i32* @CONFIG, align 4
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ath_dbg(%struct.ath_common* %33, i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %59

39:                                               ; preds = %24, %5
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %51 = call i32 @ath9k_sta_remove(%struct.ieee80211_hw* %48, %struct.ieee80211_vif* %49, %struct.ieee80211_sta* %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %53 = load i32, i32* @CONFIG, align 4
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ath_dbg(%struct.ath_common* %52, i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %47, %43, %39
  br label %59

59:                                               ; preds = %58, %28
  %60 = call i64 (...) @ath9k_is_chanctx_enabled()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %79 = load i32, i32* @ATH_CHANCTX_EVENT_AUTHORIZED, align 4
  %80 = call i32 @ath_chanctx_event(%struct.ath_softc* %77, %struct.ieee80211_vif* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %72, %68
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_sta_add(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_sta_remove(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @ath_chanctx_event(%struct.ath_softc*, %struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
