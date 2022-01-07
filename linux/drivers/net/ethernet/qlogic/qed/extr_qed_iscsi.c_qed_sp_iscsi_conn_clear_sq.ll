; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_conn_clear_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_conn_clear_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iscsi_conn = type { i32, i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.iscsi_slow_path_hdr = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.iscsi_slow_path_hdr }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISCSI_RAMROD_CMD_ID_CLEAR_SQ = common dso_local global i32 0, align 4
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@ISCSI_SLOW_PATH_HDR_LAYER_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iscsi_conn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_iscsi_conn_clear_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_iscsi_conn_clear_sq(%struct.qed_hwfn* %0, %struct.qed_iscsi_conn* %1, i32 %2, %struct.qed_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_iscsi_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca %struct.iscsi_slow_path_hdr*, align 8
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_iscsi_conn* %1, %struct.qed_iscsi_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %3, %struct.qed_spq_comp_cb** %9, align 8
  store %struct.iscsi_slow_path_hdr* null, %struct.iscsi_slow_path_hdr** %10, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %11, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 24)
  %17 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %18 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %29 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %28, %struct.qed_spq_comp_cb** %29, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %31 = load i32, i32* @ISCSI_RAMROD_CMD_ID_CLEAR_SQ, align 4
  %32 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %33 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %30, %struct.qed_spq_entry** %11, i32 %31, i32 %32, %struct.qed_sp_init_data* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %56

38:                                               ; preds = %4
  %39 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %40 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.iscsi_slow_path_hdr* %41, %struct.iscsi_slow_path_hdr** %10, align 8
  %42 = load i32, i32* @ISCSI_RAMROD_CMD_ID_CLEAR_SQ, align 4
  %43 = load %struct.iscsi_slow_path_hdr*, %struct.iscsi_slow_path_hdr** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_slow_path_hdr, %struct.iscsi_slow_path_hdr* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iscsi_slow_path_hdr*, %struct.iscsi_slow_path_hdr** %10, align 8
  %46 = getelementptr inbounds %struct.iscsi_slow_path_hdr, %struct.iscsi_slow_path_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ISCSI_SLOW_PATH_HDR_LAYER_CODE, align 4
  %49 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %50 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SET_FIELD(i32 %47, i32 %48, i32 %51)
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %54 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %55 = call i32 @qed_spq_post(%struct.qed_hwfn* %53, %struct.qed_spq_entry* %54, i32* null)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %38, %36
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
