; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_mgmt_tx_params = type { i64, i32, i32, i32*, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.ath6kl_vif = type { i64, i64, i32, i32, i32, i32 }
%struct.ath6kl = type { i32 }
%struct.ieee80211_mgmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AP_NETWORK = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_mgmt_tx_params*, i64*)* @ath6kl_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_mgmt_tx(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_mgmt_tx_params* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_mgmt_tx_params*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ath6kl_vif*, align 8
  %11 = alloca %struct.ath6kl*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ieee80211_mgmt*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.cfg80211_mgmt_tx_params* %2, %struct.cfg80211_mgmt_tx_params** %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %23 = call %struct.ath6kl_vif* @ath6kl_vif_from_wdev(%struct.wireless_dev* %22)
  store %struct.ath6kl_vif* %23, %struct.ath6kl_vif** %10, align 8
  %24 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %25 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ath6kl* @ath6kl_priv(i32 %26)
  store %struct.ath6kl* %27, %struct.ath6kl** %11, align 8
  %28 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %29 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %28, i32 0, i32 4
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %29, align 8
  store %struct.ieee80211_channel* %30, %struct.ieee80211_channel** %12, align 8
  %31 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %32 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %13, align 8
  %34 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %35 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %38 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %15, align 4
  %40 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %41 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %44 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 8
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %47 = icmp ne %struct.ieee80211_channel* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %18, align 8
  br label %52

52:                                               ; preds = %48, %4
  %53 = load i64, i64* %18, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %142

61:                                               ; preds = %52
  %62 = load i32*, i32** %13, align 8
  %63 = bitcast i32* %62 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %63, %struct.ieee80211_mgmt** %19, align 8
  %64 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %65 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AP_NETWORK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %61
  %70 = load i32, i32* @CONNECTED, align 4
  %71 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %72 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %71, i32 0, i32 4
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ieee80211_is_probe_resp(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i32*, i32** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @ath6kl_is_p2p_go_ssid(i32* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i64*, i64** %9, align 8
  store i64 0, i64* %87, align 8
  %88 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %18, align 8
  %92 = call i32 @ath6kl_send_go_probe_resp(%struct.ath6kl_vif* %88, i32* %89, i64 %90, i64 %91)
  store i32 %92, i32* %5, align 4
  br label %142

93:                                               ; preds = %81, %75, %69, %61
  %94 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %95 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = sext i32 %96 to i64
  store i64 %98, i64* %17, align 8
  %99 = load i64, i64* %17, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %103 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = sext i32 %104 to i64
  store i64 %106, i64* %17, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = load i64, i64* %17, align 8
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  %110 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %111 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AP_NETWORK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @ath6kl_mgmt_powersave_ap(%struct.ath6kl_vif* %116, i64 %117, i64 %118, i32 %119, i32* %120, i64 %121, i32* %20, i32 %122)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %142

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %130 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %133 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @ath6kl_wmi_send_mgmt_cmd(i32 %131, i32 %134, i64 %135, i64 %136, i32 %137, i32* %138, i64 %139, i32 %140)
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %128, %126, %86, %58
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_from_wdev(%struct.wireless_dev*) #1

declare dso_local %struct.ath6kl* @ath6kl_priv(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ath6kl_is_p2p_go_ssid(i32*, i64) #1

declare dso_local i32 @ath6kl_send_go_probe_resp(%struct.ath6kl_vif*, i32*, i64, i64) #1

declare dso_local i32 @ath6kl_mgmt_powersave_ap(%struct.ath6kl_vif*, i64, i64, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_send_mgmt_cmd(i32, i32, i64, i64, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
