; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_pf_tx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_pf_tx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i32, i32 }
%struct.qed_spq_entry = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_TX_QUEUE_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_queue_cid*)* @qed_eth_pf_tx_queue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_eth_pf_tx_queue_stop(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_queue_cid*, align 8
  %6 = alloca %struct.qed_spq_entry*, align 8
  %7 = alloca %struct.qed_sp_init_data, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %5, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %6, align 8
  %9 = call i32 @memset(%struct.qed_sp_init_data* %7, i32 0, i32 12)
  %10 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %11 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %15 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %19 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load i32, i32* @ETH_RAMROD_TX_QUEUE_STOP, align 4
  %22 = load i32, i32* @PROTOCOLID_ETH, align 4
  %23 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %20, %struct.qed_spq_entry** %6, i32 %21, i32 %22, %struct.qed_sp_init_data* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %31 = call i32 @qed_spq_post(%struct.qed_hwfn* %29, %struct.qed_spq_entry* %30, i32* null)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
