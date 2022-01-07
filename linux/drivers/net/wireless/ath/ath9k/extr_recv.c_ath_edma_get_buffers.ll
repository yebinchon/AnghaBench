; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_edma_get_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_edma_get_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__, i32, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32, %struct.ath_rx_edma* }
%struct.ath_rx_edma = type { i32 }
%struct.ath_hw = type { i32 }
%struct.ath_rx_status = type { i32 }
%struct.ath_rxbuf = type { i32, i32 }
%struct.ath_common = type { i32 }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32, %struct.ath_rx_status*, %struct.ath_rxbuf**)* @ath_edma_get_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_edma_get_buffers(%struct.ath_softc* %0, i32 %1, %struct.ath_rx_status* %2, %struct.ath_rxbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_rx_status*, align 8
  %9 = alloca %struct.ath_rxbuf**, align 8
  %10 = alloca %struct.ath_rx_edma*, align 8
  %11 = alloca %struct.ath_hw*, align 8
  %12 = alloca %struct.ath_common*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.ath_rxbuf*, align 8
  %15 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %8, align 8
  store %struct.ath_rxbuf** %3, %struct.ath_rxbuf*** %9, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %19, i64 %21
  store %struct.ath_rx_edma* %22, %struct.ath_rx_edma** %10, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 2
  %25 = load %struct.ath_hw*, %struct.ath_hw** %24, align 8
  store %struct.ath_hw* %25, %struct.ath_hw** %11, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  %27 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %26)
  store %struct.ath_common* %27, %struct.ath_common** %12, align 8
  %28 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %10, align 8
  %29 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %28, i32 0, i32 0
  %30 = call %struct.sk_buff* @skb_peek(i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %124

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = call %struct.ath_rxbuf* @SKB_CB_ATHBUF(%struct.sk_buff* %35)
  store %struct.ath_rxbuf* %36, %struct.ath_rxbuf** %14, align 8
  %37 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %38 = icmp ne %struct.ath_rxbuf* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %46 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %49 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 @dma_sync_single_for_cpu(i32 %44, i32 %47, i32 %50, i32 %51)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  %54 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ath9k_hw_process_rxdesc_edma(%struct.ath_hw* %53, %struct.ath_rx_status* %54, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @EINPROGRESS, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %34
  %64 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %68 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %71 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %74 = call i32 @dma_sync_single_for_device(i32 %66, i32 %69, i32 %72, i32 %73)
  store i32 0, i32* %5, align 4
  br label %124

75:                                               ; preds = %34
  %76 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %77 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %10, align 8
  %78 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %77, i32 0, i32 0
  %79 = call i32 @__skb_unlink(%struct.sk_buff* %76, i32* %78)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %75
  %85 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %86 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %85, i32 0, i32 0
  %87 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %88 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @list_add_tail(i32* %86, i32* %89)
  %91 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ath_rx_edma_buf_link(%struct.ath_softc* %91, i32 %92)
  %94 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %10, align 8
  %95 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %94, i32 0, i32 0
  %96 = call %struct.sk_buff* @skb_peek(i32* %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %13, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %84
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = call %struct.ath_rxbuf* @SKB_CB_ATHBUF(%struct.sk_buff* %100)
  store %struct.ath_rxbuf* %101, %struct.ath_rxbuf** %14, align 8
  %102 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %103 = icmp ne %struct.ath_rxbuf* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %108 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %10, align 8
  %109 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %108, i32 0, i32 0
  %110 = call i32 @__skb_unlink(%struct.sk_buff* %107, i32* %109)
  %111 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %112 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %111, i32 0, i32 0
  %113 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %114 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @list_add_tail(i32* %112, i32* %115)
  %117 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @ath_rx_edma_buf_link(%struct.ath_softc* %117, i32 %118)
  br label %120

120:                                              ; preds = %99, %84
  store %struct.ath_rxbuf* null, %struct.ath_rxbuf** %14, align 8
  br label %121

121:                                              ; preds = %120, %75
  %122 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %14, align 8
  %123 = load %struct.ath_rxbuf**, %struct.ath_rxbuf*** %9, align 8
  store %struct.ath_rxbuf* %122, %struct.ath_rxbuf** %123, align 8
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %63, %33
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.ath_rxbuf* @SKB_CB_ATHBUF(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_process_rxdesc_edma(%struct.ath_hw*, %struct.ath_rx_status*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath_rx_edma_buf_link(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
