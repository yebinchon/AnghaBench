; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_flush_sta_tids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_flush_sta_tids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_tx_path_flush_cmd = type { i32, i32 }

@TXPATH_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to send flush command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_flush_sta_tids(%struct.iwl_mvm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_tx_path_flush_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd, %struct.iwl_tx_path_flush_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @cpu_to_le16(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd, %struct.iwl_tx_path_flush_cmd* %10, i32 0, i32 1
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = load i32, i32* @TXPATH_FLUSH, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %23, i32 %24, i32 %25, i32 8, %struct.iwl_tx_path_flush_cmd* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @IWL_ERR(%struct.iwl_mvm* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tx_path_flush_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
