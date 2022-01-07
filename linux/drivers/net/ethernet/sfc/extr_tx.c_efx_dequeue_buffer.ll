; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_dequeue_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_dequeue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.efx_tx_buffer = type { i32, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.skb_shared_hwtstamps = type { i32 }

@EFX_TX_BUF_MAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFX_TX_BUF_SKB = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TX queue %d transmission id %x complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, %struct.efx_tx_buffer*, i32*, i32*)* @efx_dequeue_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_dequeue_buffer(%struct.efx_tx_queue* %0, %struct.efx_tx_buffer* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca %struct.efx_tx_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.skb_shared_hwtstamps, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store %struct.efx_tx_buffer* %1, %struct.efx_tx_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %4
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %9, align 8
  %24 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %10, align 8
  %31 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EFX_TX_BUF_MAP_SINGLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %17
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(%struct.device* %38, i64 %39, i64 %42, i32 %43)
  br label %53

45:                                               ; preds = %17
  %46 = load %struct.device*, %struct.device** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_unmap_page(%struct.device* %46, i64 %47, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %4
  %57 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EFX_TX_BUF_SKB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %56
  %64 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.sk_buff*
  store %struct.sk_buff* %67, %struct.sk_buff** %11, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ true, %63 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @EFX_WARN_ON_PARANOID(i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %86, %83
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %90 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %74
  %94 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %95 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %100 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98, %93
  %104 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %105 = call i32 @efx_ptp_nic_to_kernel_time(%struct.efx_tx_queue* %104)
  %106 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %12, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = call i32 @skb_tstamp_tx(%struct.sk_buff* %107, %struct.skb_shared_hwtstamps* %12)
  %109 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %110 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %112 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %103, %98, %74
  %114 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %115 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.sk_buff*
  %118 = call i32 @dev_consume_skb_any(%struct.sk_buff* %117)
  %119 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %120 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* @tx_done, align 4
  %123 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %124 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %129 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %132 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @netif_vdbg(%struct.TYPE_4__* %121, i32 %122, i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %113, %56
  %136 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %137 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %139 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @efx_ptp_nic_to_kernel_time(%struct.efx_tx_queue*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netif_vdbg(%struct.TYPE_4__*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
