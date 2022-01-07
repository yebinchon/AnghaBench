; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_check_he_obss_narrow_bw_ru_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_check_he_obss_narrow_bw_ru_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_bss = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm_he_obss_narrow_bw_ru_data = type { i32 }
%struct.element = type { i32, i32* }

@WLAN_EID_EXT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA10_OBSS_NARROW_BW_RU_TOLERANCE_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.cfg80211_bss*, i8*)* @iwl_mvm_check_he_obss_narrow_bw_ru_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_check_he_obss_narrow_bw_ru_iter(%struct.wiphy* %0, %struct.cfg80211_bss* %1, i8* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iwl_mvm_he_obss_narrow_bw_ru_data*, align 8
  %8 = alloca %struct.element*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.iwl_mvm_he_obss_narrow_bw_ru_data*
  store %struct.iwl_mvm_he_obss_narrow_bw_ru_data* %10, %struct.iwl_mvm_he_obss_narrow_bw_ru_data** %7, align 8
  %11 = load i32, i32* @WLAN_EID_EXT_CAPABILITY, align 4
  %12 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %18 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.element* @cfg80211_find_elem(i32 %11, i32 %16, i32 %21)
  store %struct.element* %22, %struct.element** %8, align 8
  %23 = load %struct.element*, %struct.element** %8, align 8
  %24 = icmp ne %struct.element* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load %struct.element*, %struct.element** %8, align 8
  %27 = getelementptr inbounds %struct.element, %struct.element* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.element*, %struct.element** %8, align 8
  %32 = getelementptr inbounds %struct.element, %struct.element* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WLAN_EXT_CAPA10_OBSS_NARROW_BW_RU_TOLERANCE_SUPPORT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30, %25, %3
  %40 = load %struct.iwl_mvm_he_obss_narrow_bw_ru_data*, %struct.iwl_mvm_he_obss_narrow_bw_ru_data** %7, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_he_obss_narrow_bw_ru_data, %struct.iwl_mvm_he_obss_narrow_bw_ru_data* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %30
  ret void
}

declare dso_local %struct.element* @cfg80211_find_elem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
