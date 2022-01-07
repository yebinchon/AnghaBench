; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_common_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_common_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.dcbx_app_priority_feature = type { i32 }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.dcbx_ets_feature = type { i32 }
%struct.qed_dcbx_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_entry*, %struct.dcbx_ets_feature*, i32, %struct.qed_dcbx_params*, i32)* @qed_dcbx_get_common_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_get_common_params(%struct.qed_hwfn* %0, %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_entry* %2, %struct.dcbx_ets_feature* %3, i32 %4, %struct.qed_dcbx_params* %5, i32 %6) #0 {
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.dcbx_app_priority_feature*, align 8
  %10 = alloca %struct.dcbx_app_priority_entry*, align 8
  %11 = alloca %struct.dcbx_ets_feature*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_dcbx_params*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_feature** %9, align 8
  store %struct.dcbx_app_priority_entry* %2, %struct.dcbx_app_priority_entry** %10, align 8
  store %struct.dcbx_ets_feature* %3, %struct.dcbx_ets_feature** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.qed_dcbx_params* %5, %struct.qed_dcbx_params** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %16 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %9, align 8
  %17 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %10, align 8
  %18 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %13, align 8
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @qed_dcbx_get_app_data(%struct.qed_hwfn* %15, %struct.dcbx_app_priority_feature* %16, %struct.dcbx_app_priority_entry* %17, %struct.qed_dcbx_params* %18, i32 %19)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %22 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %11, align 8
  %23 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %13, align 8
  %24 = call i32 @qed_dcbx_get_ets_data(%struct.qed_hwfn* %21, %struct.dcbx_ets_feature* %22, %struct.qed_dcbx_params* %23)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %13, align 8
  %28 = call i32 @qed_dcbx_get_pfc_data(%struct.qed_hwfn* %25, i32 %26, %struct.qed_dcbx_params* %27)
  ret void
}

declare dso_local i32 @qed_dcbx_get_app_data(%struct.qed_hwfn*, %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_entry*, %struct.qed_dcbx_params*, i32) #1

declare dso_local i32 @qed_dcbx_get_ets_data(%struct.qed_hwfn*, %struct.dcbx_ets_feature*, %struct.qed_dcbx_params*) #1

declare dso_local i32 @qed_dcbx_get_pfc_data(%struct.qed_hwfn*, i32, %struct.qed_dcbx_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
