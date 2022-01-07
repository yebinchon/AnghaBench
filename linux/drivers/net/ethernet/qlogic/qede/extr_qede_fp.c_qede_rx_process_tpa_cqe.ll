; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_process_tpa_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_process_tpa_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_fastpath = type { i32 }
%struct.qede_rx_queue = type { i32 }
%union.eth_rx_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_rx_queue*, %union.eth_rx_cqe*, i32)* @qede_rx_process_tpa_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_rx_process_tpa_cqe(%struct.qede_dev* %0, %struct.qede_fastpath* %1, %struct.qede_rx_queue* %2, %union.eth_rx_cqe* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qede_dev*, align 8
  %8 = alloca %struct.qede_fastpath*, align 8
  %9 = alloca %struct.qede_rx_queue*, align 8
  %10 = alloca %union.eth_rx_cqe*, align 8
  %11 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %7, align 8
  store %struct.qede_fastpath* %1, %struct.qede_fastpath** %8, align 8
  store %struct.qede_rx_queue* %2, %struct.qede_rx_queue** %9, align 8
  store %union.eth_rx_cqe* %3, %union.eth_rx_cqe** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 128, label %13
    i32 130, label %19
    i32 129, label %25
  ]

13:                                               ; preds = %5
  %14 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %15 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %16 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %10, align 8
  %17 = bitcast %union.eth_rx_cqe* %16 to i32*
  %18 = call i32 @qede_tpa_start(%struct.qede_dev* %14, %struct.qede_rx_queue* %15, i32* %17)
  store i32 0, i32* %6, align 4
  br label %32

19:                                               ; preds = %5
  %20 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %21 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %22 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %10, align 8
  %23 = bitcast %union.eth_rx_cqe* %22 to i32*
  %24 = call i32 @qede_tpa_cont(%struct.qede_dev* %20, %struct.qede_rx_queue* %21, i32* %23)
  store i32 0, i32* %6, align 4
  br label %32

25:                                               ; preds = %5
  %26 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %27 = load %struct.qede_fastpath*, %struct.qede_fastpath** %8, align 8
  %28 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %10, align 8
  %29 = bitcast %union.eth_rx_cqe* %28 to i32*
  %30 = call i32 @qede_tpa_end(%struct.qede_dev* %26, %struct.qede_fastpath* %27, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %25, %19, %13
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @qede_tpa_start(%struct.qede_dev*, %struct.qede_rx_queue*, i32*) #1

declare dso_local i32 @qede_tpa_cont(%struct.qede_dev*, %struct.qede_rx_queue*, i32*) #1

declare dso_local i32 @qede_tpa_end(%struct.qede_dev*, %struct.qede_fastpath*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
