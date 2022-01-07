; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_free_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_free_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sxgbe_rx_norm_desc = type { i32 }
%struct.sxgbe_rx_queue = type { i32*, i32* }
%struct.sxgbe_priv_data = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sxgbe_rx_norm_desc*, i32, i32, %struct.sxgbe_rx_queue*)* @sxgbe_free_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_free_rx_buffers(%struct.net_device* %0, %struct.sxgbe_rx_norm_desc* %1, i32 %2, i32 %3, %struct.sxgbe_rx_queue* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sxgbe_rx_norm_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sxgbe_rx_queue*, align 8
  %11 = alloca %struct.sxgbe_priv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sxgbe_rx_norm_desc* %1, %struct.sxgbe_rx_norm_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sxgbe_rx_queue* %4, %struct.sxgbe_rx_queue** %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %12)
  store %struct.sxgbe_priv_data* %13, %struct.sxgbe_priv_data** %11, align 8
  %14 = load %struct.sxgbe_rx_queue*, %struct.sxgbe_rx_queue** %10, align 8
  %15 = getelementptr inbounds %struct.sxgbe_rx_queue, %struct.sxgbe_rx_queue* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kfree_skb(i32 %20)
  %22 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %11, align 8
  %23 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sxgbe_rx_queue*, %struct.sxgbe_rx_queue** %10, align 8
  %26 = getelementptr inbounds %struct.sxgbe_rx_queue, %struct.sxgbe_rx_queue* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %34 = call i32 @dma_unmap_single(i32 %24, i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
