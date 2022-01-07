; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_lmac_scan_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_lmac_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_host_cmd = type { i32 }

@SCAN_OFFLOAD_ABORT_CMD = common dso_local global i32 0, align 4
@CAN_ABORT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"SCAN OFFLOAD ABORT ret %d.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_lmac_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_lmac_scan_abort(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_host_cmd, align 4
  %6 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %8 = load i32, i32* @SCAN_OFFLOAD_ABORT_CMD, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* @CAN_ABORT_STATUS, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = call i32 @iwl_mvm_send_cmd_status(%struct.iwl_mvm* %10, %struct.iwl_host_cmd* %5, i64* %6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @CAN_ABORT_STATUS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @iwl_mvm_send_cmd_status(%struct.iwl_mvm*, %struct.iwl_host_cmd*, i64*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
