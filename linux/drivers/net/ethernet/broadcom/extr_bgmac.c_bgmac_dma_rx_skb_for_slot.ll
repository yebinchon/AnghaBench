; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_skb_for_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_skb_for_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.bgmac_slot_info = type { i32, i8* }
%struct.bgmac_rx_header = type { i8*, i8* }

@BGMAC_RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BGMAC_RX_BUF_OFFSET = common dso_local global i32 0, align 4
@BGMAC_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*, %struct.bgmac_slot_info*)* @bgmac_dma_rx_skb_for_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_dma_rx_skb_for_slot(%struct.bgmac* %0, %struct.bgmac_slot_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgmac*, align 8
  %5 = alloca %struct.bgmac_slot_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bgmac_rx_header*, align 8
  %9 = alloca i8*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %4, align 8
  store %struct.bgmac_slot_info* %1, %struct.bgmac_slot_info** %5, align 8
  %10 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %11 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i32, i32* @BGMAC_RX_ALLOC_SIZE, align 4
  %14 = call i8* @netdev_alloc_frag(i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @BGMAC_RX_BUF_OFFSET, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  %25 = bitcast i8* %24 to %struct.bgmac_rx_header*
  store %struct.bgmac_rx_header* %25, %struct.bgmac_rx_header** %8, align 8
  %26 = call i8* @cpu_to_le16(i32 57005)
  %27 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %8, align 8
  %28 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = call i8* @cpu_to_le16(i32 48879)
  %30 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %8, align 8
  %31 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @BGMAC_RX_BUF_OFFSET, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = load i32, i32* @BGMAC_RX_BUF_SIZE, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_map_single(%struct.device* %32, i8* %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @dma_mapping_error(%struct.device* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %20
  %45 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %46 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @virt_to_head_page(i8* %49)
  %51 = call i32 @put_page(i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %20
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %5, align 8
  %57 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %5, align 8
  %60 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %44, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_head_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
