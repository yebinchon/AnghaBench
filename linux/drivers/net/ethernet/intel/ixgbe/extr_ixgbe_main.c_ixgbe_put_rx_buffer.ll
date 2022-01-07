; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_put_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_put_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_rx_buffer = type { i64, i32*, i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBE_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.sk_buff*)* @ixgbe_put_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_put_rx_buffer(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_rx_buffer*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %8 = call i64 @ixgbe_can_reuse_rx_page(%struct.ixgbe_rx_buffer* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %12 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %13 = call i32 @ixgbe_reuse_rx_page(%struct.ixgbe_ring* %11, %struct.ixgbe_rx_buffer* %12)
  br label %51

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  br label %43

31:                                               ; preds = %18, %14
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %33 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %39 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %38)
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = load i32, i32* @IXGBE_RX_DMA_ATTR, align 4
  %42 = call i32 @dma_unmap_page_attrs(i32 %34, i64 %37, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %27
  %44 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @__page_frag_cache_drain(i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %10
  %52 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  ret void
}

declare dso_local i64 @ixgbe_can_reuse_rx_page(%struct.ixgbe_rx_buffer*) #1

declare dso_local i32 @ixgbe_reuse_rx_page(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*) #1

declare dso_local i32 @IS_ERR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
