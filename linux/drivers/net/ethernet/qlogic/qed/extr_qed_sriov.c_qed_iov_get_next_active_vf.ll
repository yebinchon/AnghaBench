; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_next_active_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_next_active_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_hw_sriov_info* }
%struct.qed_hw_sriov_info = type { i64 }

@MAX_NUM_VFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qed_iov_get_next_active_vf(%struct.qed_hwfn* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_hw_sriov_info*, align 8
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %11, align 8
  store %struct.qed_hw_sriov_info* %12, %struct.qed_hw_sriov_info** %6, align 8
  %13 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %6, align 8
  %14 = icmp ne %struct.qed_hw_sriov_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %32, %16
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %6, align 8
  %21 = getelementptr inbounds %struct.qed_hw_sriov_info, %struct.qed_hw_sriov_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @qed_iov_is_valid_vfid(%struct.qed_hwfn* %25, i64 %26, i32 1, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %3, align 8
  br label %38

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %18

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i64, i64* @MAX_NUM_VFS, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @qed_iov_is_valid_vfid(%struct.qed_hwfn*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
