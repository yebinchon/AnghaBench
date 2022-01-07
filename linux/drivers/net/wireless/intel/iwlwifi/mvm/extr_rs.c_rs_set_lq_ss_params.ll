; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_set_lq_ss_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_set_lq_ss_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, %struct.TYPE_4__, %struct.iwl_lq_cmd }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_lq_cmd = type { i8* }
%struct.rs_rate = type { i32 }
%struct.iwl_mvm_sta = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iwl_lq_cmd }
%struct.rs_bfer_active_iter_data = type { %struct.iwl_mvm_sta*, %struct.ieee80211_sta* }

@LQ_SS_PARAMS_VALID = common dso_local global i32 0, align 4
@LQ_SS_STBC_1SS_ALLOWED = common dso_local global i32 0, align 4
@rs_bfer_active_iter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No sta with BFER allowed found. Allow\0A\00", align 1
@LQ_SS_BFER_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Found existing sta %d with BFER activated\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Lower priority BFER sta found (%d). Switch BFER\0A\00", align 1
@LQ_SS_FORCE = common dso_local global i32 0, align 4
@RS_SS_FORCE_BFER = common dso_local global i64 0, align 8
@RS_SS_FORCE_NONE = common dso_local global i64 0, align 8
@RS_SS_FORCE_STBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.rs_rate*)* @rs_set_lq_ss_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_lq_ss_params(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.rs_rate* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.rs_rate*, align 8
  %9 = alloca %struct.iwl_lq_cmd*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.rs_bfer_active_iter_data, align 8
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_lq_cmd*, align 8
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.rs_rate* %3, %struct.rs_rate** %8, align 8
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 3
  store %struct.iwl_lq_cmd* %17, %struct.iwl_lq_cmd** %9, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %18)
  store %struct.iwl_mvm_sta* %19, %struct.iwl_mvm_sta** %10, align 8
  %20 = getelementptr inbounds %struct.rs_bfer_active_iter_data, %struct.rs_bfer_active_iter_data* %11, i32 0, i32 0
  store %struct.iwl_mvm_sta* null, %struct.iwl_mvm_sta** %20, align 8
  %21 = getelementptr inbounds %struct.rs_bfer_active_iter_data, %struct.rs_bfer_active_iter_data* %11, i32 0, i32 1
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  store %struct.ieee80211_sta* %22, %struct.ieee80211_sta** %21, align 8
  store %struct.iwl_mvm_sta* null, %struct.iwl_mvm_sta** %12, align 8
  %23 = load i32, i32* @LQ_SS_PARAMS_VALID, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %26 = call i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm* %24, %struct.ieee80211_sta* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %99

29:                                               ; preds = %4
  %30 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @LQ_SS_STBC_1SS_ALLOWED, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %99

44:                                               ; preds = %38
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @rs_bfer_active_iter, align 4
  %49 = call i32 @ieee80211_iterate_stations_atomic(i32 %47, i32 %48, %struct.rs_bfer_active_iter_data* %11)
  %50 = getelementptr inbounds %struct.rs_bfer_active_iter_data, %struct.rs_bfer_active_iter_data* %11, i32 0, i32 0
  %51 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %50, align 8
  store %struct.iwl_mvm_sta* %51, %struct.iwl_mvm_sta** %12, align 8
  %52 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %53 = icmp ne %struct.iwl_mvm_sta* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %56 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @LQ_SS_BFER_ALLOWED, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  br label %99

60:                                               ; preds = %44
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %67 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %68 = call i64 @rs_bfer_priority_cmp(%struct.iwl_mvm_sta* %66, %struct.iwl_mvm_sta* %67)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %60
  %71 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store %struct.iwl_lq_cmd* %74, %struct.iwl_lq_cmd** %14, align 8
  %75 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %76 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @le32_to_cpu(i8* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* @LQ_SS_BFER_ALLOWED, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %15, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %86 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %88 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %89 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %87, %struct.iwl_lq_cmd* %88)
  %90 = load i32, i32* @LQ_SS_BFER_ALLOWED, align 4
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %94 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %93, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %70, %60
  br label %99

99:                                               ; preds = %98, %54, %43, %28
  %100 = load i32, i32* %13, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %9, align 8
  %103 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_iterate_stations_atomic(i32, i32, %struct.rs_bfer_active_iter_data*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i64 @rs_bfer_priority_cmp(%struct.iwl_mvm_sta*, %struct.iwl_mvm_sta*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, %struct.iwl_lq_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
