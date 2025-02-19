; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_put_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_put_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32 }
%struct.igb_rx_buffer = type { i32*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IGB_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %struct.igb_rx_buffer*)* @igb_put_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_put_rx_buffer(%struct.igb_ring* %0, %struct.igb_rx_buffer* %1) #0 {
  %3 = alloca %struct.igb_ring*, align 8
  %4 = alloca %struct.igb_rx_buffer*, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %3, align 8
  store %struct.igb_rx_buffer* %1, %struct.igb_rx_buffer** %4, align 8
  %5 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %6 = call i64 @igb_can_reuse_rx_page(%struct.igb_rx_buffer* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %10 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %11 = call i32 @igb_reuse_rx_page(%struct.igb_ring* %9, %struct.igb_rx_buffer* %10)
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %14 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %20 = call i32 @igb_rx_pg_size(%struct.igb_ring* %19)
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = load i32, i32* @IGB_RX_DMA_ATTR, align 4
  %23 = call i32 @dma_unmap_page_attrs(i32 %15, i32 %18, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__page_frag_cache_drain(i32* %26, i32 %29)
  br label %31

31:                                               ; preds = %12, %8
  %32 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i64 @igb_can_reuse_rx_page(%struct.igb_rx_buffer*) #1

declare dso_local i32 @igb_reuse_rx_page(%struct.igb_ring*, %struct.igb_rx_buffer*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @igb_rx_pg_size(%struct.igb_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
