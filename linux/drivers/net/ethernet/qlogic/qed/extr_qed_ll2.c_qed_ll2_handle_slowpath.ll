; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_handle_slowpath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_handle_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { i32, %struct.TYPE_3__, %struct.qed_ll2_rx_queue }
%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32, i32)* }
%struct.qed_ll2_rx_queue = type { i32 }
%union.core_rx_cqe_union = type { %struct.core_rx_slow_path_cqe }
%struct.core_rx_slow_path_cqe = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@CORE_RAMROD_RX_QUEUE_FLUSH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"LL2 - unexpected Rx CQE slowpath ramrod_cmd_id:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"LL2 - received RX_QUEUE_FLUSH but no callback was provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*, %union.core_rx_cqe_union*, i64*)* @qed_ll2_handle_slowpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_handle_slowpath(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1, %union.core_rx_cqe_union* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ll2_info*, align 8
  %8 = alloca %union.core_rx_cqe_union*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.qed_ll2_rx_queue*, align 8
  %11 = alloca %struct.core_rx_slow_path_cqe*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %7, align 8
  store %union.core_rx_cqe_union* %2, %union.core_rx_cqe_union** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %13 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %12, i32 0, i32 2
  store %struct.qed_ll2_rx_queue* %13, %struct.qed_ll2_rx_queue** %10, align 8
  %14 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %8, align 8
  %15 = bitcast %union.core_rx_cqe_union* %14 to %struct.core_rx_slow_path_cqe*
  store %struct.core_rx_slow_path_cqe* %15, %struct.core_rx_slow_path_cqe** %11, align 8
  %16 = load %struct.core_rx_slow_path_cqe*, %struct.core_rx_slow_path_cqe** %11, align 8
  %17 = getelementptr inbounds %struct.core_rx_slow_path_cqe, %struct.core_rx_slow_path_cqe* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CORE_RAMROD_RX_QUEUE_FLUSH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %23 = load %struct.core_rx_slow_path_cqe*, %struct.core_rx_slow_path_cqe** %11, align 8
  %24 = getelementptr inbounds %struct.core_rx_slow_path_cqe, %struct.core_rx_slow_path_cqe* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %31 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %32, align 8
  %34 = icmp ne i32 (i32, i32, i32, i32)* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %37 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %77

40:                                               ; preds = %29
  %41 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %10, align 8
  %42 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %41, i32 0, i32 0
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %44)
  %46 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %47 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %48, align 8
  %50 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %51 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %55 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.core_rx_slow_path_cqe*, %struct.core_rx_slow_path_cqe** %11, align 8
  %58 = getelementptr inbounds %struct.core_rx_slow_path_cqe, %struct.core_rx_slow_path_cqe* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.core_rx_slow_path_cqe*, %struct.core_rx_slow_path_cqe** %11, align 8
  %65 = getelementptr inbounds %struct.core_rx_slow_path_cqe, %struct.core_rx_slow_path_cqe* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = call i32 %49(i32 %53, i32 %56, i32 %63, i32 %70)
  %72 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %10, align 8
  %73 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %72, i32 0, i32 0
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %73, i64 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %40, %35, %21
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
