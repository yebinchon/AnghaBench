; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xmit_xdp_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xmit_xdp_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ring** }
%struct.ixgbe_ring = type { i64, i64, %struct.ixgbe_tx_buffer*, i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, %union.ixgbe_adv_tx_desc*, %struct.xdp_frame*, i64 }
%union.ixgbe_adv_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.xdp_frame = type { i32, i32 }

@IXGBE_XDP_CONSUMED = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_DATA = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_IFCS = common dso_local global i32 0, align 4
@IXGBE_TXD_CMD = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_XDP_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter* %0, %struct.xdp_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.xdp_frame*, align 8
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca %struct.ixgbe_tx_buffer*, align 8
  %8 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %14, align 8
  %16 = call i64 (...) @smp_processor_id()
  %17 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %15, i64 %16
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  store %struct.ixgbe_ring* %18, %struct.ixgbe_ring** %6, align 8
  %19 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %20 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %23 = call i32 @ixgbe_desc_unused(%struct.ixgbe_ring* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %30, i32* %3, align 4
  br label %125

31:                                               ; preds = %2
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %33 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %36 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_map_single(i32 %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @dma_mapping_error(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %48, i32* %3, align 4
  br label %125

49:                                               ; preds = %31
  %50 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %51 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %50, i32 0, i32 2
  %52 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %51, align 8
  %53 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %52, i64 %55
  store %struct.ixgbe_tx_buffer* %56, %struct.ixgbe_tx_buffer** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %63 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %65 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %67, i64 %68)
  store %union.ixgbe_adv_tx_desc* %69, %union.ixgbe_adv_tx_desc** %8, align 8
  %70 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @dma_unmap_len_set(%struct.ixgbe_tx_buffer* %70, i32 %71, i32 %72)
  %74 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @dma_unmap_addr_set(%struct.ixgbe_tx_buffer* %74, i32 %75, i32 %76)
  %78 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %79 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %79, i32 0, i32 3
  store %struct.xdp_frame* %78, %struct.xdp_frame** %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @cpu_to_le64(i32 %81)
  %83 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %8, align 8
  %84 = bitcast %union.ixgbe_adv_tx_desc* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @IXGBE_ADVTXD_DTYP_DATA, align 4
  %87 = load i32, i32* @IXGBE_ADVTXD_DCMD_DEXT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IXGBE_ADVTXD_DCMD_IFCS, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @IXGBE_TXD_CMD, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %8, align 8
  %99 = bitcast %union.ixgbe_adv_tx_desc* %98 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @IXGBE_ADVTXD_PAYLEN_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %8, align 8
  %106 = bitcast %union.ixgbe_adv_tx_desc* %105 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = call i32 (...) @smp_wmb()
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %113 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %49
  store i64 0, i64* %12, align 8
  br label %117

117:                                              ; preds = %116, %49
  %118 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %8, align 8
  %119 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %120 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %119, i32 0, i32 2
  store %union.ixgbe_adv_tx_desc* %118, %union.ixgbe_adv_tx_desc** %120, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %123 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @IXGBE_XDP_TX, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %47, %29
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_desc_unused(%struct.ixgbe_ring*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ixgbe_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ixgbe_tx_buffer*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
