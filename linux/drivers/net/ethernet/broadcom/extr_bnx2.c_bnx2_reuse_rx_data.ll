; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reuse_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reuse_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_rx_ring_info = type { %struct.bnx2_rx_bd**, i32, %struct.bnx2_sw_bd* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_bd = type { i32* }

@mapping = common dso_local global i32 0, align 4
@BNX2_RX_OFFSET = common dso_local global i64 0, align 8
@BNX2_RX_COPY_THRESH = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32*, i64, i64)* @bnx2_reuse_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_reuse_rx_data(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca %struct.bnx2_rx_ring_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2_sw_bd*, align 8
  %12 = alloca %struct.bnx2_sw_bd*, align 8
  %13 = alloca %struct.bnx2_rx_bd*, align 8
  %14 = alloca %struct.bnx2_rx_bd*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %15, i32 0, i32 2
  %17 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %17, i64 %18
  store %struct.bnx2_sw_bd* %19, %struct.bnx2_sw_bd** %11, align 8
  %20 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %20, i32 0, i32 2
  %22 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %22, i64 %23
  store %struct.bnx2_sw_bd* %24, %struct.bnx2_sw_bd** %12, align 8
  %25 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %30 = load i32, i32* @mapping, align 4
  %31 = call i32 @dma_unmap_addr(%struct.bnx2_sw_bd* %29, i32 %30)
  %32 = load i64, i64* @BNX2_RX_OFFSET, align 8
  %33 = load i64, i64* @BNX2_RX_COPY_THRESH, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %36 = call i32 @dma_sync_single_for_device(i32* %28, i32 %31, i64 %34, i32 %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %12, align 8
  %48 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %5
  br label %90

53:                                               ; preds = %5
  %54 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %12, align 8
  %55 = load i32, i32* @mapping, align 4
  %56 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %57 = load i32, i32* @mapping, align 4
  %58 = call i32 @dma_unmap_addr(%struct.bnx2_sw_bd* %56, i32 %57)
  %59 = call i32 @dma_unmap_addr_set(%struct.bnx2_sw_bd* %54, i32 %55, i32 %58)
  %60 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %61 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %60, i32 0, i32 0
  %62 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @BNX2_RX_RING(i64 %63)
  %65 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %62, i64 %64
  %66 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @BNX2_RX_IDX(i64 %67)
  %69 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %66, i64 %68
  store %struct.bnx2_rx_bd* %69, %struct.bnx2_rx_bd** %13, align 8
  %70 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %71 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %70, i32 0, i32 0
  %72 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @BNX2_RX_RING(i64 %73)
  %75 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %72, i64 %74
  %76 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @BNX2_RX_IDX(i64 %77)
  %79 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %76, i64 %78
  store %struct.bnx2_rx_bd* %79, %struct.bnx2_rx_bd** %14, align 8
  %80 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %81 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %14, align 8
  %84 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %86 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %14, align 8
  %89 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_bd*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bnx2_sw_bd*, i32, i32) #1

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
