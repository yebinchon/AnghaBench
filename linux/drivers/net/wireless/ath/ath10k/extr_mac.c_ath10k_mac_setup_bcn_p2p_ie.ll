; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_setup_bcn_p2p_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_setup_bcn_p2p_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.TYPE_4__*, %struct.ath10k* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@WLAN_OUI_WFA = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_WFA_P2P = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to submit p2p go bcn ie for vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, %struct.sk_buff*)* @ath10k_mac_setup_bcn_p2p_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_setup_bcn_p2p_ie(%struct.ath10k_vif* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_vif*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %10, i32 0, i32 2
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %6, align 8
  %13 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %78

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %33, %struct.ieee80211_mgmt** %7, align 8
  %34 = load i32, i32* @WLAN_OUI_WFA, align 4
  %35 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = sub nsw i64 %43, %52
  %54 = call i32* @cfg80211_find_vendor_ie(i32 %34, i32 %35, i64 %40, i64 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %28
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %28
  %61 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %62 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %63 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @ath10k_wmi_p2p_go_bcn_ie(%struct.ath10k* %61, i32 %64, i32* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %71 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %72 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ath10k_warn(%struct.ath10k* %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %69, %57, %27
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32* @cfg80211_find_vendor_ie(i32, i32, i64, i64) #1

declare dso_local i32 @ath10k_wmi_p2p_go_bcn_ie(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
