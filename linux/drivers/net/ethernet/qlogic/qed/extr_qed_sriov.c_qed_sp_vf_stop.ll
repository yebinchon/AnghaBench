; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sp_vf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sp_vf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.vf_stop_ramrod_data = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vf_stop_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_VF_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@PXP_CONCRETE_FID_VFID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32)* @qed_sp_vf_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_vf_stop(%struct.qed_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vf_stop_ramrod_data*, align 8
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca %struct.qed_sp_init_data, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.vf_stop_ramrod_data* null, %struct.vf_stop_ramrod_data** %8, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %9, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = call i32 @memset(%struct.qed_sp_init_data* %10, i32 0, i32 12)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %15)
  %17 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = load i32, i32* @COMMON_RAMROD_VF_STOP, align 4
  %24 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %25 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %22, %struct.qed_spq_entry** %9, i32 %23, i32 %24, %struct.qed_sp_init_data* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %3
  %31 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %32 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.vf_stop_ramrod_data* %33, %struct.vf_stop_ramrod_data** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PXP_CONCRETE_FID_VFID, align 4
  %36 = call i32 @GET_FIELD(i32 %34, i32 %35)
  %37 = load %struct.vf_stop_ramrod_data*, %struct.vf_stop_ramrod_data** %8, align 8
  %38 = getelementptr inbounds %struct.vf_stop_ramrod_data, %struct.vf_stop_ramrod_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %40 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %41 = call i32 @qed_spq_post(%struct.qed_hwfn* %39, %struct.qed_spq_entry* %40, i32* null)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %30, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
