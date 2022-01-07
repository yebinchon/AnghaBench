; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_bitrate_mask = type { i32 }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.cfg80211_bitrate_mask*)* @ath6kl_cfg80211_set_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_set_bitrate(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.cfg80211_bitrate_mask* %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %9 = alloca %struct.ath6kl*, align 8
  %10 = alloca %struct.ath6kl_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.cfg80211_bitrate_mask* %3, %struct.cfg80211_bitrate_mask** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ath6kl* @ath6kl_priv(%struct.net_device* %11)
  store %struct.ath6kl* %12, %struct.ath6kl** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %13)
  store %struct.ath6kl_vif* %14, %struct.ath6kl_vif** %10, align 8
  %15 = load %struct.ath6kl*, %struct.ath6kl** %9, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %22 = call i32 @ath6kl_wmi_set_bitrate_mask(i32 %17, i32 %20, %struct.cfg80211_bitrate_mask* %21)
  ret i32 %22
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ath6kl_wmi_set_bitrate_mask(i32, i32, %struct.cfg80211_bitrate_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
