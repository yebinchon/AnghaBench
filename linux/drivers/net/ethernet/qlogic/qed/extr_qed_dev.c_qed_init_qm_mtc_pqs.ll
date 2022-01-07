; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_mtc_pqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_mtc_pqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__, %struct.qed_qm_info }
%struct.TYPE_2__ = type { i64 }
%struct.qed_qm_info = type { i32 }

@PQ_INIT_SHARE_VPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_init_qm_mtc_pqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_init_qm_mtc_pqs(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qed_qm_info*, align 8
  %5 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = call i64 @qed_init_qm_get_num_mtc_tcs(%struct.qed_hwfn* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 1
  store %struct.qed_qm_info* %9, %struct.qed_qm_info** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %16 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %18 = call i64 @qed_is_offload_tc_set(%struct.qed_hwfn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  br label %27

25:                                               ; preds = %14
  %26 = load i64, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i64 [ %24, %20 ], [ %26, %25 ]
  %29 = load i32, i32* @PQ_INIT_SHARE_VPORT, align 4
  %30 = call i32 @qed_init_qm_pq(%struct.qed_hwfn* %15, %struct.qed_qm_info* %16, i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local i64 @qed_init_qm_get_num_mtc_tcs(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_pq(%struct.qed_hwfn*, %struct.qed_qm_info*, i64, i32) #1

declare dso_local i64 @qed_is_offload_tc_set(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
