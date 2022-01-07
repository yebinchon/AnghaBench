; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_add_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_add_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i64, i32, i32, i32, %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_descriptor*, %struct.lan743x_adapter* }
%struct.lan743x_tx_buffer_info = type { i32, i32, i32, i32* }
%struct.lan743x_tx_descriptor = type { i32, i32, i32, i32 }
%struct.lan743x_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_FRAME_FLAG_IN_PROGRESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_ = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_ACTIVE = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_SKB_FRAGMENT = common dso_local global i32 0, align 4
@TX_DESC_DATA0_BUF_LENGTH_MASK_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_DTYPE_DATA_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_FCS_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_tx*, i32*, i32)* @lan743x_tx_frame_add_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_tx_frame_add_fragment(%struct.lan743x_tx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan743x_tx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan743x_tx_descriptor*, align 8
  %9 = alloca %struct.lan743x_tx_buffer_info*, align 8
  %10 = alloca %struct.lan743x_adapter*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.lan743x_tx_descriptor* null, %struct.lan743x_tx_descriptor** %8, align 8
  store %struct.lan743x_tx_buffer_info* null, %struct.lan743x_tx_buffer_info** %9, align 8
  %15 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %16 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %15, i32 0, i32 6
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %16, align 8
  store %struct.lan743x_adapter* %17, %struct.lan743x_adapter** %10, align 8
  %18 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %10, align 8
  %19 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @skb_frag_size(i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

27:                                               ; preds = %3
  %28 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %29 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %28, i32 0, i32 5
  %30 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %29, align 8
  %31 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %32 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %30, i64 %33
  store %struct.lan743x_tx_descriptor* %34, %struct.lan743x_tx_descriptor** %8, align 8
  %35 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %36 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %8, align 8
  %39 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %41 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %42 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @lan743x_tx_next_index(%struct.lan743x_tx* %40, i32 %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %48 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %50 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %49, i32 0, i32 5
  %51 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %50, align 8
  %52 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %53 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %51, i64 %54
  store %struct.lan743x_tx_descriptor* %55, %struct.lan743x_tx_descriptor** %8, align 8
  %56 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %57 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %56, i32 0, i32 4
  %58 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %57, align 8
  %59 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %60 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %58, i64 %61
  store %struct.lan743x_tx_buffer_info* %62, %struct.lan743x_tx_buffer_info** %9, align 8
  %63 = load %struct.device*, %struct.device** %11, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @skb_frag_dma_map(%struct.device* %63, i32* %64, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.device*, %struct.device** %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @dma_mapping_error(%struct.device* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %27
  %73 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %74 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %83, %72
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %80 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @lan743x_tx_release_desc(%struct.lan743x_tx* %84, i32 %85, i32 1)
  %87 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i8* @lan743x_tx_next_index(%struct.lan743x_tx* %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %14, align 4
  br label %76

91:                                               ; preds = %76
  %92 = call i32 (...) @dma_wmb()
  %93 = load i32, i32* @TX_FRAME_FLAG_IN_PROGRESS, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %96 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %100 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %99, i32 0, i32 2
  store i32 0, i32* %100, align 4
  %101 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %102 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %101, i32 0, i32 1
  store i32 0, i32* %102, align 8
  %103 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %104 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %149

107:                                              ; preds = %27
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @DMA_ADDR_LOW32(i32 %108)
  %110 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %8, align 8
  %111 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @DMA_ADDR_HIGH32(i32 %112)
  %114 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %8, align 8
  %115 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 16
  %118 = load i32, i32* @TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %8, align 8
  %121 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %9, align 8
  %123 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %9, align 8
  %126 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %9, align 8
  %129 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @TX_BUFFER_INFO_FLAG_ACTIVE, align 4
  %131 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %9, align 8
  %132 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @TX_BUFFER_INFO_FLAG_SKB_FRAGMENT, align 4
  %136 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %9, align 8
  %137 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @TX_DESC_DATA0_BUF_LENGTH_MASK_, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @TX_DESC_DATA0_DTYPE_DATA_, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @TX_DESC_DATA0_FCS_, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %148 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %107, %91, %26
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i8* @lan743x_tx_next_index(%struct.lan743x_tx*, i32) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @lan743x_tx_release_desc(%struct.lan743x_tx*, i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @DMA_ADDR_LOW32(i32) #1

declare dso_local i32 @DMA_ADDR_HIGH32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
