; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_vport_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_vport_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.vport_stop_ramrod_data = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vport_stop_ramrod_data }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_VPORT_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_vport_stop(%struct.qed_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vport_stop_ramrod_data*, align 8
  %9 = alloca %struct.qed_sp_init_data, align 4
  %10 = alloca %struct.qed_spq_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_VF(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = call i32 @qed_vf_pf_vport_stop(%struct.qed_hwfn* %19)
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @qed_fw_vport(%struct.qed_hwfn* %22, i32 %23, i32* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %21
  %30 = call i32 @memset(%struct.qed_sp_init_data* %9, i32 0, i32 12)
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %31)
  %33 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %37 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %39 = load i32, i32* @ETH_RAMROD_VPORT_STOP, align 4
  %40 = load i32, i32* @PROTOCOLID_ETH, align 4
  %41 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %38, %struct.qed_spq_entry** %10, i32 %39, i32 %40, %struct.qed_sp_init_data* %9)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %29
  %47 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %10, align 8
  %48 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.vport_stop_ramrod_data* %49, %struct.vport_stop_ramrod_data** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.vport_stop_ramrod_data*, %struct.vport_stop_ramrod_data** %8, align 8
  %52 = getelementptr inbounds %struct.vport_stop_ramrod_data, %struct.vport_stop_ramrod_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %54 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %10, align 8
  %55 = call i32 @qed_spq_post(%struct.qed_hwfn* %53, %struct.qed_spq_entry* %54, i32* null)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %46, %44, %27, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @qed_vf_pf_vport_stop(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
