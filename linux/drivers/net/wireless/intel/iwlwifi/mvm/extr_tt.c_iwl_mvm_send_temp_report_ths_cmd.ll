; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_send_temp_report_ths_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_send_temp_report_ths_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64*, i32*, i32 }
%struct.temp_report_ths_cmd = type { i32*, i32, i32 }

@PHY_OPS_GROUP = common dso_local global i32 0, align 4
@TEMP_REPORTING_THRESHOLDS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"TEMP_REPORT_THS_CMD command failed (err=%d)\0A\00", align 1
@IWL_MAX_DTS_TRIPS = common dso_local global i32 0, align 4
@S16_MIN = common dso_local global i64 0, align 8
@compare_temps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_send_temp_report_ths_cmd(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.temp_report_ths_cmd, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %5 = bitcast %struct.temp_report_ths_cmd* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %7 = load i32, i32* @PHY_OPS_GROUP, align 4
  %8 = load i32, i32* @TEMP_REPORTING_THRESHOLDS_CMD, align 4
  %9 = call i32 @WIDE_ID(i32 %7, i32 %8)
  %10 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %6, i32 %9, i32 0, i32 16, %struct.temp_report_ths_cmd* %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @IWL_ERR(%struct.iwl_mvm* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.temp_report_ths_cmd*) #2

declare dso_local i32 @WIDE_ID(i32, i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
