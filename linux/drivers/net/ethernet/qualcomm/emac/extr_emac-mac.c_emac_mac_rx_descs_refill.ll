; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_descs_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_descs_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.emac_rx_queue = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.emac_buffer = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*, %struct.emac_rx_queue*)* @emac_mac_rx_descs_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_rx_descs_refill(%struct.emac_adapter* %0, %struct.emac_rx_queue* %1) #0 {
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_rx_queue*, align 8
  %5 = alloca %struct.emac_buffer*, align 8
  %6 = alloca %struct.emac_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  store %struct.emac_rx_queue* %1, %struct.emac_rx_queue** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %27 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %28 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = call %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue* %26, i64 %31)
  store %struct.emac_buffer* %32, %struct.emac_buffer** %5, align 8
  %33 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue* %33, i64 %34)
  store %struct.emac_buffer* %35, %struct.emac_buffer** %6, align 8
  br label %36

36:                                               ; preds = %113, %25
  %37 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %126

42:                                               ; preds = %36
  %43 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_6__* %45, i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %126

53:                                               ; preds = %42
  %54 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i32 @dma_map_single(i32 %59, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.emac_buffer*, %struct.emac_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.emac_buffer*, %struct.emac_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dma_mapping_error(i32 %75, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %53
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i32 @dev_kfree_skb(%struct.sk_buff* %83)
  br label %126

85:                                               ; preds = %53
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load %struct.emac_buffer*, %struct.emac_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %87, i32 0, i32 2
  store %struct.sk_buff* %86, %struct.sk_buff** %88, align 8
  %89 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.emac_buffer*, %struct.emac_buffer** %5, align 8
  %93 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %95 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %96 = load %struct.emac_buffer*, %struct.emac_buffer** %5, align 8
  %97 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @emac_mac_rx_rfd_create(%struct.emac_adapter* %94, %struct.emac_rx_queue* %95, i32 %98)
  %100 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %101 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %108 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %85
  store i64 0, i64* %8, align 8
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %115 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %116 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = call %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue* %114, i64 %119)
  store %struct.emac_buffer* %120, %struct.emac_buffer** %5, align 8
  %121 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue* %121, i64 %122)
  store %struct.emac_buffer* %123, %struct.emac_buffer** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %36

126:                                              ; preds = %82, %52, %36
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %156

129:                                              ; preds = %126
  %130 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %131 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %135 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = shl i32 %133, %137
  %139 = sext i32 %138 to i64
  %140 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %141 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = and i64 %139, %142
  store i64 %143, i64* %11, align 8
  %144 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %148 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %152 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @emac_reg_update32(i64 %150, i64 %153, i64 %154)
  br label %156

156:                                              ; preds = %129, %126
  ret void
}

declare dso_local %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue*, i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @emac_mac_rx_rfd_create(%struct.emac_adapter*, %struct.emac_rx_queue*, i32) #1

declare dso_local i32 @emac_reg_update32(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
