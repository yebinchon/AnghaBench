; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c___ath10k_ce_rx_num_free_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c___ath10k_ce_rx_num_free_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.ath10k_ce_ring*, %struct.ath10k* }
%struct.ath10k_ce_ring = type { i32, i32, i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ath10k_ce_rx_num_free_bufs(%struct.ath10k_ce_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_ce_pipe*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ce*, align 8
  %5 = alloca %struct.ath10k_ce_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %2, align 8
  %9 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %9, i32 0, i32 1
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %3, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %12)
  store %struct.ath10k_ce* %13, %struct.ath10k_ce** %4, align 8
  %14 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %15 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %14, i32 0, i32 0
  %16 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %15, align 8
  store %struct.ath10k_ce_ring* %16, %struct.ath10k_ce_ring** %5, align 8
  %17 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %21 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %24 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ath10k_ce*, %struct.ath10k_ce** %4, align 8
  %27 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %26, i32 0, i32 0
  %28 = call i32 @lockdep_assert_held(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub i32 %31, 1
  %33 = call i32 @CE_RING_DELTA(i32 %29, i32 %30, i32 %32)
  ret i32 %33
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @CE_RING_DELTA(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
