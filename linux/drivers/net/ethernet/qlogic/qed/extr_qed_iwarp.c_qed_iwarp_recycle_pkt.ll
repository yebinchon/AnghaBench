; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_recycle_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_recycle_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iwarp_fpdu = type { i32, i64 }
%struct.qed_iwarp_ll2_buff = type { i32* }
%struct.qed_ll2_tx_pkt_info = type { i32, i32, i32, i64, %struct.qed_iwarp_ll2_buff*, i32 }

@QED_LL2_TX_DEST_DROP = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't drop packet rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"MPA_ALIGN: send drop tx packet [%lx, 0x%x], buf=%p, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_ll2_buff*)* @qed_iwarp_recycle_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_recycle_pkt(%struct.qed_hwfn* %0, %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_ll2_buff* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_iwarp_fpdu*, align 8
  %6 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %7 = alloca %struct.qed_ll2_tx_pkt_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_fpdu** %5, align 8
  store %struct.qed_iwarp_ll2_buff* %2, %struct.qed_iwarp_ll2_buff** %6, align 8
  %10 = call i32 @memset(%struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 40)
  %11 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @QED_LL2_TX_DEST_DROP, align 4
  %13 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %5, align 8
  %15 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 2
  %18 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %5, align 8
  %20 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 3
  store i64 %21, i64* %22, align 8
  %23 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %5, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %28 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %30 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 4
  store %struct.qed_iwarp_ll2_buff* %29, %struct.qed_iwarp_ll2_buff** %30, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn* %37, i32 %38, %struct.qed_ll2_tx_pkt_info* %7, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load i32, i32* @QED_MSG_RDMA, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %43, i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %42, %3
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %50 = load i32, i32* @QED_MSG_RDMA, align 4
  %51 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %49, i32 %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %54, %struct.qed_iwarp_ll2_buff* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.qed_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn*, i32, %struct.qed_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
