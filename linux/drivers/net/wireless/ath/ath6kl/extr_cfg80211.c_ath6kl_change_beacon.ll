; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_change_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_change_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_beacon_data = type { i32 }
%struct.ath6kl_vif = type { i64 }

@EIO = common dso_local global i32 0, align 4
@AP_NETWORK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_beacon_data*)* @ath6kl_change_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_change_beacon(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_beacon_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_beacon_data*, align 8
  %8 = alloca %struct.ath6kl_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_beacon_data* %2, %struct.cfg80211_beacon_data** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %9)
  store %struct.ath6kl_vif* %10, %struct.ath6kl_vif** %8, align 8
  %11 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %12 = call i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AP_NETWORK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %28 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %29 = call i32 @ath6kl_set_ies(%struct.ath6kl_vif* %27, %struct.cfg80211_beacon_data* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %23, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_set_ies(%struct.ath6kl_vif*, %struct.cfg80211_beacon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
