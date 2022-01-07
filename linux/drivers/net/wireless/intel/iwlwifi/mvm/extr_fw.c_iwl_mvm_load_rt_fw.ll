; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_rt_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_rt_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.iwl_mvm = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to run INIT ucode: %d\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IWL_FW_INI_TIME_POINT_EARLY = common dso_local global i32 0, align 4
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@IWL_FW_INI_TIME_POINT_AFTER_ALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_load_rt_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_load_rt_fw(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = call i64 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = call i32 @iwl_run_unified_mvm_ucode(%struct.iwl_mvm* %9, i32 0)
  store i32 %10, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = call i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm* %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @IWL_ERR(%struct.iwl_mvm* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %69

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %11
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 1
  %28 = call i32 @iwl_fw_dbg_stop_sync(%struct.TYPE_6__* %27)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iwl_trans_stop_device(i32 %31)
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iwl_trans_start_hw(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %25
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 1
  %44 = load i32, i32* @IWL_FW_INI_TIME_POINT_EARLY, align 4
  %45 = call i32 @iwl_dbg_tlv_time_point(%struct.TYPE_6__* %43, i32 %44, i32* null)
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %50 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %69

55:                                               ; preds = %41
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 1
  %60 = load i32, i32* @IWL_FW_INI_TIME_POINT_AFTER_ALIVE, align 4
  %61 = call i32 @iwl_dbg_tlv_time_point(%struct.TYPE_6__* %59, i32 %60, i32* null)
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 1
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @iwl_init_paging(%struct.TYPE_6__* %63, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %55, %53, %39, %23, %22, %8
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_run_unified_mvm_ucode(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_fw_dbg_stop_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @iwl_trans_stop_device(i32) #1

declare dso_local i32 @iwl_trans_start_hw(i32) #1

declare dso_local i32 @iwl_dbg_tlv_time_point(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_init_paging(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
