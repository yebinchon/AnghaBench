; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_dma_desc = type { i32 }
%struct.macb_queue = type { %struct.macb_dma_desc*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macb_dma_desc* (%struct.macb_queue*, i32)* @macb_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.macb_queue* %0, %struct.macb_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %6 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @macb_rx_ring_wrap(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %11 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @macb_adj_dma_desc_idx(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %16 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %15, i32 0, i32 0
  %17 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %17, i64 %19
  ret %struct.macb_dma_desc* %20
}

declare dso_local i32 @macb_rx_ring_wrap(i32, i32) #1

declare dso_local i32 @macb_adj_dma_desc_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
