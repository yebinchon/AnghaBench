; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrx200_chan = type { %struct.TYPE_8__, %struct.TYPE_9__**, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@XRX200_DMA_DATA_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@LTQ_DMA_OWN = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xrx200_chan*)* @xrx200_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_alloc_skb(%struct.xrx200_chan* %0) #0 {
  %2 = alloca %struct.xrx200_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.xrx200_chan* %0, %struct.xrx200_chan** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %5 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @XRX200_DMA_DATA_LEN, align 4
  %10 = call %struct.TYPE_9__* @netdev_alloc_skb_ip_align(i32 %8, i32 %9)
  %11 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %12 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %14 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %15 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %13, i64 %17
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %18, align 8
  %19 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %20 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %20, align 8
  %22 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %23 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 %25
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %1
  %33 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %34 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %39 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %42 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XRX200_DMA_DATA_LEN, align 4
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_map_single(i32 %37, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %53 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %57 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %51, i32* %61, align 4
  %62 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %63 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %68 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %72 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dma_mapping_error(i32 %66, i32 %77)
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %32
  %82 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %83 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %83, align 8
  %85 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %86 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %84, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @dev_kfree_skb_any(%struct.TYPE_9__* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %32
  br label %95

95:                                               ; preds = %94, %81, %29
  %96 = load i32, i32* @LTQ_DMA_OWN, align 4
  %97 = load i32, i32* @NET_IP_ALIGN, align 4
  %98 = call i32 @LTQ_DMA_RX_OFFSET(i32 %97)
  %99 = or i32 %96, %98
  %100 = load i32, i32* @XRX200_DMA_DATA_LEN, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %103 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.xrx200_chan*, %struct.xrx200_chan** %2, align 8
  %107 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %101, i32* %111, align 4
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_9__* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_9__*) #1

declare dso_local i32 @LTQ_DMA_RX_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
