; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_inc_num_stations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_inc_num_stations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, %struct.ath10k* }
%struct.ath10k = type { i64, i64, i32 }
%struct.ieee80211_sta = type { i32 }

@WMI_VDEV_TYPE_STA = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, %struct.ieee80211_sta*)* @ath10k_mac_inc_num_stations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_inc_num_stations(%struct.ath10k_vif* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_vif*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  %7 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %7, i32 0, i32 1
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %6, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WMI_VDEV_TYPE_STA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %40

24:                                               ; preds = %18, %2
  %25 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %32, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
