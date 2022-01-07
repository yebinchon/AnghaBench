; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tdls_vif_stations_count_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tdls_vif_stations_count_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i64, i64 }
%struct.ath10k_mac_tdls_iter_data = type { i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.ath10k_sta = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_vif* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*)* @ath10k_mac_tdls_vif_stations_count_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_tdls_vif_stations_count_iter(i8* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.ath10k_mac_tdls_iter_data*, align 8
  %6 = alloca %struct.ath10k_sta*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ath10k_mac_tdls_iter_data*
  store %struct.ath10k_mac_tdls_iter_data* %9, %struct.ath10k_mac_tdls_iter_data** %5, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %13, %struct.ath10k_sta** %6, align 8
  %14 = load %struct.ath10k_sta*, %struct.ath10k_sta** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %17, align 8
  store %struct.ieee80211_vif* %18, %struct.ieee80211_vif** %7, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %25 = load %struct.ath10k_mac_tdls_iter_data*, %struct.ath10k_mac_tdls_iter_data** %5, align 8
  %26 = getelementptr inbounds %struct.ath10k_mac_tdls_iter_data, %struct.ath10k_mac_tdls_iter_data* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %26, align 8
  %28 = icmp eq %struct.ieee80211_vif* %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.ath10k_mac_tdls_iter_data*, %struct.ath10k_mac_tdls_iter_data** %5, align 8
  %31 = getelementptr inbounds %struct.ath10k_mac_tdls_iter_data, %struct.ath10k_mac_tdls_iter_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %29, %23, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
