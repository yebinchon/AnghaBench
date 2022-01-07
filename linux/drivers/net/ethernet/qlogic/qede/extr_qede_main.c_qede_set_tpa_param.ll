; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_set_tpa_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_set_tpa_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_rx_queue = type { %struct.qede_agg_info* }
%struct.qede_agg_info = type { i32 }

@ETH_TPA_MAX_AGGS_NUM = common dso_local global i32 0, align 4
@QEDE_AGG_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_rx_queue*)* @qede_set_tpa_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_set_tpa_param(%struct.qede_rx_queue* %0) #0 {
  %2 = alloca %struct.qede_rx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_agg_info*, align 8
  store %struct.qede_rx_queue* %0, %struct.qede_rx_queue** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ETH_TPA_MAX_AGGS_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %10, i32 0, i32 0
  %12 = load %struct.qede_agg_info*, %struct.qede_agg_info** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %12, i64 %14
  store %struct.qede_agg_info* %15, %struct.qede_agg_info** %4, align 8
  %16 = load i32, i32* @QEDE_AGG_STATE_NONE, align 4
  %17 = load %struct.qede_agg_info*, %struct.qede_agg_info** %4, align 8
  %18 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
