; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_get_max_amsdu_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_get_max_amsdu_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap }
%struct.ieee80211_sta_ht_cap = type { i32, i64 }
%struct.ieee80211_sta_vht_cap = type { i32, i64 }

@IEEE80211_VHT_CAP_MAX_MPDU_MASK = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_VHT_11454 = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_VHT_7991 = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_VHT_3895 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_HT_BA = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_HT_3839 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sta*)* @rs_fw_get_max_amsdu_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_fw_get_max_amsdu_len(%struct.ieee80211_sta* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %5 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  %6 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %6, i32 0, i32 1
  store %struct.ieee80211_sta_vht_cap* %7, %struct.ieee80211_sta_vht_cap** %4, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %9, %struct.ieee80211_sta_ht_cap** %5, align 8
  %10 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_VHT_11454, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_VHT_7991, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %14
  %25 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_VHT_3895, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_HT_BA, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_HT_3839, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %38, %24, %22, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
