; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_vht_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_vht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32, i32, i32, i32 }
%struct.ieee80211_sta_vht_cap = type { i32 }

@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_MASK = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_BEAMFORMER = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.ieee80211_sta_vht_cap*)* @rs_vht_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_vht_init(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.ieee80211_sta_vht_cap* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_sta_vht_cap* %3, %struct.ieee80211_sta_vht_cap** %8, align 8
  %9 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %11 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %12 = call i32 @rs_vht_set_enabled_rates(%struct.ieee80211_sta* %9, %struct.ieee80211_sta_vht_cap* %10, %struct.iwl_lq_sta* %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %21, %4
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %42 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %41)
  %43 = call i32 @num_of_ant(i32 %42)
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %45, %40, %31
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* @IWL_UCODE_TLV_CAPA_BEAMFORMER, align 4
  %61 = call i64 @fw_has_capa(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %65 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %64)
  %66 = call i32 @num_of_ant(i32 %65)
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %68, %63, %55
  %79 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  ret void
}

declare dso_local i32 @rs_vht_set_enabled_rates(%struct.ieee80211_sta*, %struct.ieee80211_sta_vht_cap*, %struct.iwl_lq_sta*) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
