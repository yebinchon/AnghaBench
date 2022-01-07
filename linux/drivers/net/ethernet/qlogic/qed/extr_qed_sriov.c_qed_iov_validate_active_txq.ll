; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_validate_active_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_validate_active_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i64 }

@QED_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*)* @qed_iov_validate_active_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_validate_active_txq(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_vf_info*, align 8
  %6 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %10 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @QED_IOV_VALIDATE_Q_ENABLE, align 4
  %18 = call i64 @qed_iov_validate_queue_mode(%struct.qed_hwfn* %14, %struct.qed_vf_info* %15, i64 %16, i32 %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %7

25:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @qed_iov_validate_queue_mode(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
