; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_iwl_mvm_tx_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_iwl_mvm_tx_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tx_protection(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %9 = call i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rs_fw_tx_protection(%struct.iwl_mvm* %12, %struct.iwl_mvm_sta* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @rs_drv_tx_protection(%struct.iwl_mvm* %17, %struct.iwl_mvm_sta* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm*) #1

declare dso_local i32 @rs_fw_tx_protection(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @rs_drv_tx_protection(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
