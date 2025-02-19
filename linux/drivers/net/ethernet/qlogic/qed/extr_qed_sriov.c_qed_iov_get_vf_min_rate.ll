; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_vf_min_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_vf_min_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qed_wfq_data* }
%struct.qed_wfq_data = type { i32, i64 }
%struct.qed_vf_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32)* @qed_iov_get_vf_min_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_get_vf_min_rate(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_wfq_data*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %8, i32 %9, i32 1)
  store %struct.qed_vf_info* %10, %struct.qed_vf_info** %7, align 8
  %11 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %12 = icmp ne %struct.qed_vf_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.qed_wfq_data*, %struct.qed_wfq_data** %17, align 8
  %19 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %20 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.qed_wfq_data, %struct.qed_wfq_data* %18, i64 %21
  store %struct.qed_wfq_data* %22, %struct.qed_wfq_data** %6, align 8
  %23 = load %struct.qed_wfq_data*, %struct.qed_wfq_data** %6, align 8
  %24 = getelementptr inbounds %struct.qed_wfq_data, %struct.qed_wfq_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.qed_wfq_data*, %struct.qed_wfq_data** %6, align 8
  %29 = getelementptr inbounds %struct.qed_wfq_data, %struct.qed_wfq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
