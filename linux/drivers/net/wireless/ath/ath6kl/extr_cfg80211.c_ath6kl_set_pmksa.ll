; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_pmksa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_pmksa = type { i32, i32 }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_pmksa*)* @ath6kl_set_pmksa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_pmksa(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_pmksa* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_pmksa*, align 8
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca %struct.ath6kl_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_pmksa* %2, %struct.cfg80211_pmksa** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ath6kl* @ath6kl_priv(%struct.net_device* %9)
  store %struct.ath6kl* %10, %struct.ath6kl** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %11)
  store %struct.ath6kl_vif* %12, %struct.ath6kl_vif** %8, align 8
  %13 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %14 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %17 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cfg80211_pmksa*, %struct.cfg80211_pmksa** %6, align 8
  %20 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cfg80211_pmksa*, %struct.cfg80211_pmksa** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ath6kl_wmi_setpmkid_cmd(i32 %15, i32 %18, i32 %21, i32 %24, i32 1)
  ret i32 %25
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ath6kl_wmi_setpmkid_cmd(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
