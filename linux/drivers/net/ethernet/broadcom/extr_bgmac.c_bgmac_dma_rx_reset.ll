; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }
%struct.bgmac_dma_ring = type { i64 }

@BGMAC_DMA_RX_CTL = common dso_local global i64 0, align 8
@BGMAC_DMA_RX_STATUS = common dso_local global i64 0, align 8
@BGMAC_DMA_RX_STAT = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_STAT_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reset of ring 0x%X RX failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_rx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_rx_reset(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %5 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %6 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %12 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %13 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BGMAC_DMA_RX_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @bgmac_write(%struct.bgmac* %11, i64 %16, i32 0)
  %18 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %19 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %20 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BGMAC_DMA_RX_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @BGMAC_DMA_RX_STAT, align 4
  %25 = load i32, i32* @BGMAC_DMA_RX_STAT_DISABLED, align 4
  %26 = call i32 @bgmac_wait_value(%struct.bgmac* %18, i64 %23, i32 %24, i32 %25, i32 10000)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %10
  %29 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %30 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %33 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %9, %28, %10
  ret void
}

declare dso_local i32 @bgmac_write(%struct.bgmac*, i64, i32) #1

declare dso_local i32 @bgmac_wait_value(%struct.bgmac*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
