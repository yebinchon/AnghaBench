; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_fill_lq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_fill_lq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { %struct.TYPE_4__, i32, %struct.iwl_lq_cmd }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_lq_cmd = type { i8*, i32, i32, i32, i32 }
%struct.rs_rate = type { i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_mvm_vif = type { i32 }

@IWL_MVM_RS_AGG_DISABLE_START = common dso_local global i32 0, align 4
@IWL_MVM_RS_AGG_TIME_LIMIT = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_LQ_SS_PARAMS = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2 = common dso_local global i32 0, align 4
@LQ_FLAG_USE_RTS_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.rs_rate*)* @rs_fill_lq_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_fill_lq_cmd(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.rs_rate* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.rs_rate*, align 8
  %9 = alloca %struct.iwl_lq_cmd*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.rs_rate* %3, %struct.rs_rate** %8, align 8
  %12 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %13 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %12, i32 0, i32 2
  store %struct.iwl_lq_cmd* %13, %struct.iwl_lq_cmd** %9, align 8
  %14 = load i32, i32* @IWL_MVM_RS_AGG_DISABLE_START, align 4
  %15 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IWL_MVM_RS_AGG_TIME_LIMIT, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %22 = icmp ne %struct.ieee80211_sta* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %25 = icmp ne %struct.rs_rate* %24, null
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %4
  %28 = phi i1 [ true, %4 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %112

33:                                               ; preds = %27
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %36 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %37 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %38 = call i32 @rs_build_rates_table(%struct.iwl_mvm* %34, %struct.ieee80211_sta* %35, %struct.iwl_lq_sta* %36, %struct.rs_rate* %37)
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* @IWL_UCODE_TLV_API_LQ_SS_PARAMS, align 4
  %44 = call i64 @fw_has_api(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %49 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %50 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %51 = call i32 @rs_set_lq_ss_params(%struct.iwl_mvm* %47, %struct.ieee80211_sta* %48, %struct.iwl_lq_sta* %49, %struct.rs_rate* %50)
  br label %52

52:                                               ; preds = %46, %33
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %54 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %53)
  store %struct.iwl_mvm_sta* %54, %struct.iwl_mvm_sta** %10, align 8
  %55 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_6__* %57)
  store %struct.iwl_mvm_vif* %58, %struct.iwl_mvm_vif** %11, align 8
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* @IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2, align 4
  %64 = call i32 @fw_has_capa(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %52
  %67 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %68 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @num_of_ant(i32 %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %74 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %77 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %66, %52
  %79 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %83 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %85 = call i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %89 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %78
  %93 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @LQ_FLAG_USE_RTS_MSK, align 4
  %101 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %102 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %108 = call i32 @iwl_mvm_coex_agg_time_limit(%struct.iwl_mvm* %106, %struct.ieee80211_sta* %107)
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %111 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %32
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rs_build_rates_table(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @rs_set_lq_ss_params(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_6__*) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif*) #1

declare dso_local i32 @iwl_mvm_coex_agg_time_limit(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
