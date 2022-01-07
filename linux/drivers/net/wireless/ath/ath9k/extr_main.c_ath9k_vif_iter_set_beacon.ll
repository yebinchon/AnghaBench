; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_vif_iter_set_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_vif_iter_set_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_vif_iter_data = type { i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_vif_iter_data*, %struct.ieee80211_vif*)* @ath9k_vif_iter_set_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_vif_iter_set_beacon(%struct.ath9k_vif_iter_data* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath9k_vif_iter_data*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  store %struct.ath9k_vif_iter_data* %0, %struct.ath9k_vif_iter_data** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %5 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %3, align 8
  %6 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %5, i32 0, i32 2
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %8 = icmp ne %struct.ieee80211_vif* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %3, align 8
  %12 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %11, i32 0, i32 2
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %12, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %3, align 8
  %15 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %29 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %3, align 8
  %30 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %29, i32 0, i32 2
  store %struct.ieee80211_vif* %28, %struct.ieee80211_vif** %30, align 8
  br label %31

31:                                               ; preds = %27, %21, %13
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %3, align 8
  %34 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %3, align 8
  %36 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
