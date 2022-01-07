; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_is_bss_in_11ac_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_is_bss_in_11ac_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_bssdescriptor }
%struct.mwifiex_bssdescriptor = type { i32, %struct.ieee80211_vht_operation* }
%struct.ieee80211_vht_operation = type { i64 }

@IEEE80211_VHT_CHANWIDTH_USE_HT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_is_bss_in_11ac_mode(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %5 = alloca %struct.ieee80211_vht_operation*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mwifiex_bssdescriptor* %8, %struct.mwifiex_bssdescriptor** %4, align 8
  %9 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %10, align 8
  store %struct.ieee80211_vht_operation* %11, %struct.ieee80211_vht_operation** %5, align 8
  %12 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %4, align 8
  %13 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %18 = icmp ne %struct.ieee80211_vht_operation* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %16
  %21 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_VHT_CHANWIDTH_USE_HT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
