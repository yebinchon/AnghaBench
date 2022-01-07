; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_ht_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_ht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.ieee80211_sta_ht_cap*)* @rs_ht_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_ht_init(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.ieee80211_sta_ht_cap* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_sta_ht_cap* %3, %struct.ieee80211_sta_ht_cap** %8, align 8
  %9 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 1
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -3
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %34 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 1
  %45 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -3
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %63 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %4
  %76 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %84 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %75, %4
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %96 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %95)
  %97 = call i32 @num_of_ant(i32 %96)
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %108 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %99, %94, %85
  %110 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %111 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %110, i32 0, i32 4
  store i32 0, i32* %111, align 4
  ret void
}

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
