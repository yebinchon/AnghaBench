; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_error_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_error_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IWL_FW_TRIGGER_ID_FW_HW_ERROR = common dso_local global i32 0, align 4
@iwl_dump_desc_assert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*)* @iwl_fw_error_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_error_collect(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %3 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i64 @iwl_trans_dbg_ini_valid(%struct.TYPE_4__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %18 = load i32, i32* @IWL_FW_TRIGGER_ID_FW_HW_ERROR, align 4
  %19 = call i32 @_iwl_fw_dbg_ini_collect(%struct.iwl_fw_runtime* %17, i32 %18)
  %20 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %28

25:                                               ; preds = %8, %1
  %26 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %27 = call i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime* %26, i32* @iwl_dump_desc_assert, i32 0, i32 0)
  br label %28

28:                                               ; preds = %25, %16
  ret void
}

declare dso_local i64 @iwl_trans_dbg_ini_valid(%struct.TYPE_4__*) #1

declare dso_local i32 @_iwl_fw_dbg_ini_collect(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
