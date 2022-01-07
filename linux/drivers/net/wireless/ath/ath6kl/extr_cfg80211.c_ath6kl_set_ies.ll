; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32, i32, i32, i32, i32 }

@WMI_FRAME_BEACON = common dso_local global i32 0, align 4
@WMI_FRAME_ASSOC_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, %struct.cfg80211_beacon_data*)* @ath6kl_set_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_ies(%struct.ath6kl_vif* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca %struct.cfg80211_beacon_data*, align 8
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %5, align 8
  %8 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %9 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %8, i32 0, i32 1
  %10 = load %struct.ath6kl*, %struct.ath6kl** %9, align 8
  store %struct.ath6kl* %10, %struct.ath6kl** %6, align 8
  %11 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WMI_FRAME_BEACON, align 4
  %18 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %19 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ath6kl_wmi_set_appie_cmd(i32 %13, i32 %16, i32 %17, i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %2
  %30 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %31 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %32 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %35 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ath6kl_set_ap_probe_resp_ies(%struct.ath6kl_vif* %30, i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %29
  %43 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %47 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WMI_FRAME_ASSOC_RESP, align 4
  %50 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %51 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %54 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ath6kl_wmi_set_appie_cmd(i32 %45, i32 %48, i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %40, %27
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ath6kl_wmi_set_appie_cmd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_set_ap_probe_resp_ies(%struct.ath6kl_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
