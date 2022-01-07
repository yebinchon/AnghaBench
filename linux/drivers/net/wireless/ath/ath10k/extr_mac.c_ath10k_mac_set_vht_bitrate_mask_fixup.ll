; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_vht_bitrate_mask_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_vht_bitrate_mask_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vif = type { i32, i32, i32 }
%struct.ieee80211_sta = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WMI_PEER_PARAM_FIXED_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to eanble STA %pM peer fixed rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_vif*, %struct.ieee80211_sta*)* @ath10k_mac_set_vht_bitrate_mask_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_set_vht_bitrate_mask_fixup(%struct.ath10k* %0, %struct.ath10k_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_vif* %1, %struct.ath10k_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %10 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %45

24:                                               ; preds = %18
  %25 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %26 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %27 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WMI_PEER_PARAM_FIXED_RATE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ath10k_wmi_peer_set_param(%struct.ath10k* %25, i32 %28, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ath10k_warn(%struct.ath10k* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %24
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ath10k_wmi_peer_set_param(%struct.ath10k*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
