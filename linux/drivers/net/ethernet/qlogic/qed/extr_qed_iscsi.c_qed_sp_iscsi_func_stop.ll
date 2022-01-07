; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_func_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_func_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.iscsi_spe_func_dstry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iscsi_spe_func_dstry }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@ISCSI_RAMROD_CMD_ID_DESTROY_FUNC = common dso_local global i32 0, align 4
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_iscsi_func_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_iscsi_func_stop(%struct.qed_hwfn* %0, i32 %1, %struct.qed_spq_comp_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_spq_comp_cb*, align 8
  %8 = alloca %struct.iscsi_spe_func_dstry*, align 8
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca %struct.qed_sp_init_data, align 8
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_spq_comp_cb* %2, %struct.qed_spq_comp_cb** %7, align 8
  store %struct.iscsi_spe_func_dstry* null, %struct.iscsi_spe_func_dstry** %8, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 @memset(%struct.qed_sp_init_data* %10, i32 0, i32 24)
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %13)
  %15 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %7, align 8
  %24 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %23, %struct.qed_spq_comp_cb** %24, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = load i32, i32* @ISCSI_RAMROD_CMD_ID_DESTROY_FUNC, align 4
  %27 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %28 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %25, %struct.qed_spq_entry** %9, i32 %26, i32 %27, %struct.qed_sp_init_data* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %3
  %34 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %35 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.iscsi_spe_func_dstry* %36, %struct.iscsi_spe_func_dstry** %8, align 8
  %37 = load i32, i32* @ISCSI_RAMROD_CMD_ID_DESTROY_FUNC, align 4
  %38 = load %struct.iscsi_spe_func_dstry*, %struct.iscsi_spe_func_dstry** %8, align 8
  %39 = getelementptr inbounds %struct.iscsi_spe_func_dstry, %struct.iscsi_spe_func_dstry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %42 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %43 = call i32 @qed_spq_post(%struct.qed_hwfn* %41, %struct.qed_spq_entry* %42, i32* null)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %45 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %46 = call i32 @qed_spq_unregister_async_cb(%struct.qed_hwfn* %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %33, %31
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_spq_unregister_async_cb(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
