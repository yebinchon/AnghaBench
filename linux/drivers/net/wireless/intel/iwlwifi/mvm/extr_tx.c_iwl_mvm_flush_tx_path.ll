; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_flush_tx_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_flush_tx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_tx_path_flush_cmd_v1 = type { i32, i32 }

@DUMP_TX_FIFO_FLUSH = common dso_local global i32 0, align 4
@TXPATH_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to send flush command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_flush_tx_path(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_tx_path_flush_cmd_v1, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, %struct.iwl_tx_path_flush_cmd_v1* %8, i32 0, i32 0
  %10 = load i32, i32* @DUMP_TX_FIFO_FLUSH, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, %struct.iwl_tx_path_flush_cmd_v1* %8, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %15)
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = load i32, i32* @TXPATH_FLUSH, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %18, i32 %19, i32 %20, i32 8, %struct.iwl_tx_path_flush_cmd_v1* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @IWL_ERR(%struct.iwl_mvm* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tx_path_flush_cmd_v1*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
