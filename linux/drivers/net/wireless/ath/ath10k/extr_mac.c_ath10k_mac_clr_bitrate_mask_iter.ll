; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_clr_bitrate_mask_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_clr_bitrate_mask_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_sta = type { %struct.ath10k_vif* }

@WMI_PEER_PARAM_FIXED_RATE = common dso_local global i32 0, align 4
@WMI_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to clear STA %pM peer fixed rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*)* @ath10k_mac_clr_bitrate_mask_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_clr_bitrate_mask_iter(i8* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.ath10k_vif*, align 8
  %6 = alloca %struct.ath10k_sta*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %10, %struct.ath10k_vif** %5, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %14, %struct.ath10k_sta** %6, align 8
  %15 = load %struct.ath10k_vif*, %struct.ath10k_vif** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %15, i32 0, i32 1
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %7, align 8
  %18 = load %struct.ath10k_sta*, %struct.ath10k_sta** %6, align 8
  %19 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %18, i32 0, i32 0
  %20 = load %struct.ath10k_vif*, %struct.ath10k_vif** %19, align 8
  %21 = load %struct.ath10k_vif*, %struct.ath10k_vif** %5, align 8
  %22 = icmp ne %struct.ath10k_vif* %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %2
  br label %50

30:                                               ; preds = %23
  %31 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %32 = load %struct.ath10k_vif*, %struct.ath10k_vif** %5, align 8
  %33 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WMI_PEER_PARAM_FIXED_RATE, align 4
  %39 = load i32, i32* @WMI_FIXED_RATE_NONE, align 4
  %40 = call i32 @ath10k_wmi_peer_set_param(%struct.ath10k* %31, i32 %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %29, %43, %30
  ret void
}

declare dso_local i32 @ath10k_wmi_peer_set_param(%struct.ath10k*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
