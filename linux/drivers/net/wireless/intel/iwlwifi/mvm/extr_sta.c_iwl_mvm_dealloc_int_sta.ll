; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_dealloc_int_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_dealloc_int_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.iwl_mvm_int_sta = type { i64 }

@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm* %0, %struct.iwl_mvm_int_sta* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_mvm_int_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm_int_sta* %1, %struct.iwl_mvm_int_sta** %4, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @RCU_INIT_POINTER(i32 %12, i32* null)
  %14 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %4, align 8
  %15 = call i32 @memset(%struct.iwl_mvm_int_sta* %14, i32 0, i32 8)
  %16 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %17 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  ret void
}

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @memset(%struct.iwl_mvm_int_sta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
