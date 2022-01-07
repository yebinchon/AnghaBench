; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xmit_xdp_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xmit_xdp_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_frame = type { i32, i8* }
%struct.i40e_ring = type { i64, i64, %struct.i40e_tx_buffer*, i32, %struct.TYPE_2__ }
%struct.i40e_tx_buffer = type { i32, %struct.i40e_tx_desc*, %struct.xdp_frame*, i32 }
%struct.i40e_tx_desc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@I40E_XDP_CONSUMED = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_ICRC = common dso_local global i32 0, align 4
@I40E_TXD_CMD = common dso_local global i32 0, align 4
@I40E_XDP_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_frame*, %struct.i40e_ring*)* @i40e_xmit_xdp_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xmit_xdp_ring(%struct.xdp_frame* %0, %struct.i40e_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_frame*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_tx_buffer*, align 8
  %8 = alloca %struct.i40e_tx_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xdp_frame* %0, %struct.xdp_frame** %4, align 8
  store %struct.i40e_ring* %1, %struct.i40e_ring** %5, align 8
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.xdp_frame*, %struct.xdp_frame** %4, align 8
  %16 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load %struct.xdp_frame*, %struct.xdp_frame** %4, align 8
  %19 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %22 = call i32 @I40E_DESC_UNUSED(%struct.i40e_ring* %21)
  %23 = call i32 @unlikely(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %27 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  store i32 %31, i32* %3, align 4
  br label %101

32:                                               ; preds = %2
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_map_single(i32 %35, i8* %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %41 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @dma_mapping_error(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  store i32 %47, i32* %3, align 4
  br label %101

48:                                               ; preds = %32
  %49 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %50 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %49, i32 0, i32 2
  %51 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %51, i64 %52
  store %struct.i40e_tx_buffer* %53, %struct.i40e_tx_buffer** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %56 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.xdp_frame*, %struct.xdp_frame** %4, align 8
  %60 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %60, i32 0, i32 2
  store %struct.xdp_frame* %59, %struct.xdp_frame** %61, align 8
  %62 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %63 = load i32, i32* @len, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dma_unmap_len_set(%struct.i40e_tx_buffer* %62, i32 %63, i32 %64)
  %66 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dma_unmap_addr_set(%struct.i40e_tx_buffer* %66, i32 %67, i32 %68)
  %70 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %70, i64 %71)
  store %struct.i40e_tx_desc* %72, %struct.i40e_tx_desc** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @cpu_to_le64(i32 %73)
  %75 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %76 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @I40E_TX_DESC_CMD_ICRC, align 4
  %78 = load i32, i32* @I40E_TXD_CMD, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @build_ctob(i32 %79, i32 0, i32 %80, i32 0)
  %82 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %83 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = call i32 (...) @smp_wmb()
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %89 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %48
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %92, %48
  %94 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %95 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %96 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %95, i32 0, i32 1
  store %struct.i40e_tx_desc* %94, %struct.i40e_tx_desc** %96, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %99 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @I40E_XDP_TX, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %93, %46, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @I40E_DESC_UNUSED(%struct.i40e_ring*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @build_ctob(i32, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
