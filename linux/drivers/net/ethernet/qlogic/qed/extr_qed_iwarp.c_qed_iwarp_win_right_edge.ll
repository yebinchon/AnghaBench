; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_win_right_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_win_right_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iwarp_fpdu = type { i32, i64 }
%struct.qed_ll2_tx_pkt_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@QED_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@IWARP_LL2_ALIGNED_RIGHT_TRIMMED_TX_QUEUE = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't send right edge rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"MPA_ALIGN: Sent right edge FPDU num_bds=%d [%lx, 0x%x], rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*)* @qed_iwarp_win_right_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_win_right_edge(%struct.qed_hwfn* %0, %struct.qed_iwarp_fpdu* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_iwarp_fpdu*, align 8
  %5 = alloca %struct.qed_ll2_tx_pkt_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_fpdu** %4, align 8
  %8 = call i32 @memset(%struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 40)
  %9 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @QED_LL2_TX_DEST_LB, align 4
  %11 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %4, align 8
  %13 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 2
  %16 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %4, align 8
  %18 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 6
  store i64 %19, i64* %20, align 8
  %21 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %4, align 8
  %22 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 3
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 4
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 5
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @IWARP_LL2_ALIGNED_RIGHT_TRIMMED_TX_QUEUE, align 4
  %29 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 7
  store i32 %28, i32* %29, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn* %36, i32 %37, %struct.qed_ll2_tx_pkt_info* %5, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = load i32, i32* @QED_MSG_RDMA, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %42, i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %2
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %48 = load i32, i32* @QED_MSG_RDMA, align 4
  %49 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %47, i32 %48, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %52, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.qed_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn*, i32, %struct.qed_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
