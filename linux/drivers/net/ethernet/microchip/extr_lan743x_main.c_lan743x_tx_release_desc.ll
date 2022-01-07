; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_release_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_release_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { %struct.TYPE_5__*, %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lan743x_tx_descriptor = type { i32, i32, i32*, i64, i64 }
%struct.lan743x_tx_buffer_info = type { i32, i32, i32*, i64, i64 }

@TX_BUFFER_INFO_FLAG_ACTIVE = common dso_local global i32 0, align 4
@TX_DESC_DATA0_DTYPE_MASK_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_DTYPE_DATA_ = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_SKB_FRAGMENT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_IGNORE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_tx*, i32, i32)* @lan743x_tx_release_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_tx_release_desc(%struct.lan743x_tx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lan743x_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan743x_tx_buffer_info*, align 8
  %8 = alloca %struct.lan743x_tx_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.lan743x_tx_buffer_info* null, %struct.lan743x_tx_buffer_info** %7, align 8
  store %struct.lan743x_tx_descriptor* null, %struct.lan743x_tx_descriptor** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %12 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %11, i32 0, i32 2
  %13 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %13, i64 %15
  store %struct.lan743x_tx_descriptor* %16, %struct.lan743x_tx_descriptor** %8, align 8
  %17 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %18 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %17, i32 0, i32 1
  %19 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %19, i64 %21
  %23 = bitcast %struct.lan743x_tx_descriptor* %22 to %struct.lan743x_tx_buffer_info*
  store %struct.lan743x_tx_buffer_info* %23, %struct.lan743x_tx_buffer_info** %7, align 8
  %24 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %25 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TX_BUFFER_INFO_FLAG_ACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %146

31:                                               ; preds = %3
  %32 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %8, align 8
  %33 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TX_DESC_DATA0_DTYPE_MASK_, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @TX_DESC_DATA0_DTYPE_DATA_, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  br label %139

42:                                               ; preds = %40
  %43 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %44 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %42
  %48 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %49 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TX_BUFFER_INFO_FLAG_SKB_FRAGMENT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %56 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %62 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %65 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @dma_unmap_page(i32* %60, i64 %63, i64 %66, i32 %67)
  br label %84

69:                                               ; preds = %47
  %70 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %71 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %77 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %80 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @DMA_TO_DEVICE, align 4
  %83 = call i32 @dma_unmap_single(i32* %75, i64 %78, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %69, %54
  %85 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %86 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %88 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %42
  %90 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %91 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %139

95:                                               ; preds = %89
  %96 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %97 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %104 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @dev_kfree_skb(i32* %105)
  br label %136

107:                                              ; preds = %95
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %112 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = call i32 @lan743x_ptp_unrequest_tx_timestamp(%struct.TYPE_5__* %113)
  %115 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %116 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @dev_kfree_skb(i32* %117)
  br label %135

119:                                              ; preds = %107
  %120 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %121 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @TX_BUFFER_INFO_FLAG_IGNORE_SYNC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %10, align 4
  %127 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %128 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %131 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @lan743x_ptp_tx_timestamp_skb(%struct.TYPE_5__* %129, i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %119, %110
  br label %136

136:                                              ; preds = %135, %102
  %137 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %138 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %137, i32 0, i32 2
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %94, %41
  %140 = load i32, i32* @TX_BUFFER_INFO_FLAG_ACTIVE, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %143 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %139, %30
  %147 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %7, align 8
  %148 = bitcast %struct.lan743x_tx_buffer_info* %147 to %struct.lan743x_tx_descriptor*
  %149 = call i32 @memset(%struct.lan743x_tx_descriptor* %148, i32 0, i32 32)
  %150 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %8, align 8
  %151 = call i32 @memset(%struct.lan743x_tx_descriptor* %150, i32 0, i32 32)
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @lan743x_ptp_unrequest_tx_timestamp(%struct.TYPE_5__*) #1

declare dso_local i32 @lan743x_ptp_tx_timestamp_skb(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.lan743x_tx_descriptor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
