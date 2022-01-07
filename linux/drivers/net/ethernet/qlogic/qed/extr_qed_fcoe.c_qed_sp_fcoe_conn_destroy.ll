; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_sp_fcoe_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_sp_fcoe_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qed_fcoe_conn = type { i32, i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.fcoe_conn_terminate_ramrod_params = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fcoe_conn_terminate_ramrod_params }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@FCOE_RAMROD_CMD_ID_TERMINATE_CONN = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_fcoe_conn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_fcoe_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_fcoe_conn_destroy(%struct.qed_hwfn* %0, %struct.qed_fcoe_conn* %1, i32 %2, %struct.qed_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_fcoe_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca %struct.fcoe_conn_terminate_ramrod_params*, align 8
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_fcoe_conn* %1, %struct.qed_fcoe_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %3, %struct.qed_spq_comp_cb** %9, align 8
  store %struct.fcoe_conn_terminate_ramrod_params* null, %struct.fcoe_conn_terminate_ramrod_params** %10, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 24)
  %15 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %16 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %27 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %26, %struct.qed_spq_comp_cb** %27, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %29 = load i32, i32* @FCOE_RAMROD_CMD_ID_TERMINATE_CONN, align 4
  %30 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %31 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %28, %struct.qed_spq_entry** %11, i32 %29, i32 %30, %struct.qed_sp_init_data* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %4
  %37 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %38 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.fcoe_conn_terminate_ramrod_params* %39, %struct.fcoe_conn_terminate_ramrod_params** %10, align 8
  %40 = load %struct.fcoe_conn_terminate_ramrod_params*, %struct.fcoe_conn_terminate_ramrod_params** %10, align 8
  %41 = getelementptr inbounds %struct.fcoe_conn_terminate_ramrod_params, %struct.fcoe_conn_terminate_ramrod_params* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %45 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DMA_REGPAIR_LE(i32 %43, i32 %46)
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %50 = call i32 @qed_spq_post(%struct.qed_hwfn* %48, %struct.qed_spq_entry* %49, i32* null)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %36, %34
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
