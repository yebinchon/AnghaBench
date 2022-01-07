; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_rx_fill_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_rx_fill_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_mgmt = type { i64, i64, i64, i32, i32, i64*, i32 }
%union.mgmt_port_ring_entry = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OCTEON_MGMT_RX_RING_SIZE = common dso_local global i32 0, align 4
@OCTEON_MGMT_RX_HEADROOM = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@MIX_IRING2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @octeon_mgmt_rx_fill_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_rx_fill_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_mgmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.mgmt_port_ring_entry, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_mgmt* %8, %struct.octeon_mgmt** %3, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @OCTEON_MGMT_RX_RING_SIZE, align 4
  %14 = call i64 @ring_max_fill(i32 %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %9
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCTEON_MGMT_RX_HEADROOM, align 4
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %21, 8
  %23 = load i32, i32* @NET_IP_ALIGN, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %92

31:                                               ; preds = %16
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @NET_IP_ALIGN, align 4
  %34 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 %33)
  %35 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %36 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %35, i32 0, i32 6
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @__skb_queue_tail(i32* %36, %struct.sk_buff* %37)
  %39 = bitcast %union.mgmt_port_ring_entry* %5 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_map_single(i32 %45, i32 %48, i32 %49, i32 %50)
  %52 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = bitcast %union.mgmt_port_ring_entry* %5 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %57 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %56, i32 0, i32 5
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %60 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 %55, i64* %62, align 8
  %63 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %64 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %67 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @OCTEON_MGMT_RX_RING_SIZE, align 4
  %70 = call i32 @ring_size_to_bytes(i32 %69)
  %71 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %72 = call i32 @dma_sync_single_for_device(i32 %65, i32 %68, i32 %70, i32 %71)
  %73 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %74 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  %77 = load i32, i32* @OCTEON_MGMT_RX_RING_SIZE, align 4
  %78 = sext i32 %77 to i64
  %79 = urem i64 %76, %78
  %80 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %81 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %87 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MIX_IRING2, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @cvmx_write_csr(i64 %90, i32 1)
  br label %9

92:                                               ; preds = %30, %9
  ret void
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ring_max_fill(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ring_size_to_bytes(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
