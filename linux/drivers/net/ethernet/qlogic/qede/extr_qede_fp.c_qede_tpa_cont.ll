; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i32 }
%struct.eth_fast_path_rx_tpa_cont_cqe = type { i64*, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Strange - TPA cont with more than a single len_list entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_rx_queue*, %struct.eth_fast_path_rx_tpa_cont_cqe*)* @qede_tpa_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_tpa_cont(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, %struct.eth_fast_path_rx_tpa_cont_cqe* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_rx_queue*, align 8
  %6 = alloca %struct.eth_fast_path_rx_tpa_cont_cqe*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %5, align 8
  store %struct.eth_fast_path_rx_tpa_cont_cqe* %2, %struct.eth_fast_path_rx_tpa_cont_cqe** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %3
  %9 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %6, align 8
  %10 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %8
  %18 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %19 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %20 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %6, align 8
  %21 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %6, align 8
  %24 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @le16_to_cpu(i64 %29)
  %31 = call i32 @qede_fill_frag_skb(%struct.qede_dev* %18, %struct.qede_rx_queue* %19, i32 %22, i32 %30)
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %43 = call i32 @DP_ERR(%struct.qede_dev* %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @qede_fill_frag_skb(%struct.qede_dev*, %struct.qede_rx_queue*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
