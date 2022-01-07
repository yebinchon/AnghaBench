; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_scan.c_orinoco_add_extscan_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_scan.c_orinoco_add_extscan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32 }
%struct.agere_ext_scan_info = type { i32*, i32, i32, i32, i32, i32 }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i32 }

@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@CFG80211_BSS_FTYPE_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orinoco_add_extscan_result(%struct.orinoco_private* %0, %struct.agere_ext_scan_info* %1, i64 %2) #0 {
  %4 = alloca %struct.orinoco_private*, align 8
  %5 = alloca %struct.agere_ext_scan_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.cfg80211_bss*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %4, align 8
  store %struct.agere_ext_scan_info* %1, %struct.agere_ext_scan_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %19 = call %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private* %18)
  store %struct.wiphy* %19, %struct.wiphy** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 32
  store i64 %21, i64* %15, align 8
  %22 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %23 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %24 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i32* @cfg80211_find_ie(i32 %22, i32* %25, i64 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %39 = call i32 @ieee80211_channel_to_frequency(i32 %37, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %40, i32 %41)
  store %struct.ieee80211_channel* %42, %struct.ieee80211_channel** %8, align 8
  %43 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %44 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le64_to_cpu(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %48 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %52 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le16_to_cpu(i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %56 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %10, align 8
  %58 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %59 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SIGNAL_TO_MBM(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %64 = load i32, i32* @CFG80211_BSS_FTYPE_UNKNOWN, align 4
  %65 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %66 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy* %62, %struct.ieee80211_channel* %63, i32 %64, i32 %67, i32 %68, i32 %69, i32 %70, i32* %71, i64 %72, i32 %73, i32 %74)
  store %struct.cfg80211_bss* %75, %struct.cfg80211_bss** %9, align 8
  %76 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %77 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %78 = call i32 @cfg80211_put_bss(%struct.wiphy* %76, %struct.cfg80211_bss* %77)
  ret void
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private*) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SIGNAL_TO_MBM(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy*, %struct.ieee80211_channel*, i32, i32, i32, i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
