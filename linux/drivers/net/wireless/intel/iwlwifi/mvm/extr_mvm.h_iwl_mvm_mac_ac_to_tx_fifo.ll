; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_mac_ac_to_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_mac_ac_to_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }

@iwl_mvm_ac_to_gen2_tx_fifo = common dso_local global i32* null, align 8
@iwl_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_mvm_mac_ac_to_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ac_to_tx_fifo(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32*, i32** @iwl_mvm_ac_to_gen2_tx_fifo, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32*, i32** @iwl_mvm_ac_to_tx_fifo, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i32 [ %13, %8 ], [ %19, %14 ]
  ret i32 %21
}

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
