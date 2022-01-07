; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_init_ring_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_init_ring_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { %struct.TYPE_4__*, %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_descriptor* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lan743x_rx_buffer_info = type { i32, %struct.sk_buff*, i64 }
%struct.lan743x_rx_descriptor = type { i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }

@LAN743X_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@RX_HEAD_PADDING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_DESC_DATA0_OWN_ = common dso_local global i32 0, align 4
@RX_DESC_DATA0_BUF_LENGTH_MASK_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_rx*, i32, %struct.sk_buff*)* @lan743x_rx_init_ring_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_rx_init_ring_element(%struct.lan743x_rx* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan743x_rx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.lan743x_rx_buffer_info*, align 8
  %9 = alloca %struct.lan743x_rx_descriptor*, align 8
  %10 = alloca i32, align 4
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @LAN743X_MAX_FRAME_SIZE, align 4
  %12 = load i32, i32* @ETH_HLEN, align 4
  %13 = add nsw i32 %11, %12
  %14 = add nsw i32 %13, 4
  %15 = load i32, i32* @RX_HEAD_PADDING, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.lan743x_rx*, %struct.lan743x_rx** %5, align 8
  %18 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %17, i32 0, i32 2
  %19 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %19, i64 %21
  store %struct.lan743x_rx_descriptor* %22, %struct.lan743x_rx_descriptor** %9, align 8
  %23 = load %struct.lan743x_rx*, %struct.lan743x_rx** %5, align 8
  %24 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %23, i32 0, i32 1
  %25 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %25, i64 %27
  store %struct.lan743x_rx_buffer_info* %28, %struct.lan743x_rx_buffer_info** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %31 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %30, i32 0, i32 1
  store %struct.sk_buff* %29, %struct.sk_buff** %31, align 8
  %32 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %33 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %32, i32 0, i32 1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %102

39:                                               ; preds = %3
  %40 = load %struct.lan743x_rx*, %struct.lan743x_rx** %5, align 8
  %41 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %47 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %46, i32 0, i32 1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i64 @dma_map_single(i32* %45, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %55 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.lan743x_rx*, %struct.lan743x_rx** %5, align 8
  %57 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %63 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @dma_mapping_error(i32* %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %39
  %68 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %69 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %102

72:                                               ; preds = %39
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %75 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %77 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @DMA_ADDR_LOW32(i64 %78)
  %80 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %9, align 8
  %81 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %83 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @DMA_ADDR_HIGH32(i64 %84)
  %86 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %9, align 8
  %87 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %9, align 8
  %89 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @RX_DESC_DATA0_OWN_, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @RX_DESC_DATA0_BUF_LENGTH_MASK_, align 4
  %93 = and i32 %91, %92
  %94 = or i32 %90, %93
  %95 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %9, align 8
  %96 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %8, align 8
  %98 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %97, i32 0, i32 1
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  %100 = load i32, i32* @RX_HEAD_PADDING, align 4
  %101 = call i32 @skb_reserve(%struct.sk_buff* %99, i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %72, %67, %36
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @DMA_ADDR_LOW32(i64) #1

declare dso_local i32 @DMA_ADDR_HIGH32(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
