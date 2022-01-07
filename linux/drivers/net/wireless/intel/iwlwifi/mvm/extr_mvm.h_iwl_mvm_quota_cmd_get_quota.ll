; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_quota_cmd_get_quota.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_quota_cmd_get_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_time_quota_data = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_time_quota_cmd = type { %struct.iwl_time_quota_data* }
%struct.iwl_time_quota_data_v1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_time_quota_data* (%struct.iwl_mvm*, %struct.iwl_time_quota_cmd*, i32)* @iwl_mvm_quota_cmd_get_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_time_quota_data* @iwl_mvm_quota_cmd_get_quota(%struct.iwl_mvm* %0, %struct.iwl_time_quota_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_time_quota_data*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_time_quota_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_time_quota_data_v1*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_time_quota_cmd* %1, %struct.iwl_time_quota_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = call i64 @iwl_mvm_has_quota_low_latency(%struct.iwl_mvm* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.iwl_time_quota_cmd*, %struct.iwl_time_quota_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_time_quota_cmd, %struct.iwl_time_quota_cmd* %13, i32 0, i32 0
  %15 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iwl_time_quota_data, %struct.iwl_time_quota_data* %15, i64 %17
  store %struct.iwl_time_quota_data* %18, %struct.iwl_time_quota_data** %4, align 8
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.iwl_time_quota_cmd*, %struct.iwl_time_quota_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_time_quota_cmd, %struct.iwl_time_quota_cmd* %20, i32 0, i32 0
  %22 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %21, align 8
  %23 = bitcast %struct.iwl_time_quota_data* %22 to %struct.iwl_time_quota_data_v1*
  store %struct.iwl_time_quota_data_v1* %23, %struct.iwl_time_quota_data_v1** %8, align 8
  %24 = load %struct.iwl_time_quota_data_v1*, %struct.iwl_time_quota_data_v1** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iwl_time_quota_data_v1, %struct.iwl_time_quota_data_v1* %24, i64 %26
  %28 = bitcast %struct.iwl_time_quota_data_v1* %27 to %struct.iwl_time_quota_data*
  store %struct.iwl_time_quota_data* %28, %struct.iwl_time_quota_data** %4, align 8
  br label %29

29:                                               ; preds = %19, %12
  %30 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %4, align 8
  ret %struct.iwl_time_quota_data* %30
}

declare dso_local i64 @iwl_mvm_has_quota_low_latency(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
