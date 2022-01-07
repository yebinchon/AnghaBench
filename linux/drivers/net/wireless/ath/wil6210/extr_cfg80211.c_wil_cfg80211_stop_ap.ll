; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_stop_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_stop_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.wil6210_priv = type { i32, i32 }
%struct.wil6210_vif = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"stop_ap, mid=%d\0A\00", align 1
@WIL_DEFAULT_BUS_REQUEST_KBPS = common dso_local global i32 0, align 4
@fw_recovery_idle = common dso_local global i32 0, align 4
@wil_status_resetting = common dso_local global i32 0, align 4
@wil_vif_ft_roam = common dso_local global i32 0, align 4
@WMI_MAX_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @wil_cfg80211_stop_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_stop_ap(%struct.wiphy* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %8)
  store %struct.wil6210_priv* %9, %struct.wil6210_priv** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %10)
  store %struct.wil6210_vif* %11, %struct.wil6210_vif** %6, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %13 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %14 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netif_carrier_off(%struct.net_device* %17)
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %19, %struct.net_device* %20, i32 0, i32 1)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %29 = load i32, i32* @WIL_DEFAULT_BUS_REQUEST_KBPS, align 4
  %30 = call i32 @wil6210_bus_request(%struct.wil6210_priv* %28, i32 %29)
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %32 = load i32, i32* @fw_recovery_idle, align 4
  %33 = call i32 @wil_set_recovery_state(%struct.wil6210_priv* %31, i32 %32)
  %34 = load i32, i32* @wil_status_resetting, align 4
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %36 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_bit(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %27, %2
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %41 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %44 = call i32 @wmi_pcp_stop(%struct.wil6210_vif* %43)
  %45 = load i32, i32* @wil_vif_ft_roam, align 4
  %46 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %47 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clear_bit(i32 %45, i32 %48)
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %51 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %53 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %52, i32 0, i32 7
  %54 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %55 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %54, i32 0, i32 6
  %56 = call i32 @wil_memdup_ie(i32* %53, i32* %55, i32* null, i32 0)
  %57 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %58 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %57, i32 0, i32 5
  %59 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %60 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %59, i32 0, i32 4
  %61 = call i32 @wil_memdup_ie(i32* %58, i32* %60, i32* null, i32 0)
  %62 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %63 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %62, i32 0, i32 3
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %65 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %64, i32 0, i32 2
  %66 = call i32 @wil_memdup_ie(i32* %63, i32* %65, i32* null, i32 0)
  %67 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %68 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WMI_MAX_KEY_LEN, align 4
  %71 = call i32 @memset(i32 %69, i32 0, i32 %70)
  %72 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %73 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %39
  %77 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %78 = call i32 @__wil_down(%struct.wil6210_priv* %77)
  br label %82

79:                                               ; preds = %39
  %80 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %81 = call i32 @wil_bcast_fini(%struct.wil6210_vif* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %84 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  ret i32 0
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @wil_has_other_active_ifaces(%struct.wil6210_priv*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @wil6210_bus_request(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_set_recovery_state(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wmi_pcp_stop(%struct.wil6210_vif*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @wil_memdup_ie(i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__wil_down(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_bcast_fini(%struct.wil6210_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
