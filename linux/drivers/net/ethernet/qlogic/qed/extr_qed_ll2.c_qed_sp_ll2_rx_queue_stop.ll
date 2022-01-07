; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_rx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_rx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_ll2_info = type { i32, i32 }
%struct.core_rx_stop_ramrod_data = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.core_rx_stop_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_RX_QUEUE_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_sp_ll2_rx_queue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_ll2_rx_queue_stop(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ll2_info*, align 8
  %6 = alloca %struct.core_rx_stop_ramrod_data*, align 8
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %5, align 8
  store %struct.core_rx_stop_ramrod_data* null, %struct.core_rx_stop_ramrod_data** %6, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 12)
  %13 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %14 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %23 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %25 = load i32, i32* @CORE_RAMROD_RX_QUEUE_STOP, align 4
  %26 = load i32, i32* @PROTOCOLID_CORE, align 4
  %27 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %24, %struct.qed_spq_entry** %7, i32 %25, i32 %26, %struct.qed_sp_init_data* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %2
  %33 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %34 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.core_rx_stop_ramrod_data* %35, %struct.core_rx_stop_ramrod_data** %6, align 8
  %36 = load %struct.core_rx_stop_ramrod_data*, %struct.core_rx_stop_ramrod_data** %6, align 8
  %37 = getelementptr inbounds %struct.core_rx_stop_ramrod_data, %struct.core_rx_stop_ramrod_data* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.core_rx_stop_ramrod_data*, %struct.core_rx_stop_ramrod_data** %6, align 8
  %42 = getelementptr inbounds %struct.core_rx_stop_ramrod_data, %struct.core_rx_stop_ramrod_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %45 = call i32 @qed_spq_post(%struct.qed_hwfn* %43, %struct.qed_spq_entry* %44, i32* null)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
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
