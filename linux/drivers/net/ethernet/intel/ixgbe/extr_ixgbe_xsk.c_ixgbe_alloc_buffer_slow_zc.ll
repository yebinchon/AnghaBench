; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_alloc_buffer_slow_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_alloc_buffer_slow_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { %struct.xdp_umem*, %struct.TYPE_2__ }
%struct.xdp_umem = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_rx_buffer = type { i32, i32, i32 }

@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*)* @ixgbe_alloc_buffer_slow_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_alloc_buffer_slow_zc(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_rx_buffer*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %5, align 8
  %9 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %9, i32 0, i32 0
  %11 = load %struct.xdp_umem*, %struct.xdp_umem** %10, align 8
  store %struct.xdp_umem* %11, %struct.xdp_umem** %6, align 8
  %12 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %13 = call i32 @xsk_umem_peek_addr_rq(%struct.xdp_umem* %12, i64* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  store i32 0, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %22, i32 0, i32 0
  %24 = load %struct.xdp_umem*, %struct.xdp_umem** %23, align 8
  %25 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %30 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @xdp_umem_get_dma(%struct.xdp_umem* %34, i64 %35)
  %37 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @xdp_umem_get_data(%struct.xdp_umem* %46, i64 %47)
  %49 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %61 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %58, i64 %59, i64 %62)
  %64 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %67 = call i32 @xsk_umem_discard_addr_rq(%struct.xdp_umem* %66)
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %21, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @xsk_umem_peek_addr_rq(%struct.xdp_umem*, i64*) #1

declare dso_local i32 @xdp_umem_get_dma(%struct.xdp_umem*, i64) #1

declare dso_local i32 @xdp_umem_get_data(%struct.xdp_umem*, i64) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i64, i64) #1

declare dso_local i32 @xsk_umem_discard_addr_rq(%struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
