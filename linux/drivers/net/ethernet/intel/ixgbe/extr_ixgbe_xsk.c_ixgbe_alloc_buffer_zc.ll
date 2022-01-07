; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_alloc_buffer_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_alloc_buffer_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { %struct.TYPE_2__, %struct.xdp_umem* }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_umem = type { i64 }
%struct.ixgbe_rx_buffer = type { i32, i8*, i32 }

@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*)* @ixgbe_alloc_buffer_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_alloc_buffer_zc(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_rx_buffer*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %5, align 8
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 1
  %12 = load %struct.xdp_umem*, %struct.xdp_umem** %11, align 8
  store %struct.xdp_umem* %12, %struct.xdp_umem** %6, align 8
  %13 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %21 = call i32 @xsk_umem_peek_addr(%struct.xdp_umem* %20, i64* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  store i32 0, i32* %3, align 4
  br label %67

29:                                               ; preds = %19
  %30 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %31 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @xdp_umem_get_dma(%struct.xdp_umem* %35, i64 %36)
  %38 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i8* @xdp_umem_get_data(%struct.xdp_umem* %47, i64 %48)
  %50 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i64 %52
  store i8* %56, i8** %54, align 8
  %57 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %60 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %57, i64 %58, i64 %61)
  %63 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %64 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %66 = call i32 @xsk_umem_discard_addr(%struct.xdp_umem* %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %29, %23, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @xsk_umem_peek_addr(%struct.xdp_umem*, i64*) #1

declare dso_local i32 @xdp_umem_get_dma(%struct.xdp_umem*, i64) #1

declare dso_local i8* @xdp_umem_get_data(%struct.xdp_umem*, i64) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i64, i64) #1

declare dso_local i32 @xsk_umem_discard_addr(%struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
