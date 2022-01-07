; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_set_ht_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_set_ht_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mwifiex_uap_bss_param = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.cfg80211_ap_settings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@MWIFIEX_DEF_HT_CAP = common dso_local global i32 0, align 4
@MWIFIEX_DEF_AMPDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_set_ht_params(%struct.mwifiex_private* %0, %struct.mwifiex_uap_bss_param* %1, %struct.cfg80211_ap_settings* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_uap_bss_param*, align 8
  %6 = alloca %struct.cfg80211_ap_settings*, align 8
  %7 = alloca i32*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_uap_bss_param* %1, %struct.mwifiex_uap_bss_param** %5, align 8
  store %struct.cfg80211_ap_settings* %2, %struct.cfg80211_ap_settings** %6, align 8
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ISSUPP_11NENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %51

16:                                               ; preds = %3
  %17 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %18 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %19 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @cfg80211_find_ie(i32 %17, i32 %21, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %31 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %30, i32 0, i32 0
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = call i32 @memcpy(%struct.TYPE_7__* %31, i32* %33, i32 4)
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %50

37:                                               ; preds = %16
  %38 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %39 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %38, i32 0, i32 0
  %40 = call i32 @memset(%struct.TYPE_7__* %39, i32 0, i32 4)
  %41 = load i32, i32* @MWIFIEX_DEF_HT_CAP, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %44 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @MWIFIEX_DEF_AMPDU, align 4
  %47 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %48 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %37, %29
  br label %51

51:                                               ; preds = %50, %15
  ret void
}

declare dso_local i32 @ISSUPP_11NENABLED(i32) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
