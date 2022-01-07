; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_unbind_hw_stats_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_unbind_hw_stats_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw_stats_q = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_unbind_hw_stats_q(%struct.fm10k_hw_stats_q* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fm10k_hw_stats_q*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fm10k_hw_stats_q* %0, %struct.fm10k_hw_stats_q** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %17, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %4, align 8
  %16 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %5, align 8
  %22 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %4, align 8
  %23 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %22, i32 1
  store %struct.fm10k_hw_stats_q* %23, %struct.fm10k_hw_stats_q** %4, align 8
  br label %8

24:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
