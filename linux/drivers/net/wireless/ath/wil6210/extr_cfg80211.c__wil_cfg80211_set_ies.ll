; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_set_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_set_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_beacon_data = type { i32*, i32, i32*, i32, i32, i32*, i32, i32* }

@WMI_FRAME_PROBE_RESP = common dso_local global i32 0, align 4
@WMI_FRAME_ASSOC_RESP = common dso_local global i32 0, align 4
@WMI_FRAME_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_vif*, %struct.cfg80211_beacon_data*)* @_wil_cfg80211_set_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wil_cfg80211_set_ies(%struct.wil6210_vif* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.cfg80211_beacon_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %10, i32 0, i32 5
  %12 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %13 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %12, i32 0, i32 4
  %14 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %15 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @wil_memdup_ie(i32* %11, i32* %13, i32* %16, i32 %19)
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %22 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %21, i32 0, i32 3
  %23 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %24 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %23, i32 0, i32 2
  %25 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wil_memdup_ie(i32* %22, i32* %24, i32* %27, i32 %30)
  %32 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %33 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %32, i32 0, i32 1
  %34 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %35 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %34, i32 0, i32 0
  %36 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %37 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %40 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wil_memdup_ie(i32* %33, i32* %35, i32* %38, i32 %41)
  %43 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %47 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @_wil_cfg80211_get_proberesp_ies(i32* %45, i32 %48, i32* %7)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %53 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %56 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @_wil_cfg80211_merge_extra_ies(i32* %50, i32 %51, i32* %54, i32 %57, i32** %8, i32* %6)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %2
  br label %93

62:                                               ; preds = %2
  %63 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %64 = load i32, i32* @WMI_FRAME_PROBE_RESP, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @wmi_set_ie(%struct.wil6210_vif* %63, i32 %64, i32 %65, i32* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %93

71:                                               ; preds = %62
  %72 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %73 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %78 = load i32, i32* @WMI_FRAME_ASSOC_RESP, align 4
  %79 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %80 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %83 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @wmi_set_ie(%struct.wil6210_vif* %77, i32 %78, i32 %81, i32* %84)
  store i32 %85, i32* %5, align 4
  br label %92

86:                                               ; preds = %71
  %87 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %88 = load i32, i32* @WMI_FRAME_ASSOC_RESP, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @wmi_set_ie(%struct.wil6210_vif* %87, i32 %88, i32 %89, i32* %90)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %76
  br label %93

93:                                               ; preds = %92, %70, %61
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @wil_memdup_ie(i32*, i32*, i32*, i32) #1

declare dso_local i32* @_wil_cfg80211_get_proberesp_ies(i32*, i32, i32*) #1

declare dso_local i32 @_wil_cfg80211_merge_extra_ies(i32*, i32, i32*, i32, i32**, i32*) #1

declare dso_local i32 @wmi_set_ie(%struct.wil6210_vif*, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
