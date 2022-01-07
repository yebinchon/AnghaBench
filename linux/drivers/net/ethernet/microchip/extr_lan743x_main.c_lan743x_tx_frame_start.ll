; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i64, i64, i64, i32, %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_descriptor*, i32, %struct.lan743x_adapter* }
%struct.lan743x_tx_buffer_info = type { i32, i32, i32, i32* }
%struct.lan743x_tx_descriptor = type { i32, i32, i32 }
%struct.lan743x_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@TX_FRAME_FLAG_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_ = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_ACTIVE = common dso_local global i32 0, align 4
@TX_DESC_DATA0_BUF_LENGTH_MASK_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_DTYPE_DATA_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_FS_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_FCS_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_TSE_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_ICE_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_IPE_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_TPE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_tx*, i8*, i32, i32, i32, i32)* @lan743x_tx_frame_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_tx_frame_start(%struct.lan743x_tx* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan743x_tx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lan743x_tx_descriptor*, align 8
  %15 = alloca %struct.lan743x_tx_buffer_info*, align 8
  %16 = alloca %struct.lan743x_adapter*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.lan743x_tx_descriptor* null, %struct.lan743x_tx_descriptor** %14, align 8
  store %struct.lan743x_tx_buffer_info* null, %struct.lan743x_tx_buffer_info** %15, align 8
  %19 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %20 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %19, i32 0, i32 7
  %21 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %20, align 8
  store %struct.lan743x_adapter* %21, %struct.lan743x_adapter** %16, align 8
  %22 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %16, align 8
  %23 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %17, align 8
  %26 = load i32, i32* @TX_FRAME_FLAG_IN_PROGRESS, align 4
  %27 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %28 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %32 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %35 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %37 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %40 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %42 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %41, i32 0, i32 5
  %43 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %42, align 8
  %44 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %45 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %43, i64 %46
  store %struct.lan743x_tx_descriptor* %47, %struct.lan743x_tx_descriptor** %14, align 8
  %48 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %49 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %48, i32 0, i32 4
  %50 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %49, align 8
  %51 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %52 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %50, i64 %53
  store %struct.lan743x_tx_buffer_info* %54, %struct.lan743x_tx_buffer_info** %15, align 8
  %55 = load %struct.device*, %struct.device** %17, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_map_single(%struct.device* %55, i8* %56, i32 %57, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.device*, %struct.device** %17, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call i64 @dma_mapping_error(%struct.device* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %6
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %128

67:                                               ; preds = %6
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @DMA_ADDR_LOW32(i32 %68)
  %70 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %14, align 8
  %71 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @DMA_ADDR_HIGH32(i32 %72)
  %74 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %14, align 8
  %75 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* @TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %14, align 8
  %81 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %15, align 8
  %83 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %15, align 8
  %86 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %15, align 8
  %89 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @TX_BUFFER_INFO_FLAG_ACTIVE, align 4
  %91 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %15, align 8
  %92 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @TX_DESC_DATA0_BUF_LENGTH_MASK_, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @TX_DESC_DATA0_DTYPE_DATA_, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @TX_DESC_DATA0_FS_, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @TX_DESC_DATA0_FCS_, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %105 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %67
  %109 = load i32, i32* @TX_DESC_DATA0_TSE_, align 4
  %110 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %111 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %67
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* @TX_DESC_DATA0_ICE_, align 4
  %119 = load i32, i32* @TX_DESC_DATA0_IPE_, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @TX_DESC_DATA0_TPE_, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.lan743x_tx*, %struct.lan743x_tx** %8, align 8
  %124 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %117, %114
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %64
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @DMA_ADDR_LOW32(i32) #1

declare dso_local i32 @DMA_ADDR_HIGH32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
