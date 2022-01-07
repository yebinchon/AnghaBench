; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_stop_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Stop hwq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"hwq %d already stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_stop_queue(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %5, align 8
  %8 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @test_and_set_bit(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iwl_op_mode_queue_full(i32 %19, i32 %22)
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %31 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %16
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @iwl_op_mode_queue_full(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
