; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_poison_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_poison_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bgmac_slot_info = type { i32, %struct.bgmac_rx_header* }
%struct.bgmac_rx_header = type { i8*, i8* }

@BGMAC_RX_BUF_OFFSET = common dso_local global i32 0, align 4
@BGMAC_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.bgmac_slot_info*)* @bgmac_dma_rx_poison_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_rx_poison_buf(%struct.device* %0, %struct.bgmac_slot_info* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bgmac_slot_info*, align 8
  %5 = alloca %struct.bgmac_rx_header*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.bgmac_slot_info* %1, %struct.bgmac_slot_info** %4, align 8
  %6 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %4, align 8
  %7 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %6, i32 0, i32 1
  %8 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %7, align 8
  %9 = load i32, i32* @BGMAC_RX_BUF_OFFSET, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %8, i64 %10
  store %struct.bgmac_rx_header* %11, %struct.bgmac_rx_header** %5, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %4, align 8
  %14 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BGMAC_RX_BUF_SIZE, align 4
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = call i32 @dma_sync_single_for_cpu(%struct.device* %12, i32 %15, i32 %16, i32 %17)
  %19 = call i8* @cpu_to_le16(i32 57005)
  %20 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %5, align 8
  %21 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = call i8* @cpu_to_le16(i32 48879)
  %23 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %5, align 8
  %24 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %4, align 8
  %27 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BGMAC_RX_BUF_SIZE, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @dma_sync_single_for_device(%struct.device* %25, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
