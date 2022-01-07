; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_flush_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_flush_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrx200_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ltq_dma_desc* }
%struct.ltq_dma_desc = type { i32 }

@LTQ_DESC_NUM = common dso_local global i32 0, align 4
@LTQ_DMA_OWN = common dso_local global i32 0, align 4
@LTQ_DMA_C = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@XRX200_DMA_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xrx200_chan*)* @xrx200_flush_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xrx200_flush_dma(%struct.xrx200_chan* %0) #0 {
  %2 = alloca %struct.xrx200_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltq_dma_desc*, align 8
  store %struct.xrx200_chan* %0, %struct.xrx200_chan** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @LTQ_DESC_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  %10 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %11 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %12, align 8
  %14 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %15 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %13, i64 %17
  store %struct.ltq_dma_desc* %18, %struct.ltq_dma_desc** %4, align 8
  %19 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %4, align 8
  %20 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LTQ_DMA_OWN, align 4
  %23 = load i32, i32* @LTQ_DMA_C, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @LTQ_DMA_C, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  br label %53

29:                                               ; preds = %9
  %30 = load i32, i32* @LTQ_DMA_OWN, align 4
  %31 = load i32, i32* @NET_IP_ALIGN, align 4
  %32 = call i32 @LTQ_DMA_RX_OFFSET(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @XRX200_DMA_DATA_LEN, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %4, align 8
  %37 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %39 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* @LTQ_DESC_NUM, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %46 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = urem i64 %48, %44
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %5

53:                                               ; preds = %28, %5
  ret void
}

declare dso_local i32 @LTQ_DMA_RX_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
