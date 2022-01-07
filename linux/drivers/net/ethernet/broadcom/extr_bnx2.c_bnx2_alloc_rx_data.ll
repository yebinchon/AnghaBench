; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_rx_ring_info = type { i32, %struct.bnx2_rx_bd**, %struct.bnx2_sw_bd* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_bd = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32)* @bnx2_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_rx_data(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca %struct.bnx2_rx_ring_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bnx2_sw_bd*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bnx2_rx_bd*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %14, i32 0, i32 2
  %16 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %16, i64 %17
  store %struct.bnx2_sw_bd* %18, %struct.bnx2_sw_bd** %11, align 8
  %19 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %19, i32 0, i32 1
  %21 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @BNX2_RX_RING(i64 %22)
  %24 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %21, i64 %23
  %25 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @BNX2_RX_IDX(i64 %26)
  %28 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %25, i64 %27
  store %struct.bnx2_rx_bd* %28, %struct.bnx2_rx_bd** %13, align 8
  %29 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32* @kmalloc(i32 %31, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %87

39:                                               ; preds = %4
  %40 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @get_l2_fhdr(i32* %44)
  %46 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %50 = call i64 @dma_map_single(i32* %43, i32 %45, i32 %48, i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @dma_mapping_error(i32* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %87

63:                                               ; preds = %39
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %66 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @dma_unmap_addr_set(%struct.bnx2_sw_bd* %67, i64 %68, i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = trunc i64 %71 to i32
  %73 = ashr i32 %72, 32
  %74 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %75 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* %12, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %79 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %81 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %84 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %63, %58, %36
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @get_l2_fhdr(i32*) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bnx2_sw_bd*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
