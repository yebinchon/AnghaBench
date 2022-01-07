; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_inform_ibss_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_inform_ibss_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.mwifiex_bss_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cfg80211_bss = type { i32 }

@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@CFG80211_BSS_FTYPE_UNKNOWN = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*)* @mwifiex_cfg80211_inform_ibss_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_inform_ibss_bss(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.mwifiex_bss_info, align 4
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %12 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 4
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %18 = call i64 @mwifiex_get_bss_info(%struct.mwifiex_private* %17, %struct.mwifiex_bss_info* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load i32, i32* @WLAN_EID_SSID, align 4
  %23 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %22, i32* %23, align 16
  %24 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %16, i64 4
  %29 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %5, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32* %28, i32* %30, i32 %33)
  %35 = getelementptr inbounds i32, i32* %16, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mwifiex_band_to_radio_type(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %46 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ieee80211_channel_to_frequency(i32 %50, i32 %51)
  %53 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %48, i32 %52)
  store %struct.ieee80211_channel* %53, %struct.ieee80211_channel** %4, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %59 = load i32, i32* @CFG80211_BSS_FTYPE_UNKNOWN, align 4
  %60 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.cfg80211_bss* @cfg80211_inform_bss(i32 %57, %struct.ieee80211_channel* %58, i32 %59, i32 %61, i32 0, i32 %62, i32 0, i32* %16, i32 %63, i32 0, i32 %64)
  store %struct.cfg80211_bss* %65, %struct.cfg80211_bss** %6, align 8
  %66 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %67 = icmp ne %struct.cfg80211_bss* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %21
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %70 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %74 = call i32 @cfg80211_put_bss(i32 %72, %struct.cfg80211_bss* %73)
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %76 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ether_addr_copy(i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %68, %21
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %20
  %83 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mwifiex_get_bss_info(%struct.mwifiex_private*, %struct.mwifiex_bss_info*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @mwifiex_band_to_radio_type(i32) #2

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(i32, %struct.ieee80211_channel*, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #2

declare dso_local i32 @ether_addr_copy(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
