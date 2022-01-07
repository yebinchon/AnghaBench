; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xmit_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xmit_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i32, %struct.ixgbe_tx_buffer*, i32, i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, i32* }
%union.ixgbe_adv_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.xdp_desc = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_DATA = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_IFCS = common dso_local global i32 0, align 4
@IXGBE_TXD_CMD = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, i32)* @ixgbe_xmit_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xmit_zc(%struct.ixgbe_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %6 = alloca %struct.ixgbe_tx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_desc, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store %union.ixgbe_adv_tx_desc* null, %union.ixgbe_adv_tx_desc** %5, align 8
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %115, %2
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ugt i32 %12, 0
  br i1 %14, label %15, label %116

15:                                               ; preds = %11
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %17 = call i32 @ixgbe_desc_unused(%struct.ixgbe_ring* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_carrier_ok(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %15
  store i32 0, i32* %7, align 4
  br label %116

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @xsk_umem_consume_tx(i32 %33, %struct.xdp_desc* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %116

37:                                               ; preds = %30
  %38 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xdp_umem_get_dma(i32 %40, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %51 = call i32 @dma_sync_single_for_device(i32 %46, i32 %47, i32 %49, i32 %50)
  %52 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %52, i32 0, i32 3
  %54 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %53, align 8
  %55 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %54, i64 %57
  store %struct.ixgbe_tx_buffer* %58, %struct.ixgbe_tx_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %68 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %67, i64 %70)
  store %union.ixgbe_adv_tx_desc* %71, %union.ixgbe_adv_tx_desc** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @cpu_to_le64(i32 %72)
  %74 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %5, align 8
  %75 = bitcast %union.ixgbe_adv_tx_desc* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @IXGBE_ADVTXD_DTYP_DATA, align 4
  %78 = load i32, i32* @IXGBE_ADVTXD_DCMD_DEXT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IXGBE_ADVTXD_DCMD_IFCS, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IXGBE_TXD_CMD, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %5, align 8
  %91 = bitcast %union.ixgbe_adv_tx_desc* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IXGBE_ADVTXD_PAYLEN_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %5, align 8
  %99 = bitcast %union.ixgbe_adv_tx_desc* %98 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %109 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %37
  %113 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %112, %37
  br label %11

116:                                              ; preds = %36, %29, %11
  %117 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %5, align 8
  %118 = icmp ne %union.ixgbe_adv_tx_desc* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %121 = call i32 @ixgbe_xdp_ring_update_tail(%struct.ixgbe_ring* %120)
  %122 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %123 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @xsk_umem_consume_tx_done(i32 %124)
  br label %126

126:                                              ; preds = %119, %116
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i1 [ false, %126 ], [ %131, %129 ]
  %134 = zext i1 %133 to i32
  ret i32 %134
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_desc_unused(%struct.ixgbe_ring*) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @xsk_umem_consume_tx(i32, %struct.xdp_desc*) #1

declare dso_local i32 @xdp_umem_get_dma(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ixgbe_xdp_ring_update_tail(%struct.ixgbe_ring*) #1

declare dso_local i32 @xsk_umem_consume_tx_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
