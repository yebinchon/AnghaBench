; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_clean_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_clean_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i64, i32, i64, i32, i32, %struct.TYPE_6__, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%union.cvmx_mixx_orcnt = type { i8* }
%union.mgmt_port_ring_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MIX_ORCNT = common dso_local global i64 0, align 8
@OCTEON_MGMT_TX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt*)* @octeon_mgmt_clean_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_clean_tx_buffers(%struct.octeon_mgmt* %0) #0 {
  %2 = alloca %struct.octeon_mgmt*, align 8
  %3 = alloca %union.cvmx_mixx_orcnt, align 8
  %4 = alloca %union.mgmt_port_ring_entry, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.skb_shared_hwtstamps, align 4
  %9 = alloca i8*, align 8
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MIX_ORCNT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @cvmx_read_csr(i64 %14)
  %16 = bitcast %union.cvmx_mixx_orcnt* %3 to i8**
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %130, %1
  %18 = bitcast %union.cvmx_mixx_orcnt* %3 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %142

22:                                               ; preds = %17
  %23 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %24 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MIX_ORCNT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i8* @cvmx_read_csr(i64 %32)
  %34 = bitcast %union.cvmx_mixx_orcnt* %3 to i8**
  store i8* %33, i8** %34, align 8
  %35 = bitcast %union.cvmx_mixx_orcnt* %3 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %22
  %40 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %41 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %142

45:                                               ; preds = %22
  %46 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %47 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %50 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OCTEON_MGMT_TX_RING_SIZE, align 4
  %53 = call i32 @ring_size_to_bytes(i32 %52)
  %54 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %55 = call i32 @dma_sync_single_for_cpu(i32 %48, i32 %51, i32 %53, i32 %54)
  %56 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %57 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %60 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = bitcast %union.mgmt_port_ring_entry* %4 to i32*
  store i32 %63, i32* %64, align 4
  %65 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %66 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  %69 = load i32, i32* @OCTEON_MGMT_TX_RING_SIZE, align 4
  %70 = sext i32 %69 to i64
  %71 = urem i64 %68, %70
  %72 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %73 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %75 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %74, i32 0, i32 5
  %76 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_6__* %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %5, align 8
  %77 = bitcast %union.cvmx_mixx_orcnt* %3 to i8**
  store i8* null, i8** %77, align 8
  %78 = bitcast %union.cvmx_mixx_orcnt* %3 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %81 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MIX_ORCNT, align 8
  %84 = add nsw i64 %82, %83
  %85 = bitcast %union.cvmx_mixx_orcnt* %3 to i8**
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @cvmx_write_csr(i64 %84, i8* %86)
  %88 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %89 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %93 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %98 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.mgmt_port_ring_entry* %4 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = bitcast %union.mgmt_port_ring_entry* %4 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @dma_unmap_single(i32 %99, i32 %102, i32 %105, i32 %106)
  %108 = bitcast %union.mgmt_port_ring_entry* %4 to %struct.TYPE_5__*
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %45
  %114 = call i32 @memset(%struct.skb_shared_hwtstamps* %8, i32 0, i32 4)
  %115 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %116 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @CVMX_MIXX_TSTAMP(i32 %117)
  %119 = call i8* @cvmx_read_csr(i64 %118)
  store i8* %119, i8** %9, align 8
  %120 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %121 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @CVMX_MIXX_TSCTL(i32 %122)
  %124 = call i32 @cvmx_write_csr(i64 %123, i8* null)
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @ns_to_ktime(i8* %125)
  %127 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %8, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @skb_tstamp_tx(%struct.sk_buff* %128, %struct.skb_shared_hwtstamps* %8)
  br label %130

130:                                              ; preds = %113, %45
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %131)
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %136 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MIX_ORCNT, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i8* @cvmx_read_csr(i64 %139)
  %141 = bitcast %union.cvmx_mixx_orcnt* %3 to i8**
  store i8* %140, i8** %141, align 8
  br label %17

142:                                              ; preds = %39, %17
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %147 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @netif_queue_stopped(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %153 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @netif_wake_queue(i32 %154)
  br label %156

156:                                              ; preds = %151, %145, %142
  ret void
}

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ring_size_to_bytes(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_6__*) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i64 @CVMX_MIXX_TSTAMP(i32) #1

declare dso_local i64 @CVMX_MIXX_TSCTL(i32) #1

declare dso_local i32 @ns_to_ktime(i8*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
