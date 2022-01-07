; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_queue_cid_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_queue_cid_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i32, i64, i32 }

@QED_QCID_LEGACY_VF_CID = common dso_local global i32 0, align 4
@QED_QUEUE_CID_SELF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_eth_queue_cid_release(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_queue_cid*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %4, align 8
  %6 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %7 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @QED_QCID_LEGACY_VF_CID, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_PF(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %26 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %29 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @_qed_cxt_release_cid(%struct.qed_hwfn* %24, i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %23, %20, %2
  %33 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %34 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QED_QUEUE_CID_SELF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %40 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %41 = call i32 @qed_eth_queue_qid_usage_del(%struct.qed_hwfn* %39, %struct.qed_queue_cid* %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %44 = call i32 @vfree(%struct.qed_queue_cid* %43)
  ret void
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @_qed_cxt_release_cid(%struct.qed_hwfn*, i32, i64) #1

declare dso_local i32 @qed_eth_queue_qid_usage_del(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

declare dso_local i32 @vfree(%struct.qed_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
