; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_reuse_rx_buffer_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_reuse_rx_buffer_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, %struct.ixgbe_rx_buffer* }
%struct.ixgbe_rx_buffer = type { i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*)* @ixgbe_reuse_rx_buffer_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_reuse_rx_buffer_zc(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.ixgbe_rx_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_rx_buffer*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %4, align 8
  %7 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 2
  %12 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %11, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %12, i64 %15
  store %struct.ixgbe_rx_buffer* %16, %struct.ixgbe_rx_buffer** %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
