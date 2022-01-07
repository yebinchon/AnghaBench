; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_dequeue_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_dequeue_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i64, i32, i32, i32, i32*, i32 }
%struct.sk_buff = type { i32 }
%union.mgmt_port_ring_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCTEON_MGMT_RX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@OCTEON_MGMT_RX_HEADROOM = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_mgmt*, %struct.sk_buff**)* @octeon_mgmt_dequeue_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_dequeue_rx_buffer(%struct.octeon_mgmt* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca %struct.octeon_mgmt*, align 8
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %union.mgmt_port_ring_entry, align 4
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %3, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %4, align 8
  %6 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OCTEON_MGMT_RX_RING_SIZE, align 4
  %13 = call i32 @ring_size_to_bytes(i32 %12)
  %14 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %15 = call i32 @dma_sync_single_for_cpu(i32 %8, i32 %11, i32 %13, i32 %14)
  %16 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %20 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.mgmt_port_ring_entry* %5 to i32*
  store i32 %23, i32* %24, align 4
  %25 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %26 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @OCTEON_MGMT_RX_RING_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %28, %30
  %32 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %33 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %35 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %38, i32 0, i32 2
  %40 = call %struct.sk_buff* @__skb_dequeue(i32* %39)
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %41, align 8
  %42 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %43 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @ETH_FRAME_LEN, align 8
  %49 = load i64, i64* @OCTEON_MGMT_RX_HEADROOM, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32 %44, i32 %47, i64 %50, i32 %51)
  %53 = bitcast %union.mgmt_port_ring_entry* %5 to i32*
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ring_size_to_bytes(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
