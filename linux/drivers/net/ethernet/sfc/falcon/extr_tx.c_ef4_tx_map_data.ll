; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { %struct.ef4_nic* }
%struct.ef4_nic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ef4_tx_buffer = type { i16, i64, %struct.sk_buff*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EF4_TX_BUF_MAP_SINGLE = common dso_local global i16 0, align 2
@EIO = common dso_local global i32 0, align 4
@EF4_TX_BUF_CONT = common dso_local global i16 0, align 2
@EF4_TX_BUF_SKB = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_tx_queue*, %struct.sk_buff*)* @ef4_tx_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_tx_map_data(%struct.ef4_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ef4_nic*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ef4_tx_buffer*, align 8
  %16 = alloca i32*, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %18 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %17, i32 0, i32 0
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %18, align 8
  store %struct.ef4_nic* %19, %struct.ef4_nic** %6, align 8
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %21 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i64 @skb_headlen(%struct.sk_buff* %28)
  store i64 %29, i64* %13, align 8
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i64 @dma_map_single(%struct.device* %30, i32 %33, i64 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i16, i16* @EF4_TX_BUF_MAP_SINGLE, align 2
  store i16 %37, i16* %12, align 2
  %38 = load i64, i64* %13, align 8
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @dma_mapping_error(%struct.device* %40, i64 %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %115

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %114, %48
  %50 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call %struct.ef4_tx_buffer* @ef4_tx_map_chunk(%struct.ef4_tx_queue* %50, i64 %51, i64 %52)
  store %struct.ef4_tx_buffer* %53, %struct.ef4_tx_buffer** %15, align 8
  %54 = load i16, i16* @EF4_TX_BUF_CONT, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* %12, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = trunc i32 %58 to i16
  %60 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %15, align 8
  %61 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %60, i32 0, i32 0
  store i16 %59, i16* %61, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %15, align 8
  %64 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %15, align 8
  %66 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %15, align 8
  %71 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %49
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %15, align 8
  %78 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %77, i32 0, i32 2
  store %struct.sk_buff* %76, %struct.sk_buff** %78, align 8
  %79 = load i16, i16* @EF4_TX_BUF_SKB, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* %12, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %80, %82
  %84 = trunc i32 %83 to i16
  %85 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %15, align 8
  %86 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %85, i32 0, i32 0
  store i16 %84, i16* %86, align 8
  store i32 0, i32* %3, align 4
  br label %115

87:                                               ; preds = %49
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32* %95, i32** %16, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i64 @skb_frag_size(i32* %96)
  store i64 %97, i64* %13, align 8
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* @DMA_TO_DEVICE, align 4
  %102 = call i64 @skb_frag_dma_map(%struct.device* %98, i32* %99, i32 0, i64 %100, i32 %101)
  store i64 %102, i64* %10, align 8
  store i16 0, i16* %12, align 2
  %103 = load i64, i64* %13, align 8
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* %11, align 8
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @dma_mapping_error(%struct.device* %105, i64 %106)
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %87
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113
  br i1 true, label %49, label %115

115:                                              ; preds = %45, %75, %110, %114
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local %struct.ef4_tx_buffer* @ef4_tx_map_chunk(%struct.ef4_tx_queue*, i64, i64) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(%struct.device*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
