; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_validate_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_validate_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i64, i32 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"VF[0x%02x] - can't touch Tx queue[%04x]; Only 0x%04x are allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32)* @qed_iov_validate_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_validate_txq(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %12 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %17 = load i32, i32* @QED_MSG_IOV, align 4
  %18 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %19 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %23 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %16, i32 %17, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i64 %24)
  store i32 0, i32* %5, align 4
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @qed_iov_validate_queue_mode(%struct.qed_hwfn* %27, %struct.qed_vf_info* %28, i64 %29, i32 %30, i32 1)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @qed_iov_validate_queue_mode(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
