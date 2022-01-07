; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_op32_tx_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_op32_tx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32 }

@B43_DMA32_TXCTL = common dso_local global i32 0, align 4
@B43_DMA32_TXSUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*)* @op32_tx_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op32_tx_suspend(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  %3 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %4 = load i32, i32* @B43_DMA32_TXCTL, align 4
  %5 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %6 = load i32, i32* @B43_DMA32_TXCTL, align 4
  %7 = call i32 @b43_dma_read(%struct.b43_dmaring* %5, i32 %6)
  %8 = load i32, i32* @B43_DMA32_TXSUSPEND, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @b43_dma_write(%struct.b43_dmaring* %3, i32 %4, i32 %9)
  ret void
}

declare dso_local i32 @b43_dma_write(%struct.b43_dmaring*, i32, i32) #1

declare dso_local i32 @b43_dma_read(%struct.b43_dmaring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
