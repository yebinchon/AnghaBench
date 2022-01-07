; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }
%struct.macb_dma_desc = type { i32 }

@RX_WADDR = common dso_local global i32 0, align 4
@HW_DMA_CAP_64B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*, %struct.macb_dma_desc*)* @macb_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_get_addr(%struct.macb* %0, %struct.macb_dma_desc* %1) #0 {
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.macb_dma_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %3, align 8
  store %struct.macb_dma_desc* %1, %struct.macb_dma_desc** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @RX_WADDR, align 4
  %7 = load i32, i32* @RX_WADDR, align 4
  %8 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %9 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MACB_BFEXT(i32 %7, i32 %10)
  %12 = call i32 @MACB_BF(i32 %6, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @MACB_BF(i32, i32) #1

declare dso_local i32 @MACB_BFEXT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
