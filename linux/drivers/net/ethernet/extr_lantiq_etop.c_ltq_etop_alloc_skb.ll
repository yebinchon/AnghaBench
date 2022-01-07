; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltq_etop_chan = type { %struct.TYPE_8__, %struct.TYPE_9__**, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ltq_etop_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MAX_DMA_DATA_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@LTQ_DMA_OWN = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltq_etop_chan*)* @ltq_etop_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_alloc_skb(%struct.ltq_etop_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ltq_etop_chan*, align 8
  %4 = alloca %struct.ltq_etop_priv*, align 8
  store %struct.ltq_etop_chan* %0, %struct.ltq_etop_chan** %3, align 8
  %5 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %6 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.ltq_etop_priv* @netdev_priv(i32 %7)
  store %struct.ltq_etop_priv* %8, %struct.ltq_etop_priv** %4, align 8
  %9 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %10 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX_DMA_DATA_LEN, align 4
  %13 = call %struct.TYPE_9__* @netdev_alloc_skb(i32 %11, i32 %12)
  %14 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %15 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %17 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %18 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %16, i64 %20
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %21, align 8
  %22 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %23 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %23, align 8
  %25 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %26 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %24, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %113

35:                                               ; preds = %1
  %36 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %41 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %41, align 8
  %43 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %44 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MAX_DMA_DATA_LEN, align 4
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @dma_map_single(i32* %39, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %55 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %59 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %53, i32* %63, align 4
  %64 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %65 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %68 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CPHYSADDR(i32 %74)
  %76 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %77 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %81 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %75, i32* %85, align 4
  %86 = load i32, i32* @LTQ_DMA_OWN, align 4
  %87 = load i32, i32* @NET_IP_ALIGN, align 4
  %88 = call i32 @LTQ_DMA_RX_OFFSET(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @MAX_DMA_DATA_LEN, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %93 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %97 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %91, i32* %101, align 4
  %102 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %103 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %103, align 8
  %105 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %3, align 8
  %106 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %104, i64 %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load i32, i32* @NET_IP_ALIGN, align 4
  %112 = call i32 @skb_reserve(%struct.TYPE_9__* %110, i32 %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %35, %32
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(i32) #1

declare dso_local %struct.TYPE_9__* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @CPHYSADDR(i32) #1

declare dso_local i32 @LTQ_DMA_RX_OFFSET(i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
