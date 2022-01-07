; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_queue_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_queue_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i64, i64, i32 }
%struct.xdp_frame = type { i32, i32 }
%struct.page = type { i32 }
%struct.netsec_tx_pkt_ctrl = type { i32 }
%struct.netsec_desc = type { i32, i32, i64, i32 }

@NETSEC_RING_TX = common dso_local global i64 0, align 8
@DESC_NUM = common dso_local global i32 0, align 4
@NETSEC_XDP_CONSUMED = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TYPE_NETSEC_XDP_NDO = common dso_local global i32 0, align 4
@NETSEC_RING_RX = common dso_local global i64 0, align 8
@NETSEC_RXBUF_HEADROOM = common dso_local global i64 0, align 8
@TYPE_NETSEC_XDP_TX = common dso_local global i32 0, align 4
@NETSEC_XDP_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*, %struct.xdp_frame*, i32)* @netsec_xdp_queue_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_xdp_queue_one(%struct.netsec_priv* %0, %struct.xdp_frame* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netsec_priv*, align 8
  %6 = alloca %struct.xdp_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netsec_desc_ring*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.netsec_tx_pkt_ctrl, align 4
  %11 = alloca %struct.netsec_desc, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.netsec_desc_ring*, align 8
  %15 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %5, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %17 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %16, i32 0, i32 1
  %18 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %17, align 8
  %19 = load i64, i64* @NETSEC_RING_TX, align 8
  %20 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %18, i64 %19
  store %struct.netsec_desc_ring* %20, %struct.netsec_desc_ring** %8, align 8
  %21 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %22 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.page* @virt_to_page(i32 %23)
  store %struct.page* %24, %struct.page** %9, align 8
  %25 = bitcast %struct.netsec_tx_pkt_ctrl* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %27 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %30 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %35 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %38 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  br label %54

42:                                               ; preds = %3
  %43 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %44 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @DESC_NUM, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %50 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %42, %33
  %55 = load i32, i32* @DESC_NUM, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @NETSEC_XDP_CONSUMED, align 4
  store i32 %60, i32* %4, align 4
  br label %128

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %66 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %69 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %72 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i64 @dma_map_single(i32 %67, i32 %70, i32 %73, i32 %74)
  store i64 %75, i64* %12, align 8
  %76 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %77 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i64 @dma_mapping_error(i32 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %64
  %83 = load i32, i32* @NETSEC_XDP_CONSUMED, align 4
  store i32 %83, i32* %4, align 4
  br label %128

84:                                               ; preds = %64
  %85 = load i32, i32* @TYPE_NETSEC_XDP_NDO, align 4
  %86 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %11, i32 0, i32 3
  store i32 %85, i32* %86, align 8
  br label %112

87:                                               ; preds = %61
  %88 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %89 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %88, i32 0, i32 1
  %90 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %89, align 8
  %91 = load i64, i64* @NETSEC_RING_RX, align 8
  %92 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %90, i64 %91
  store %struct.netsec_desc_ring* %92, %struct.netsec_desc_ring** %14, align 8
  %93 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %14, align 8
  %94 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @page_pool_get_dma_dir(i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.page*, %struct.page** %9, align 8
  %98 = call i64 @page_pool_get_dma_addr(%struct.page* %97)
  %99 = load i64, i64* @NETSEC_RXBUF_HEADROOM, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* %12, align 8
  %101 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %102 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %106 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @dma_sync_single_for_device(i32 %103, i64 %104, i32 %107, i32 %108)
  %110 = load i32, i32* @TYPE_NETSEC_XDP_TX, align 4
  %111 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %11, i32 0, i32 3
  store i32 %110, i32* %111, align 8
  br label %112

112:                                              ; preds = %87, %84
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %11, i32 0, i32 2
  store i64 %113, i64* %114, align 8
  %115 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %116 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %11, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %120 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %11, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %124 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %125 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %126 = call i32 @netsec_set_tx_de(%struct.netsec_priv* %123, %struct.netsec_desc_ring* %124, %struct.netsec_tx_pkt_ctrl* %10, %struct.netsec_desc* %11, %struct.xdp_frame* %125)
  %127 = load i32, i32* @NETSEC_XDP_TX, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %112, %82, %59
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.page* @virt_to_page(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @page_pool_get_dma_dir(i32) #1

declare dso_local i64 @page_pool_get_dma_addr(%struct.page*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @netsec_set_tx_de(%struct.netsec_priv*, %struct.netsec_desc_ring*, %struct.netsec_tx_pkt_ctrl*, %struct.netsec_desc*, %struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
