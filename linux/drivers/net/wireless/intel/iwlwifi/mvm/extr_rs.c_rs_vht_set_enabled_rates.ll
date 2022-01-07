; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_vht_set_enabled_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_vht_set_enabled_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i64, i32 }
%struct.ieee80211_sta_vht_cap = type { i32 }
%struct.iwl_lq_sta = type { i32, i32 }

@IWL_RATE_MCS_0_INDEX = common dso_local global i32 0, align 4
@IWL_RATE_9M_INDEX = common dso_local global i32 0, align 4
@IWL_RATE_MCS_9_INDEX = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta*, %struct.ieee80211_sta_vht_cap*, %struct.iwl_lq_sta*)* @rs_vht_set_enabled_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_vht_set_enabled_rates(%struct.ieee80211_sta* %0, %struct.ieee80211_sta_vht_cap* %1, %struct.iwl_lq_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %6 = alloca %struct.iwl_lq_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %4, align 8
  store %struct.ieee80211_sta_vht_cap* %1, %struct.ieee80211_sta_vht_cap** %5, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %6, align 8
  %9 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %5, align 8
  %10 = call i32 @rs_vht_highest_rx_mcs_index(%struct.ieee80211_sta_vht_cap* %9, i32 1)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @IWL_RATE_MCS_0_INDEX, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %3
  %15 = load i32, i32* @IWL_RATE_MCS_0_INDEX, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %43, %14
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %43

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IWL_RATE_MCS_9_INDEX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %43

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %40 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %35, %24
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %16

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %92

53:                                               ; preds = %47
  %54 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %5, align 8
  %55 = call i32 @rs_vht_highest_rx_mcs_index(%struct.ieee80211_sta_vht_cap* %54, i32 2)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @IWL_RATE_MCS_0_INDEX, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %53
  %60 = load i32, i32* @IWL_RATE_MCS_0_INDEX, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %88, %59
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %88

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @IWL_RATE_MCS_9_INDEX, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %88

81:                                               ; preds = %74, %70
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %85 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %80, %69
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %61

91:                                               ; preds = %61
  br label %92

92:                                               ; preds = %52, %91, %53
  ret void
}

declare dso_local i32 @rs_vht_highest_rx_mcs_index(%struct.ieee80211_sta_vht_cap*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
