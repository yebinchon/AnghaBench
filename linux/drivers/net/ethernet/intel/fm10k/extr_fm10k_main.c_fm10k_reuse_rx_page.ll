; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_reuse_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_reuse_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i64, i64, i32, %struct.fm10k_rx_buffer* }
%struct.fm10k_rx_buffer = type { i32, i32 }

@FM10K_RX_BUFSZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_ring*, %struct.fm10k_rx_buffer*)* @fm10k_reuse_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_reuse_rx_page(%struct.fm10k_ring* %0, %struct.fm10k_rx_buffer* %1) #0 {
  %3 = alloca %struct.fm10k_ring*, align 8
  %4 = alloca %struct.fm10k_rx_buffer*, align 8
  %5 = alloca %struct.fm10k_rx_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %3, align 8
  store %struct.fm10k_rx_buffer* %1, %struct.fm10k_rx_buffer** %4, align 8
  %7 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %8 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %10, i32 0, i32 3
  %12 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %12, i64 %13
  store %struct.fm10k_rx_buffer* %14, %struct.fm10k_rx_buffer** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %28 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %5, align 8
  %30 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %4, align 8
  %31 = bitcast %struct.fm10k_rx_buffer* %29 to i8*
  %32 = bitcast %struct.fm10k_rx_buffer* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %34 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FM10K_RX_BUFSZ, align 4
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_sync_single_range_for_device(i32 %35, i32 %38, i32 %41, i32 %42, i32 %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
