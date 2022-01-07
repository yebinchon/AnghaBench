; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_mcos_pqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_mcos_pqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_qm_info }
%struct.qed_qm_info = type { i32 }

@PQ_FLAGS_MCOS = common dso_local global i32 0, align 4
@PQ_INIT_SHARE_VPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_init_qm_mcos_pqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_init_qm_mcos_pqs(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_qm_info*, align 8
  %4 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %5, i32 0, i32 0
  store %struct.qed_qm_info* %6, %struct.qed_qm_info** %3, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %8 = call i32 @qed_get_pq_flags(%struct.qed_hwfn* %7)
  %9 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %15 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %16 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %17 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qed_init_qm_set_idx(%struct.qed_hwfn* %14, i32 %15, i32 %18)
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %31, %13
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %23 = call i64 @qed_init_qm_get_num_tcs(%struct.qed_hwfn* %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %27 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @PQ_INIT_SHARE_VPORT, align 4
  %30 = call i32 @qed_init_qm_pq(%struct.qed_hwfn* %26, %struct.qed_qm_info* %27, i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %20

34:                                               ; preds = %12, %20
  ret void
}

declare dso_local i32 @qed_get_pq_flags(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_set_idx(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i64 @qed_init_qm_get_num_tcs(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_pq(%struct.qed_hwfn*, %struct.qed_qm_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
