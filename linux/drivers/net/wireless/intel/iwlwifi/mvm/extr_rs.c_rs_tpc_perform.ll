; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tpc_perform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tpc_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_scale_tbl_info = type { %struct.iwl_rate_scale_data*, %struct.rs_rate }
%struct.iwl_rate_scale_data = type { i32, i32 }
%struct.rs_rate = type { i32 }
%struct.iwl_mvm_sta = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IWL_INVALID_VALUE = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"tpc is not allowed. remove txp restrictions\0A\00", align 1
@TPC_NO_REDUCTION = common dso_local global i64 0, align 8
@TPC_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"(TPC: %d): cur_tpt %d SR %d weak %d strong %d weak_tpt %d strong_tpt %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"already in lowest txp, stay\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"already in highest txp, stay\0A\00", align 1
@TPC_MAX_REDUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*)* @rs_tpc_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tpc_perform(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.iwl_scale_tbl_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca %struct.iwl_scale_tbl_info*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.ieee80211_vif*, align 8
  %12 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_rate_scale_data*, align 8
  %15 = alloca %struct.rs_rate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %8, align 8
  store %struct.iwl_scale_tbl_info* %3, %struct.iwl_scale_tbl_info** %9, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %25 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %24)
  store %struct.iwl_mvm_sta* %25, %struct.iwl_mvm_sta** %10, align 8
  %26 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %27, align 8
  store %struct.ieee80211_vif* %28, %struct.ieee80211_vif** %11, align 8
  %29 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %30 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %29, i32 0, i32 1
  store %struct.rs_rate* %30, %struct.rs_rate** %15, align 8
  %31 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %32 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %18, align 8
  %35 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %36, i32* %23, align 4
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %40)
  store %struct.ieee80211_chanctx_conf* %41, %struct.ieee80211_chanctx_conf** %12, align 8
  %42 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %43 = icmp ne %struct.ieee80211_chanctx_conf* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i32, i32* @NUM_NL80211_BANDS, align 4
  store i32 %49, i32* %13, align 4
  br label %57

50:                                               ; preds = %4
  %51 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %52 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %50, %48
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %61 = load %struct.rs_rate*, %struct.rs_rate** %15, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @rs_tpc_allowed(%struct.iwl_mvm* %59, %struct.ieee80211_vif* %60, %struct.rs_rate* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %57
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %67 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %68 = load i64, i64* @TPC_NO_REDUCTION, align 8
  %69 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* @TPC_NO_REDUCTION, align 8
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %176

76:                                               ; preds = %57
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call i32 @rs_get_adjacent_txp(%struct.iwl_mvm* %77, i64 %78, i32* %20, i32* %21)
  %80 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %81 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %80, i32 0, i32 0
  %82 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %81, align 8
  store %struct.iwl_rate_scale_data* %82, %struct.iwl_rate_scale_data** %14, align 8
  %83 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %84 = load i64, i64* %18, align 8
  %85 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %83, i64 %84
  %86 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %88, i64 %89
  %91 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @TPC_INVALID, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %76
  %97 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %97, i64 %99
  %101 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %22, align 4
  br label %103

103:                                              ; preds = %96, %76
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* @TPC_INVALID, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %108, i64 %110
  %112 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %23, align 4
  br label %114

114:                                              ; preds = %107, %103
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %115, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %23, align 4
  %131 = call i32 @rs_get_tpc_action(%struct.iwl_mvm* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* @TPC_INVALID, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %114
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, 131
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %140 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 128, i32* %16, align 4
  br label %155

141:                                              ; preds = %135, %114
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* @TPC_INVALID, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, 130
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 129
  br i1 %150, label %151, label %154

151:                                              ; preds = %148, %145
  %152 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %153 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 128, i32* %16, align 4
  br label %154

154:                                              ; preds = %151, %148, %141
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %16, align 4
  switch i32 %156, label %175 [
    i32 131, label %157
    i32 130, label %163
    i32 129, label %169
    i32 128, label %174
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %161 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  store i32 1, i32* %5, align 4
  br label %176

163:                                              ; preds = %155
  %164 = load i32, i32* %21, align 4
  %165 = sext i32 %164 to i64
  %166 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %167 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  store i64 %165, i64* %168, align 8
  store i32 1, i32* %5, align 4
  br label %176

169:                                              ; preds = %155
  %170 = load i64, i64* @TPC_NO_REDUCTION, align 8
  %171 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %172 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  store i32 1, i32* %5, align 4
  br label %176

174:                                              ; preds = %155
  br label %175

175:                                              ; preds = %155, %174
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %169, %163, %157, %65
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rs_tpc_allowed(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.rs_rate*, i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @rs_get_adjacent_txp(%struct.iwl_mvm*, i64, i32*, i32*) #1

declare dso_local i32 @rs_get_tpc_action(%struct.iwl_mvm*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
