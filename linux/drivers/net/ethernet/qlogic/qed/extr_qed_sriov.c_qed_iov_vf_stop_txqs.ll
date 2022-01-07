; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_stop_txqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_stop_txqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { %struct.qed_vf_queue* }
%struct.qed_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@QED_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i64)* @qed_iov_vf_stop_txqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_stop_txqs(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qed_vf_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %13 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @QED_IOV_VALIDATE_Q_NA, align 4
  %16 = call i32 @qed_iov_validate_txq(%struct.qed_hwfn* %12, %struct.qed_vf_info* %13, i64 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %68

21:                                               ; preds = %4
  %22 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %23 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %22, i32 0, i32 0
  %24 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %24, i64 %25
  store %struct.qed_vf_queue* %26, %struct.qed_vf_queue** %10, align 8
  %27 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %10, align 8
  %28 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %10, align 8
  %37 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35, %21
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %68

47:                                               ; preds = %35
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %10, align 8
  %50 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @qed_eth_tx_queue_stop(%struct.qed_hwfn* %48, i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %47
  %62 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %10, align 8
  %63 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %59, %44, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @qed_iov_validate_txq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local i32 @qed_eth_tx_queue_stop(%struct.qed_hwfn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
