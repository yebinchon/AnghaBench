; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, %struct.ixgbe_tx_buffer*, %struct.xdp_umem* }
%struct.ixgbe_tx_buffer = type { i32* }
%struct.xdp_umem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_xsk_clean_tx_ring(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca %struct.ixgbe_tx_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %8 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 4
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %15, align 8
  store %struct.xdp_umem* %16, %struct.xdp_umem** %5, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %49, %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %22, i32 0, i32 3
  %24 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %24, i64 %25
  store %struct.ixgbe_tx_buffer* %26, %struct.ixgbe_tx_buffer** %6, align 8
  %27 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %33 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %34 = call i32 @ixgbe_clean_xdp_tx_buffer(%struct.ixgbe_ring* %32, %struct.ixgbe_tx_buffer* %33)
  br label %38

35:                                               ; preds = %21
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %48, %38
  br label %17

50:                                               ; preds = %17
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @xsk_umem_complete_tx(%struct.xdp_umem* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @ixgbe_clean_xdp_tx_buffer(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i32 @xsk_umem_complete_tx(%struct.xdp_umem*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
