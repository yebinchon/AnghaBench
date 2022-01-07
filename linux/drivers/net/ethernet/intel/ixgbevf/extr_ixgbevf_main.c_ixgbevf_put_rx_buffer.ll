; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_put_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_put_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32 }
%struct.ixgbevf_rx_buffer = type { i32*, i32, i32 }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBEVF_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, %struct.sk_buff*)* @ixgbevf_put_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_put_rx_buffer(%struct.ixgbevf_ring* %0, %struct.ixgbevf_rx_buffer* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store %struct.ixgbevf_rx_buffer* %1, %struct.ixgbevf_rx_buffer** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %8 = call i64 @ixgbevf_can_reuse_rx_page(%struct.ixgbevf_rx_buffer* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %12 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %13 = call i32 @ixgbevf_reuse_rx_page(%struct.ixgbevf_ring* %11, %struct.ixgbevf_rx_buffer* %12)
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %26 = call i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring* %25)
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = load i32, i32* @IXGBEVF_RX_DMA_ATTR, align 4
  %29 = call i32 @dma_unmap_page_attrs(i32 %21, i32 %24, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %14
  %31 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @__page_frag_cache_drain(i32* %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %10
  %39 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local i64 @ixgbevf_can_reuse_rx_page(%struct.ixgbevf_rx_buffer*) #1

declare dso_local i32 @ixgbevf_reuse_rx_page(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
