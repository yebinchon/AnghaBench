; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_rx_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_rx_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64 }

@ANT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*)* @iwl_mvm_scan_rx_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %4 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %5 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ANT_NONE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = call i64 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm* %14)
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local i64 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
