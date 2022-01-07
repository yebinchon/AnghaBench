; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ath6kl_vif = type { i64, i32, i32 }
%struct.ath6kl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i64*)* @ath6kl_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ath6kl_vif*, align 8
  %12 = alloca %struct.ath6kl*, align 8
  %13 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %15 = call %struct.ath6kl_vif* @ath6kl_vif_from_wdev(%struct.wireless_dev* %14)
  store %struct.ath6kl_vif* %15, %struct.ath6kl_vif** %11, align 8
  %16 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %17 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ath6kl* @ath6kl_priv(i32 %18)
  store %struct.ath6kl* %19, %struct.ath6kl** %12, align 8
  %20 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %21 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %28 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %26, %5
  %32 = load i64, i64* %13, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %38 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ath6kl_wmi_remain_on_chnl_cmd(i32 %36, i32 %39, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_from_wdev(%struct.wireless_dev*) #1

declare dso_local %struct.ath6kl* @ath6kl_priv(i32) #1

declare dso_local i32 @ath6kl_wmi_remain_on_chnl_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
