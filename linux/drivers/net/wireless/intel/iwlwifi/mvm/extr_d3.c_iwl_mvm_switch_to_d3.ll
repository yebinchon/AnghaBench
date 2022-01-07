; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_switch_to_d3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_switch_to_d3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i64, i32, i32 }

@IWL_MVM_SCAN_REGULAR = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_switch_to_d3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_switch_to_d3(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %3 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %4 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %5 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %3, i32 %4, i32 1)
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %7 = call i32 @iwl_mvm_stop_device(%struct.iwl_mvm* %6)
  %8 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 3
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %25 = call i32 @iwl_mvm_load_d3_fw(%struct.iwl_mvm* %24)
  ret i32 %25
}

declare dso_local i32 @iwl_mvm_scan_stop(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_stop_device(%struct.iwl_mvm*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_load_d3_fw(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
