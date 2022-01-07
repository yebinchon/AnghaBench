; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.octeon_mgmt = type { i32, i64, i64, i32, i32, %struct.TYPE_8__, i64* }
%struct.TYPE_8__ = type { i32 }
%union.mgmt_port_ring_entry = type { i64, [8 x i8] }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@OCTEON_MGMT_TX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@MIX_ORING2 = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @octeon_mgmt_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.octeon_mgmt*, align 8
  %6 = alloca %union.mgmt_port_ring_entry, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %9)
  store %struct.octeon_mgmt* %10, %struct.octeon_mgmt** %5, align 8
  %11 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %11, i32* %8, align 4
  %12 = bitcast %union.mgmt_port_ring_entry* %6 to i64*
  store i64 0, i64* %12, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = bitcast %union.mgmt_port_ring_entry* %6 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.mgmt_port_ring_entry* %6 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %29 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_map_single(i32 %30, i32 %33, i32 %36, i32 %37)
  %39 = bitcast %union.mgmt_port_ring_entry* %6 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %42 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %47 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OCTEON_MGMT_TX_RING_SIZE, align 4
  %50 = call i32 @ring_max_fill(i32 %49)
  %51 = sub nsw i32 %50, 1
  %52 = icmp sge i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %2
  %57 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %58 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @netif_stop_queue(%struct.net_device* %62)
  %64 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %65 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %56, %2
  %70 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %71 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @OCTEON_MGMT_TX_RING_SIZE, align 4
  %74 = call i32 @ring_max_fill(i32 %73)
  %75 = icmp sge i32 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %81 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %86 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %union.mgmt_port_ring_entry* %6 to %struct.TYPE_5__*
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %union.mgmt_port_ring_entry* %6 to %struct.TYPE_5__*
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(i32 %87, i32 %90, i32 %93, i32 %94)
  br label %160

96:                                               ; preds = %69
  %97 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %98 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %97, i32 0, i32 5
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = call i32 @__skb_queue_tail(%struct.TYPE_8__* %98, %struct.sk_buff* %99)
  %101 = bitcast %union.mgmt_port_ring_entry* %6 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %104 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %103, i32 0, i32 6
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %107 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %102, i64* %109, align 8
  %110 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %111 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  %114 = load i32, i32* @OCTEON_MGMT_TX_RING_SIZE, align 4
  %115 = sext i32 %114 to i64
  %116 = urem i64 %113, %115
  %117 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %118 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %120 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %124 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %129 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %132 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @OCTEON_MGMT_TX_RING_SIZE, align 4
  %135 = call i32 @ring_size_to_bytes(i32 %134)
  %136 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %137 = call i32 @dma_sync_single_for_device(i32 %130, i32 %133, i32 %135, i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.net_device*, %struct.net_device** %4, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %5, align 8
  %152 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MIX_ORING2, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @cvmx_write_csr(i64 %155, i32 1)
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = call i32 @netif_trans_update(%struct.net_device* %157)
  %159 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %96, %79
  %161 = load %struct.net_device*, %struct.net_device** %4, align 8
  %162 = call i32 @octeon_mgmt_update_tx_stats(%struct.net_device* %161)
  %163 = load i32, i32* %8, align 4
  ret i32 %163
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ring_max_fill(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_8__*, %struct.sk_buff*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ring_size_to_bytes(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @octeon_mgmt_update_tx_stats(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
