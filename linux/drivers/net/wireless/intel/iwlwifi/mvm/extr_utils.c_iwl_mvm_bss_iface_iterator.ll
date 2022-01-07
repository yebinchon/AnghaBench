; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_bss_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_bss_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_bss_iter_data = type { i32, %struct.ieee80211_vif* }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_bss_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bss_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_bss_iter_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iwl_bss_iter_data*
  store %struct.iwl_bss_iter_data* %9, %struct.iwl_bss_iter_data** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  br label %33

21:                                               ; preds = %15
  %22 = load %struct.iwl_bss_iter_data*, %struct.iwl_bss_iter_data** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_bss_iter_data, %struct.iwl_bss_iter_data* %22, i32 0, i32 1
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %23, align 8
  %25 = icmp ne %struct.ieee80211_vif* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.iwl_bss_iter_data*, %struct.iwl_bss_iter_data** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_bss_iter_data, %struct.iwl_bss_iter_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = load %struct.iwl_bss_iter_data*, %struct.iwl_bss_iter_data** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_bss_iter_data, %struct.iwl_bss_iter_data* %31, i32 0, i32 1
  store %struct.ieee80211_vif* %30, %struct.ieee80211_vif** %32, align 8
  br label %33

33:                                               ; preds = %29, %26, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
