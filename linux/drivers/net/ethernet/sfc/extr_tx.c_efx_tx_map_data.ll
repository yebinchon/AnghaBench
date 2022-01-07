; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_tx_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_tx_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.efx_tx_buffer = type { i16, i64, i64, i64, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFX_TX_BUF_MAP_SINGLE = common dso_local global i16 0, align 2
@EIO = common dso_local global i32 0, align 4
@EFX_TX_BUF_CONT = common dso_local global i16 0, align 2
@EFX_TX_BUF_SKB = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32)* @efx_tx_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_tx_map_data(%struct.efx_tx_queue* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.efx_tx_buffer*, align 8
  %19 = alloca i32*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %21 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %20, i32 0, i32 1
  %22 = load %struct.efx_nic*, %struct.efx_nic** %21, align 8
  store %struct.efx_nic* %22, %struct.efx_nic** %8, align 8
  %23 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i64 @skb_headlen(%struct.sk_buff* %31)
  store i64 %32, i64* %15, align 8
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %15, align 8
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i64 @dma_map_single(%struct.device* %33, i32 %36, i64 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i16, i16* @EFX_TX_BUF_MAP_SINGLE, align 2
  store i16 %40, i16* %14, align 2
  %41 = load i64, i64* %15, align 8
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %13, align 8
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @dma_mapping_error(%struct.device* %43, i64 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %154

51:                                               ; preds = %3
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @skb_transport_header(%struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %56, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 2
  %66 = add i32 %60, %65
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %54
  %72 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %73 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call %struct.efx_tx_buffer* @efx_tx_map_chunk(%struct.efx_tx_queue* %76, i64 %77, i64 %78)
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %15, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %71, %54
  br label %87

87:                                               ; preds = %86, %51
  br label %88

88:                                               ; preds = %153, %87
  %89 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call %struct.efx_tx_buffer* @efx_tx_map_chunk(%struct.efx_tx_queue* %89, i64 %90, i64 %91)
  store %struct.efx_tx_buffer* %92, %struct.efx_tx_buffer** %18, align 8
  %93 = load i16, i16* @EFX_TX_BUF_CONT, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* %14, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %94, %96
  %98 = trunc i32 %97 to i16
  %99 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %100 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %99, i32 0, i32 0
  store i16 %98, i16* %100, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %103 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %105 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = sub i64 %106, %107
  %109 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %110 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %88
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %117 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %116, i32 0, i32 4
  store %struct.sk_buff* %115, %struct.sk_buff** %117, align 8
  %118 = load i16, i16* @EFX_TX_BUF_SKB, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* %14, align 2
  %121 = zext i16 %120 to i32
  %122 = or i32 %119, %121
  %123 = trunc i32 %122 to i16
  %124 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %125 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %124, i32 0, i32 0
  store i16 %123, i16* %125, align 8
  store i32 0, i32* %4, align 4
  br label %154

126:                                              ; preds = %88
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32* %134, i32** %19, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = call i64 @skb_frag_size(i32* %135)
  store i64 %136, i64* %15, align 8
  %137 = load %struct.device*, %struct.device** %9, align 8
  %138 = load i32*, i32** %19, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i32, i32* @DMA_TO_DEVICE, align 4
  %141 = call i64 @skb_frag_dma_map(%struct.device* %137, i32* %138, i32 0, i64 %139, i32 %140)
  store i64 %141, i64* %12, align 8
  store i16 0, i16* %14, align 2
  %142 = load i64, i64* %15, align 8
  store i64 %142, i64* %16, align 8
  %143 = load i64, i64* %12, align 8
  store i64 %143, i64* %13, align 8
  %144 = load %struct.device*, %struct.device** %9, align 8
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @dma_mapping_error(%struct.device* %144, i64 %145)
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %126
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %154

152:                                              ; preds = %126
  br label %153

153:                                              ; preds = %152
  br i1 true, label %88, label %154

154:                                              ; preds = %48, %114, %149, %153
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.efx_tx_buffer* @efx_tx_map_chunk(%struct.efx_tx_queue*, i64, i64) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(%struct.device*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
