; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, %struct.ixgbe_rx_buffer*, i32 }
%struct.ixgbe_rx_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_xsk_clean_rx_ring(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_rx_buffer*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %5 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %8, i32 0, i32 3
  %10 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %10, i64 %11
  store %struct.ixgbe_rx_buffer* %12, %struct.ixgbe_rx_buffer** %4, align 8
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xsk_umem_fq_reuse(i32 %22, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  %29 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %29, i32 1
  store %struct.ixgbe_rx_buffer* %30, %struct.ixgbe_rx_buffer** %4, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  %37 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %37, i32 0, i32 3
  %39 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %38, align 8
  store %struct.ixgbe_rx_buffer* %39, %struct.ixgbe_rx_buffer** %4, align 8
  br label %40

40:                                               ; preds = %36, %19
  br label %13

41:                                               ; preds = %13
  ret void
}

declare dso_local i32 @xsk_umem_fq_reuse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
