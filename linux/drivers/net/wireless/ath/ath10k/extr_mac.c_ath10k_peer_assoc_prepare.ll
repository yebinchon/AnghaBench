; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_peer_assoc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_peer_assoc_prepare(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.wmi_peer_assoc_complete_arg* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.wmi_peer_assoc_complete_arg* %3, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %13 = call i32 @memset(%struct.wmi_peer_assoc_complete_arg* %12, i32 0, i32 4)
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %18 = call i32 @ath10k_peer_assoc_h_basic(%struct.ath10k* %14, %struct.ieee80211_vif* %15, %struct.ieee80211_sta* %16, %struct.wmi_peer_assoc_complete_arg* %17)
  %19 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %22 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %23 = call i32 @ath10k_peer_assoc_h_crypto(%struct.ath10k* %19, %struct.ieee80211_vif* %20, %struct.ieee80211_sta* %21, %struct.wmi_peer_assoc_complete_arg* %22)
  %24 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %28 = call i32 @ath10k_peer_assoc_h_rates(%struct.ath10k* %24, %struct.ieee80211_vif* %25, %struct.ieee80211_sta* %26, %struct.wmi_peer_assoc_complete_arg* %27)
  %29 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %32 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %33 = call i32 @ath10k_peer_assoc_h_ht(%struct.ath10k* %29, %struct.ieee80211_vif* %30, %struct.ieee80211_sta* %31, %struct.wmi_peer_assoc_complete_arg* %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %37 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %38 = call i32 @ath10k_peer_assoc_h_vht(%struct.ath10k* %34, %struct.ieee80211_vif* %35, %struct.ieee80211_sta* %36, %struct.wmi_peer_assoc_complete_arg* %37)
  %39 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %42 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %43 = call i32 @ath10k_peer_assoc_h_qos(%struct.ath10k* %39, %struct.ieee80211_vif* %40, %struct.ieee80211_sta* %41, %struct.wmi_peer_assoc_complete_arg* %42)
  %44 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %47 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %48 = call i32 @ath10k_peer_assoc_h_phymode(%struct.ath10k* %44, %struct.ieee80211_vif* %45, %struct.ieee80211_sta* %46, %struct.wmi_peer_assoc_complete_arg* %47)
  ret i32 0
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(%struct.wmi_peer_assoc_complete_arg*, i32, i32) #1

declare dso_local i32 @ath10k_peer_assoc_h_basic(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_peer_assoc_h_crypto(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_peer_assoc_h_rates(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_peer_assoc_h_ht(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_peer_assoc_h_vht(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_peer_assoc_h_qos(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_peer_assoc_h_phymode(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
