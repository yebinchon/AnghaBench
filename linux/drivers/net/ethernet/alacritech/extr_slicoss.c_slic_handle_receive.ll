; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.net_device*, %struct.slic_rx_queue }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.slic_rx_queue = type { i64, i64, i32, %struct.slic_rx_buffer* }
%struct.slic_rx_buffer = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.slic_rx_desc = type { i32, i32 }
%struct.ethhdr = type { i32 }

@map_addr = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SLIC_IRHDDR_SVALID = common dso_local global i32 0, align 4
@map_len = common dso_local global i32 0, align 4
@SLIC_RX_BUFF_HDR_SIZE = common dso_local global i32 0, align 4
@SLIC_IRHDDR_ERR = common dso_local global i32 0, align 4
@rx_mcasts = common dso_local global i32 0, align 4
@SLIC_IRHDDR_FLEN_MSK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, i32, i32*)* @slic_handle_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_handle_receive(%struct.slic_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.slic_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.slic_rx_queue*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.slic_rx_buffer*, align 8
  %10 = alloca %struct.slic_rx_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ethhdr*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %18 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %17, i32 0, i32 4
  store %struct.slic_rx_queue* %18, %struct.slic_rx_queue** %7, align 8
  %19 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %20 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %19, i32 0, i32 3
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %160, %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %27 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %30 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br label %33

33:                                               ; preds = %25, %22
  %34 = phi i1 [ false, %22 ], [ %32, %25 ]
  br i1 %34, label %35, label %172

35:                                               ; preds = %33
  %36 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %37 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %36, i32 0, i32 3
  %38 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %37, align 8
  %39 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %40 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %38, i64 %41
  store %struct.slic_rx_buffer* %42, %struct.slic_rx_buffer** %9, align 8
  %43 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %44 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %13, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %172

49:                                               ; preds = %35
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.slic_rx_desc*
  store %struct.slic_rx_desc* %53, %struct.slic_rx_desc** %10, align 8
  %54 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %55 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %59 = load i32, i32* @map_addr, align 4
  %60 = call i32 @dma_unmap_addr(%struct.slic_rx_buffer* %58, i32 %59)
  %61 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 8
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @dma_sync_single_for_cpu(i32* %57, i32 %60, i64 %64, i32 %65)
  %67 = load %struct.slic_rx_desc*, %struct.slic_rx_desc** %10, align 8
  %68 = getelementptr inbounds %struct.slic_rx_desc, %struct.slic_rx_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @SLIC_IRHDDR_SVALID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %49
  %76 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %77 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %81 = load i32, i32* @map_addr, align 4
  %82 = call i32 @dma_unmap_addr(%struct.slic_rx_buffer* %80, i32 %81)
  %83 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %84 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 8
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %88 = call i32 @dma_sync_single_for_device(i32* %79, i32 %82, i64 %86, i32 %87)
  br label %172

89:                                               ; preds = %49
  %90 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %91 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %90, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %91, align 8
  %92 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %93 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %97 = load i32, i32* @map_addr, align 4
  %98 = call i32 @dma_unmap_addr(%struct.slic_rx_buffer* %96, i32 %97)
  %99 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %9, align 8
  %100 = load i32, i32* @map_len, align 4
  %101 = call i32 @dma_unmap_len(%struct.slic_rx_buffer* %99, i32 %100)
  %102 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %103 = call i32 @dma_unmap_single(i32* %95, i32 %98, i32 %101, i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = load i32, i32* @SLIC_RX_BUFF_HDR_SIZE, align 4
  %106 = call i32 @skb_reserve(%struct.sk_buff* %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @SLIC_IRHDDR_ERR, align 4
  %109 = and i32 %107, %108
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %89
  %113 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %115 = call i32 @slic_handle_frame_error(%struct.slic_device* %113, %struct.sk_buff* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %116)
  br label %160

118:                                              ; preds = %89
  %119 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.ethhdr*
  store %struct.ethhdr* %122, %struct.ethhdr** %16, align 8
  %123 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %124 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @is_multicast_ether_addr(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %130 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %129, i32 0, i32 0
  %131 = load i32, i32* @rx_mcasts, align 4
  %132 = call i32 @SLIC_INC_STATS_COUNTER(%struct.TYPE_4__* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %118
  %134 = load %struct.slic_rx_desc*, %struct.slic_rx_desc** %10, align 8
  %135 = getelementptr inbounds %struct.slic_rx_desc, %struct.slic_rx_desc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = load i32, i32* @SLIC_IRHDDR_FLEN_MSK, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %15, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @skb_put(%struct.sk_buff* %140, i32 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %144 = load %struct.net_device*, %struct.net_device** %8, align 8
  %145 = call i32 @eth_type_trans(%struct.sk_buff* %143, %struct.net_device* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %152 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %151, i32 0, i32 1
  %153 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %154 = call i32 @napi_gro_receive(i32* %152, %struct.sk_buff* %153)
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %133, %112
  %161 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %162 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %165 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @slic_next_queue_idx(i64 %163, i32 %166)
  %168 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %7, align 8
  %169 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load i32, i32* %5, align 4
  %171 = add i32 %170, -1
  store i32 %171, i32* %5, align 4
  br label %22

172:                                              ; preds = %75, %48, %33
  %173 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %174 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = call i32 @u64_stats_update_begin(i32* %175)
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %179 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add i32 %181, %177
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %185 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, %183
  store i32 %188, i32* %186, align 4
  %189 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %190 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = call i32 @u64_stats_update_end(i32* %191)
  %193 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %194 = load i32, i32* @GFP_ATOMIC, align 4
  %195 = call i32 @slic_refill_rx_queue(%struct.slic_device* %193, i32 %194)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.slic_rx_buffer*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.slic_rx_buffer*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @slic_handle_frame_error(%struct.slic_device*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @SLIC_INC_STATS_COUNTER(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i64 @slic_next_queue_idx(i64, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @slic_refill_rx_queue(%struct.slic_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
