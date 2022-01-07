; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_pf_update(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_spq_entry*, align 8
  %5 = alloca %struct.qed_sp_init_data, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i32 @memset(%struct.qed_sp_init_data* %5, i32 0, i32 12)
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %10)
  %12 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %19 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %22 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %23 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %20, %struct.qed_spq_entry** %4, i32 %21, i32 %22, %struct.qed_sp_init_data* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %1
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %34 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @qed_dcbx_set_pf_update_params(i32* %32, i32* %35)
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %38 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %39 = call i32 @qed_spq_post(%struct.qed_hwfn* %37, %struct.qed_spq_entry* %38, i32* null)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %28, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_dcbx_set_pf_update_params(i32*, i32*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
