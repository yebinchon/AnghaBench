; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_rxq_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_rxq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { %struct.qed_ll2_rx_queue }
%struct.qed_ll2_rx_queue = type { i32, i32, i32* }
%union.core_rx_cqe_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QED_MSG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"LL2 [sw. cons %04x, fw. at %04x] - Got Packet of type %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i8*)* @qed_ll2_rxq_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_rxq_completion(%struct.qed_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_ll2_info*, align 8
  %6 = alloca %struct.qed_ll2_rx_queue*, align 8
  %7 = alloca %union.core_rx_cqe_union*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qed_ll2_info*
  store %struct.qed_ll2_info* %14, %struct.qed_ll2_info** %5, align 8
  %15 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %16 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %15, i32 0, i32 0
  store %struct.qed_ll2_rx_queue* %16, %struct.qed_ll2_rx_queue** %6, align 8
  store %union.core_rx_cqe_union* null, %union.core_rx_cqe_union** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %6, align 8
  %18 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %6, align 8
  %22 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %6, align 8
  %27 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %26, i32 0, i32 1
  %28 = call i64 @qed_chain_get_cons_idx(i32* %27)
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %72, %2
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %6, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %38, i32 0, i32 1
  %40 = call i64 @qed_chain_consume(i32* %39)
  %41 = inttoptr i64 %40 to %union.core_rx_cqe_union*
  store %union.core_rx_cqe_union* %41, %union.core_rx_cqe_union** %7, align 8
  %42 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %6, align 8
  %43 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %42, i32 0, i32 1
  %44 = call i64 @qed_chain_get_cons_idx(i32* %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %46 = load i32, i32* @QED_MSG_LL2, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %50 = bitcast %union.core_rx_cqe_union* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %45, i32 %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48, i32 %52)
  %54 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %55 = bitcast %union.core_rx_cqe_union* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %69 [
    i32 128, label %58
    i32 130, label %63
    i32 129, label %63
  ]

58:                                               ; preds = %33
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %60 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %61 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %62 = call i32 @qed_ll2_handle_slowpath(%struct.qed_hwfn* %59, %struct.qed_ll2_info* %60, %union.core_rx_cqe_union* %61, i64* %10)
  store i32 %62, i32* %11, align 4
  br label %72

63:                                               ; preds = %33, %33
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %65 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %66 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @qed_ll2_rxq_handle_completion(%struct.qed_hwfn* %64, %struct.qed_ll2_info* %65, %union.core_rx_cqe_union* %66, i64* %10, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %72

69:                                               ; preds = %33
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %63, %58
  br label %29

73:                                               ; preds = %29
  %74 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %6, align 8
  %75 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i64 @qed_chain_consume(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @qed_ll2_handle_slowpath(%struct.qed_hwfn*, %struct.qed_ll2_info*, %union.core_rx_cqe_union*, i64*) #1

declare dso_local i32 @qed_ll2_rxq_handle_completion(%struct.qed_hwfn*, %struct.qed_ll2_info*, %union.core_rx_cqe_union*, i64*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
