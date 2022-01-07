; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mvpp2_tx_queue = type { i32, i32, i32, i64, i64, i64, i32*, i32 }
%struct.mvpp2_txq_pcpu = type { i32, i32*, i64, i32 }

@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@MVPP2_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@MVPP2_TXQ_NUM_REG = common dso_local global i32 0, align 4
@MVPP2_TXQ_DESC_ADDR_REG = common dso_local global i32 0, align 4
@MVPP2_TXQ_DESC_SIZE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*)* @mvpp2_txq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_txq_deinit(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_tx_queue*, align 8
  %5 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %7
  %16 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32 %18, i32 %19)
  store %struct.mvpp2_txq_pcpu* %20, %struct.mvpp2_txq_pcpu** %5, align 8
  %21 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %5, align 8
  %22 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %5, align 8
  %26 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %15
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %5, align 8
  %37 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %5, align 8
  %42 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %5, align 8
  %45 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dma_free_coherent(i32 %35, i32 %40, i32* %43, i64 %46)
  br label %48

48:                                               ; preds = %29, %15
  %49 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %5, align 8
  %50 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %7

54:                                               ; preds = %7
  %55 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %56 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %61 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %67 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MVPP2_DESC_ALIGNED_SIZE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %72 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %75 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dma_free_coherent(i32 %65, i32 %70, i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %59, %54
  %79 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %79, i32 0, i32 6
  store i32* null, i32** %80, align 8
  %81 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %82 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %84 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %86 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %88 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @MVPP2_TXQ_SCHED_TOKEN_CNTR_REG(i32 %92)
  %94 = call i32 @mvpp2_write(%struct.TYPE_8__* %89, i32 %93, i32 0)
  %95 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %96 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32 (...) @get_cpu()
  %99 = call i32 @mvpp2_cpu_to_thread(%struct.TYPE_8__* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %101 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @MVPP2_TXQ_NUM_REG, align 4
  %105 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %106 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %102, i32 %103, i32 %104, i32 %107)
  %109 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %110 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @MVPP2_TXQ_DESC_ADDR_REG, align 4
  %114 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %111, i32 %112, i32 %113, i32 0)
  %115 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %116 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @MVPP2_TXQ_DESC_SIZE_REG, align 4
  %120 = call i32 @mvpp2_thread_write(%struct.TYPE_8__* %117, i32 %118, i32 %119, i32 0)
  %121 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @mvpp2_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MVPP2_TXQ_SCHED_TOKEN_CNTR_REG(i32) #1

declare dso_local i32 @mvpp2_cpu_to_thread(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @mvpp2_thread_write(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
