; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mvpp2_rx_queue = type { i32, i32, i32, i32, i32 }

@MVPP2_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVPP2_RXQ_NUM_REG = common dso_local global i32 0, align 4
@MVPP21 = common dso_local global i64 0, align 8
@MVPP22_DESC_ADDR_OFFS = common dso_local global i32 0, align 4
@MVPP2_RXQ_DESC_ADDR_REG = common dso_local global i32 0, align 4
@MVPP2_RXQ_DESC_SIZE_REG = common dso_local global i32 0, align 4
@MVPP2_RXQ_INDEX_REG = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_rx_queue*)* @mvpp2_rxq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_rxq_init(%struct.mvpp2_port* %0, %struct.mvpp2_rx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.mvpp2_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.mvpp2_rx_queue* %1, %struct.mvpp2_rx_queue** %5, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %12 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %20 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MVPP2_DESC_ALIGNED_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %25 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %24, i32 0, i32 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @dma_alloc_coherent(i32 %18, i32 %23, i32* %25, i32 %26)
  %28 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %31 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %127

37:                                               ; preds = %2
  %38 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %39 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %43 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %48 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MVPP2_RXQ_STATUS_REG(i32 %49)
  %51 = call i32 @mvpp2_write(%struct.TYPE_8__* %46, i32 %50, i32 0)
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 (...) @get_cpu()
  %56 = call i32 @mvpp2_cpu_to_thread(%struct.TYPE_8__* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %58 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MVPP2_RXQ_NUM_REG, align 4
  %62 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %63 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %59, i32 %60, i32 %61, i32 %64)
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %67 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MVPP21, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %37
  %74 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %75 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  br label %83

77:                                               ; preds = %37
  %78 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %79 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MVPP22_DESC_ADDR_OFFS, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %73
  %84 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %85 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MVPP2_RXQ_DESC_ADDR_REG, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %92 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @MVPP2_RXQ_DESC_SIZE_REG, align 4
  %96 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %97 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %93, i32 %94, i32 %95, i32 %98)
  %100 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %101 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @MVPP2_RXQ_INDEX_REG, align 4
  %105 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %102, i32 %103, i32 %104, i32 0)
  %106 = call i32 (...) @put_cpu()
  %107 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %108 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %109 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NET_SKB_PAD, align 4
  %112 = call i32 @mvpp2_rxq_offset_set(%struct.mvpp2_port* %107, i32 %110, i32 %111)
  %113 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %114 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %115 = call i32 @mvpp2_rx_pkts_coal_set(%struct.mvpp2_port* %113, %struct.mvpp2_rx_queue* %114)
  %116 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %117 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %118 = call i32 @mvpp2_rx_time_coal_set(%struct.mvpp2_port* %116, %struct.mvpp2_rx_queue* %117)
  %119 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %120 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %121 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %5, align 8
  %124 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mvpp2_rxq_status_update(%struct.mvpp2_port* %119, i32 %122, i32 0, i32 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %83, %34
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @mvpp2_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MVPP2_RXQ_STATUS_REG(i32) #1

declare dso_local i32 @mvpp2_cpu_to_thread(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @mvpp2_thread_write(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @mvpp2_rxq_offset_set(%struct.mvpp2_port*, i32, i32) #1

declare dso_local i32 @mvpp2_rx_pkts_coal_set(%struct.mvpp2_port*, %struct.mvpp2_rx_queue*) #1

declare dso_local i32 @mvpp2_rx_time_coal_set(%struct.mvpp2_port*, %struct.mvpp2_rx_queue*) #1

declare dso_local i32 @mvpp2_rxq_status_update(%struct.mvpp2_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
