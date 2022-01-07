; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb_queue*, i32)* @macb_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_tx_dma(%struct.macb_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.macb_queue* %0, %struct.macb_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %7 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @macb_tx_ring_wrap(i32 %8, i32 %9)
  %11 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %12 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @macb_dma_desc_get_size(i32 %13)
  %15 = mul nsw i32 %10, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %17 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  ret i32 %20
}

declare dso_local i32 @macb_tx_ring_wrap(i32, i32) #1

declare dso_local i32 @macb_dma_desc_get_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
