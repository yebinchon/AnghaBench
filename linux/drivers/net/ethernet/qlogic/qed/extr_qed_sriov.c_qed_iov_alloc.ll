; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_pf_iov* }
%struct.qed_pf_iov = type { i32 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No SR-IOV - no need for IOV db\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@qed_sriov_eqe_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iov_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_pf_iov*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = call i32 @IS_PF_SRIOV(%struct.qed_hwfn* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = load i32, i32* @QED_MSG_IOV, align 4
  %11 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %9, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qed_pf_iov* @kzalloc(i32 4, i32 %13)
  store %struct.qed_pf_iov* %14, %struct.qed_pf_iov** %4, align 8
  %15 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %4, align 8
  %16 = icmp ne %struct.qed_pf_iov* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %4, align 8
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  store %struct.qed_pf_iov* %21, %struct.qed_pf_iov** %23, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %26 = load i32, i32* @qed_sriov_eqe_event, align 4
  %27 = call i32 @qed_spq_register_async_cb(%struct.qed_hwfn* %24, i32 %25, i32 %26)
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = call i32 @qed_iov_allocate_vfdb(%struct.qed_hwfn* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %17, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @IS_PF_SRIOV(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local %struct.qed_pf_iov* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_spq_register_async_cb(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_iov_allocate_vfdb(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
