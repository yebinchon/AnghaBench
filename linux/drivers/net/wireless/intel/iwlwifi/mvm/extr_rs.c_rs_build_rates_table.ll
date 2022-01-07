; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_build_rates_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_build_rates_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { %struct.iwl_lq_cmd }
%struct.iwl_lq_cmd = type { i32, i32, i32 }
%struct.rs_rate = type { i32 }

@IWL_UCODE_TLV_API_LQ_SS_PARAMS = common dso_local global i32 0, align 4
@IWL_MVM_RS_INITIAL_SISO_NUM_RATES = common dso_local global i32 0, align 4
@IWL_MVM_RS_HT_VHT_RETRIES_PER_RATE = common dso_local global i32 0, align 4
@IWL_MVM_RS_INITIAL_MIMO_NUM_RATES = common dso_local global i32 0, align 4
@IWL_MVM_RS_INITIAL_LEGACY_NUM_RATES = common dso_local global i32 0, align 4
@IWL_MVM_RS_INITIAL_LEGACY_RETRIES = common dso_local global i32 0, align 4
@IWL_MVM_RS_SECONDARY_SISO_NUM_RATES = common dso_local global i32 0, align 4
@IWL_MVM_RS_SECONDARY_SISO_RETRIES = common dso_local global i32 0, align 4
@IWL_MVM_RS_SECONDARY_LEGACY_NUM_RATES = common dso_local global i32 0, align 4
@IWL_MVM_RS_SECONDARY_LEGACY_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.rs_rate*)* @rs_build_rates_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_build_rates_table(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.rs_rate* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.rs_rate*, align 8
  %9 = alloca %struct.rs_rate, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_lq_cmd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.rs_rate* %3, %struct.rs_rate** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %17, i32 0, i32 0
  store %struct.iwl_lq_cmd* %18, %struct.iwl_lq_cmd** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %20 = call i32 @memcpy(%struct.rs_rate* %9, %struct.rs_rate* %19, i32 4)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %22 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @IWL_UCODE_TLV_API_LQ_SS_PARAMS, align 4
  %28 = call i32 @fw_has_api(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %34 = call i64 @rs_stbc_allow(%struct.iwl_mvm* %31, %struct.ieee80211_sta* %32, %struct.iwl_lq_sta* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %9, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %30, %4
  %39 = call i64 @is_siso(%struct.rs_rate* %9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @IWL_MVM_RS_INITIAL_SISO_NUM_RATES, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @IWL_MVM_RS_HT_VHT_RETRIES_PER_RATE, align 4
  store i32 %43, i32* %11, align 4
  br label %54

44:                                               ; preds = %38
  %45 = call i64 @is_mimo(%struct.rs_rate* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @IWL_MVM_RS_INITIAL_MIMO_NUM_RATES, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @IWL_MVM_RS_HT_VHT_RETRIES_PER_RATE, align 4
  store i32 %49, i32* %11, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @IWL_MVM_RS_INITIAL_LEGACY_NUM_RATES, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @IWL_MVM_RS_INITIAL_LEGACY_RETRIES, align 4
  store i32 %52, i32* %11, align 4
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %56 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %57 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %58 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @rs_fill_rates_for_column(%struct.iwl_mvm* %55, %struct.iwl_lq_sta* %56, %struct.rs_rate* %9, i32 %59, i32* %12, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %66 = call i32 @rs_get_lower_rate_down_column(%struct.iwl_lq_sta* %65, %struct.rs_rate* %9)
  %67 = call i64 @is_siso(%struct.rs_rate* %9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load i32, i32* @IWL_MVM_RS_SECONDARY_SISO_NUM_RATES, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @IWL_MVM_RS_SECONDARY_SISO_RETRIES, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %74 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %84

75:                                               ; preds = %54
  %76 = call i64 @is_legacy(%struct.rs_rate* %9)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @IWL_MVM_RS_SECONDARY_LEGACY_NUM_RATES, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @IWL_MVM_RS_SECONDARY_LEGACY_RETRIES, align 4
  store i32 %80, i32* %11, align 4
  br label %83

81:                                               ; preds = %75
  %82 = call i32 @WARN_ON_ONCE(i32 1)
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %69
  store i32 1, i32* %15, align 4
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %86 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %87 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %88 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @rs_fill_rates_for_column(%struct.iwl_mvm* %85, %struct.iwl_lq_sta* %86, %struct.rs_rate* %9, i32 %89, i32* %12, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %96 = call i32 @rs_get_lower_rate_down_column(%struct.iwl_lq_sta* %95, %struct.rs_rate* %9)
  %97 = load i32, i32* @IWL_MVM_RS_SECONDARY_LEGACY_NUM_RATES, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @IWL_MVM_RS_SECONDARY_LEGACY_RETRIES, align 4
  store i32 %98, i32* %11, align 4
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %100 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %101 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %102 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @rs_fill_rates_for_column(%struct.iwl_mvm* %99, %struct.iwl_lq_sta* %100, %struct.rs_rate* %9, i32 %103, i32* %12, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %110 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @LQ_FLAG_COLOR_GET(i32 %111)
  %113 = call i32 @LQ_FLAGS_COLOR_INC(i32 %112)
  store i32 %113, i32* %16, align 4
  %114 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %115 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @LQ_FLAG_COLOR_SET(i32 %116, i32 %117)
  %119 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %120 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  ret void
}

declare dso_local i32 @memcpy(%struct.rs_rate*, %struct.rs_rate*, i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @fw_has_api(i32*, i32) #1

declare dso_local i64 @rs_stbc_allow(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*) #1

declare dso_local i64 @is_siso(%struct.rs_rate*) #1

declare dso_local i64 @is_mimo(%struct.rs_rate*) #1

declare dso_local i32 @rs_fill_rates_for_column(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.rs_rate*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rs_get_lower_rate_down_column(%struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local i64 @is_legacy(%struct.rs_rate*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @LQ_FLAGS_COLOR_INC(i32) #1

declare dso_local i32 @LQ_FLAG_COLOR_GET(i32) #1

declare dso_local i32 @LQ_FLAG_COLOR_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
