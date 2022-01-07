; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_send_fpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_send_fpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qed_iwarp_fpdu = type { i32, i64, i64, i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.qed_iwarp_ll2_buff* }
%struct.unaligned_opaque_data = type { i64 }
%struct.qed_iwarp_ll2_buff = type { i64 }
%struct.qed_ll2_tx_pkt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }

@QED_IWARP_MPA_PKT_UNALIGNED = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@IWARP_LL2_ALIGNED_TX_QUEUE = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"MPA_ALIGN: Sent FPDU num_bds=%d first_frag_len=%x, mpa_frag_len=0x%x, incomplete_bytes:0x%x rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.qed_iwarp_ll2_buff*, i64, i32)* @qed_iwarp_send_fpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_send_fpdu(%struct.qed_hwfn* %0, %struct.qed_iwarp_fpdu* %1, %struct.unaligned_opaque_data* %2, %struct.qed_iwarp_ll2_buff* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_iwarp_fpdu*, align 8
  %9 = alloca %struct.unaligned_opaque_data*, align 8
  %10 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_ll2_tx_pkt_info, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_fpdu** %8, align 8
  store %struct.unaligned_opaque_data* %2, %struct.unaligned_opaque_data** %9, align 8
  store %struct.qed_iwarp_ll2_buff* %3, %struct.qed_iwarp_ll2_buff** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = call i32 @memset(%struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 48)
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @QED_IWARP_MPA_PKT_UNALIGNED, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 3, i32 2
  %22 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @QED_LL2_TX_DEST_LB, align 4
  %24 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 9
  store i32 %23, i32* %24, align 8
  %25 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 2
  %29 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @QED_IWARP_MPA_PKT_UNALIGNED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %6
  %40 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %41 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %46 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 7
  store i32 %47, i32* %48, align 4
  %49 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %50 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 4
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 5
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @IWARP_LL2_ALIGNED_TX_QUEUE, align 4
  %57 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 6
  store i32 %56, i32* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %60 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %65 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %66 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.qed_iwarp_ll2_buff* %64, %struct.qed_iwarp_ll2_buff** %68, align 8
  br label %69

69:                                               ; preds = %63, %44
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn* %76, i32 %77, %struct.qed_ll2_tx_pkt_info* %13, i32 1)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %115

82:                                               ; preds = %69
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %86 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %89 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @qed_ll2_set_fragment_of_tx_packet(%struct.qed_hwfn* %83, i32 %84, i64 %87, i64 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %115

95:                                               ; preds = %82
  %96 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %97 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %115

101:                                              ; preds = %95
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %105 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %108 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %112 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @qed_ll2_set_fragment_of_tx_packet(%struct.qed_hwfn* %102, i32 %103, i64 %110, i64 %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %101, %100, %94, %81
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %117 = load i32, i32* @QED_MSG_RDMA, align 4
  %118 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %13, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %123 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %126 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %116, i32 %117, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %121, i64 %124, i64 %127, i32 %128)
  %130 = load i32, i32* %15, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.qed_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn*, i32, %struct.qed_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @qed_ll2_set_fragment_of_tx_packet(%struct.qed_hwfn*, i32, i64, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
