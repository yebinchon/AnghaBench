; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_validate_queue_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_validate_queue_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_vf_queue_cid* }
%struct.qed_vf_queue_cid = type { i32, i32 }

@QED_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@MAX_QUEUES_PER_QZONE = common dso_local global i32 0, align 4
@QED_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@QED_IOV_VALIDATE_Q_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32, i32)* @qed_iov_validate_queue_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_validate_queue_mode(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_vf_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_vf_queue_cid*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @QED_IOV_VALIDATE_Q_NA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %59

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @MAX_QUEUES_PER_QZONE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.qed_vf_queue_cid*, %struct.qed_vf_queue_cid** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qed_vf_queue_cid, %struct.qed_vf_queue_cid* %30, i64 %32
  store %struct.qed_vf_queue_cid* %33, %struct.qed_vf_queue_cid** %13, align 8
  %34 = load %struct.qed_vf_queue_cid*, %struct.qed_vf_queue_cid** %13, align 8
  %35 = getelementptr inbounds %struct.qed_vf_queue_cid, %struct.qed_vf_queue_cid* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.qed_vf_queue_cid*, %struct.qed_vf_queue_cid** %13, align 8
  %41 = getelementptr inbounds %struct.qed_vf_queue_cid, %struct.qed_vf_queue_cid* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @QED_IOV_VALIDATE_Q_ENABLE, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @QED_IOV_VALIDATE_Q_DISABLE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %46, %17
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
