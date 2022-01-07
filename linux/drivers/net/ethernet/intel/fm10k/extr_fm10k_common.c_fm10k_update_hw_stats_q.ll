; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_stats_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_stats_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_hw_stats_q = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_update_hw_stats_q(%struct.fm10k_hw* %0, %struct.fm10k_hw_stats_q* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca %struct.fm10k_hw_stats_q*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store %struct.fm10k_hw_stats_q* %1, %struct.fm10k_hw_stats_q** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %23, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %16 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @fm10k_update_hw_stats_tx_q(%struct.fm10k_hw* %15, %struct.fm10k_hw_stats_q* %16, i64 %17)
  %19 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %20 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @fm10k_update_hw_stats_rx_q(%struct.fm10k_hw* %19, %struct.fm10k_hw_stats_q* %20, i64 %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %6, align 8
  %29 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %28, i32 1
  store %struct.fm10k_hw_stats_q* %29, %struct.fm10k_hw_stats_q** %6, align 8
  br label %10

30:                                               ; preds = %10
  ret void
}

declare dso_local i32 @fm10k_update_hw_stats_tx_q(%struct.fm10k_hw*, %struct.fm10k_hw_stats_q*, i64) #1

declare dso_local i32 @fm10k_update_hw_stats_rx_q(%struct.fm10k_hw*, %struct.fm10k_hw_stats_q*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
