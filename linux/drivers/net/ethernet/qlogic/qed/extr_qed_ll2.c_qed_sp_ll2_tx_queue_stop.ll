; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_tx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_tx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ll2_info = type { i32, %struct.qed_ll2_tx_queue }
%struct.qed_ll2_tx_queue = type { i32, i32 }
%struct.qed_spq_entry = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_TX_QUEUE_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_sp_ll2_tx_queue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_ll2_tx_queue_stop(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ll2_info*, align 8
  %6 = alloca %struct.qed_ll2_tx_queue*, align 8
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %5, align 8
  %10 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %11 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %10, i32 0, i32 1
  store %struct.qed_ll2_tx_queue* %11, %struct.qed_ll2_tx_queue** %6, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %6, align 8
  %18 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %6, align 8
  %21 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %20, i32 0, i32 0
  %22 = call i32 @qed_db_recovery_del(i32 %16, i32 %19, i32* %21)
  %23 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 12)
  %24 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %25 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %34 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load i32, i32* @CORE_RAMROD_TX_QUEUE_STOP, align 4
  %37 = load i32, i32* @PROTOCOLID_CORE, align 4
  %38 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %35, %struct.qed_spq_entry** %7, i32 %36, i32 %37, %struct.qed_sp_init_data* %8)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %46 = call i32 @qed_spq_post(%struct.qed_hwfn* %44, %struct.qed_spq_entry* %45, i32* null)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @qed_db_recovery_del(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
