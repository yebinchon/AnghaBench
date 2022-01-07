; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_bw_from_sta_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_bw_from_sta_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32, i32, %struct.ieee80211_sta_vht_cap }
%struct.ieee80211_sta_vht_cap = type { i32, i32 }
%struct.ieee80211_vht_cap = type { i32, i32 }

@IEEE80211_VHT_CHANWIDTH_160MHZ = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_160 = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sta*)* @rs_bw_from_sta_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_bw_from_sta_bw(%struct.ieee80211_sta* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %5 = alloca %struct.ieee80211_vht_cap, align 4
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  %6 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %6, i32 0, i32 2
  store %struct.ieee80211_sta_vht_cap* %7, %struct.ieee80211_sta_vht_cap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %5, i32 0, i32 0
  %9 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %5, i32 0, i32 1
  %13 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %36 [
    i32 131, label %20
    i32 128, label %31
    i32 129, label %33
    i32 130, label %35
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_160MHZ, align 4
  %22 = call i32 @ieee80211_get_vht_max_nss(%struct.ieee80211_vht_cap* %5, i32 %21, i32 0, i32 1)
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @RATE_MCS_CHAN_WIDTH_80, align 4
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %20
  %30 = load i32, i32* @RATE_MCS_CHAN_WIDTH_160, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @RATE_MCS_CHAN_WIDTH_80, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @RATE_MCS_CHAN_WIDTH_40, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %1, %35
  %37 = load i32, i32* @RATE_MCS_CHAN_WIDTH_20, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %33, %31, %29, %27
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ieee80211_get_vht_max_nss(%struct.ieee80211_vht_cap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
