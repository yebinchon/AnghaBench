; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_dmacontroller_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_dmacontroller_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i32, i64 }

@B43legacy_DMA32_TXRING = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_dmaring*)* @dmacontroller_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmacontroller_cleanup(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  %3 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %4 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %12 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %15 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @b43legacy_dmacontroller_tx_reset(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %19 = load i32, i32* @B43legacy_DMA32_TXRING, align 4
  %20 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %18, i32 %19, i32 0)
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %23 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %26 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %29 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @b43legacy_dmacontroller_rx_reset(i32 %24, i32 %27, i32 %30)
  %32 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %33 = load i32, i32* @B43legacy_DMA32_RXRING, align 4
  %34 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @b43legacy_dmacontroller_tx_reset(i32, i32, i32) #1

declare dso_local i32 @b43legacy_dma_write(%struct.b43legacy_dmaring*, i32, i32) #1

declare dso_local i32 @b43legacy_dmacontroller_rx_reset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
