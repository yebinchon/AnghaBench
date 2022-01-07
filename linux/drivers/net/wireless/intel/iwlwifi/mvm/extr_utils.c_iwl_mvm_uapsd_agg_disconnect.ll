; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_uapsd_agg_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_uapsd_agg_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_mvm_vif = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_AC_VO = common dso_local global i64 0, align 8
@IEEE80211_AC_VI = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@IEEE80211_AC_BK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"detected AP should do aggregation but isn't, likely due to U-APSD\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_uapsd_agg_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_uapsd_agg_disconnect(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %7 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %6)
  store %struct.iwl_mvm_vif* %7, %struct.iwl_mvm_vif** %5, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %90

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %90

21:                                               ; preds = %14
  %22 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i64, i64* @IEEE80211_AC_VO, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %21
  %31 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i64, i64* @IEEE80211_AC_VI, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %30
  %40 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* @IEEE80211_AC_BE, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %39
  %49 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i64, i64* @IEEE80211_AC_BK, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %90

58:                                               ; preds = %48, %39, %30, %21
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %90

72:                                               ; preds = %58
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %84 = call i32 @IWL_INFO(%struct.iwl_mvm* %83, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %85, i32 0, i32 1
  %87 = load i32, i32* @HZ, align 4
  %88 = mul nsw i32 15, %87
  %89 = call i32 @schedule_delayed_work(i32* %86, i32 %88)
  br label %90

90:                                               ; preds = %72, %71, %57, %20, %13
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
