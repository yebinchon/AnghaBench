; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_xdp_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_xdp_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i64, i64, i32, %struct.ixgbevf_tx_buffer*, i32 }
%struct.ixgbevf_tx_buffer = type { i32, i32, i32, %union.ixgbe_adv_tx_desc*, i64 }
%union.ixgbe_adv_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.xdp_buff = type { i32, i32 }
%struct.ixgbe_adv_tx_context_desc = type { i64, i8*, i64, i8* }

@IXGBEVF_XDP_CONSUMED = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@__IXGBEVF_TX_XDP_RING_PRIMED = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TXD_CMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_DATA = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_IFCS = common dso_local global i32 0, align 4
@IXGBE_TXD_CMD = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_CC = common dso_local global i32 0, align 4
@IXGBEVF_XDP_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*, %struct.xdp_buff*)* @ixgbevf_xmit_xdp_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_xmit_xdp_ring(%struct.ixgbevf_ring* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.xdp_buff*, align 8
  %6 = alloca %struct.ixgbevf_tx_buffer*, align 8
  %7 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ixgbe_adv_tx_context_desc*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %5, align 8
  %13 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %14 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %17 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %21 = call i32 @ixgbevf_desc_unused(%struct.ixgbevf_ring* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IXGBEVF_XDP_CONSUMED, align 4
  store i32 %28, i32* %3, align 4
  br label %154

29:                                               ; preds = %2
  %30 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %34 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_map_single(i32 %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @dma_mapping_error(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @IXGBEVF_XDP_CONSUMED, align 4
  store i32 %46, i32* %3, align 4
  br label %154

47:                                               ; preds = %29
  %48 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %51, i32 0, i32 3
  %53 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %53, i64 %54
  store %struct.ixgbevf_tx_buffer* %55, %struct.ixgbevf_tx_buffer** %6, align 8
  %56 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dma_unmap_len_set(%struct.ixgbevf_tx_buffer* %56, i32 %57, i32 %58)
  %60 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dma_unmap_addr_set(%struct.ixgbevf_tx_buffer* %60, i32 %61, i32 %62)
  %64 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %65 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @__IXGBEVF_TX_XDP_RING_PRIMED, align 4
  %77 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %78 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %77, i32 0, i32 2
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %47
  %82 = load i32, i32* @__IXGBEVF_TX_XDP_RING_PRIMED, align 4
  %83 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %83, i32 0, i32 2
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %87 = call %struct.ixgbe_adv_tx_context_desc* @IXGBEVF_TX_CTXTDESC(%struct.ixgbevf_ring* %86, i32 0)
  store %struct.ixgbe_adv_tx_context_desc* %87, %struct.ixgbe_adv_tx_context_desc** %12, align 8
  %88 = load i32, i32* @ETH_HLEN, align 4
  %89 = load i32, i32* @IXGBE_ADVTXD_MACLEN_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %12, align 8
  %93 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %12, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @IXGBE_TXD_CMD_DEXT, align 4
  %97 = load i32, i32* @IXGBE_ADVTXD_DTYP_CTXT, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %12, align 8
  %101 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %12, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  store i64 1, i64* %11, align 8
  br label %104

104:                                              ; preds = %81, %47
  %105 = load i32, i32* @IXGBE_ADVTXD_DTYP_DATA, align 4
  %106 = load i32, i32* @IXGBE_ADVTXD_DCMD_DEXT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @IXGBE_ADVTXD_DCMD_IFCS, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @IXGBE_TXD_CMD, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call %union.ixgbe_adv_tx_desc* @IXGBEVF_TX_DESC(%struct.ixgbevf_ring* %115, i64 %116)
  store %union.ixgbe_adv_tx_desc* %117, %union.ixgbe_adv_tx_desc** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @cpu_to_le64(i32 %118)
  %120 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %7, align 8
  %121 = bitcast %union.ixgbe_adv_tx_desc* %120 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %7, align 8
  %126 = bitcast %union.ixgbe_adv_tx_desc* %125 to %struct.TYPE_2__*
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @IXGBE_ADVTXD_PAYLEN_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* @IXGBE_ADVTXD_CC, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %7, align 8
  %135 = bitcast %union.ixgbe_adv_tx_desc* %134 to %struct.TYPE_2__*
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  %137 = call i32 (...) @smp_wmb()
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %142 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %104
  store i64 0, i64* %11, align 8
  br label %146

146:                                              ; preds = %145, %104
  %147 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %7, align 8
  %148 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %149 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %148, i32 0, i32 3
  store %union.ixgbe_adv_tx_desc* %147, %union.ixgbe_adv_tx_desc** %149, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %152 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i32, i32* @IXGBEVF_XDP_TX, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %146, %45, %27
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbevf_desc_unused(%struct.ixgbevf_ring*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ixgbevf_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ixgbevf_tx_buffer*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ixgbe_adv_tx_context_desc* @IXGBEVF_TX_CTXTDESC(%struct.ixgbevf_ring*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBEVF_TX_DESC(%struct.ixgbevf_ring*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
