; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvpp2_rx_queue = type { i32, i32, i64, i64, i64, i32* }

@MVPP2_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@MVPP2_RXQ_NUM_REG = common dso_local global i32 0, align 4
@MVPP2_RXQ_DESC_ADDR_REG = common dso_local global i32 0, align 4
@MVPP2_RXQ_DESC_SIZE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_rx_queue*)* @mvpp2_rxq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rxq_deinit(%struct.mvpp2_port* %0, %struct.mvpp2_rx_queue* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.mvpp2_rx_queue* %1, %struct.mvpp2_rx_queue** %4, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %8 = call i32 @mvpp2_rxq_drop_pkts(%struct.mvpp2_port* %6, %struct.mvpp2_rx_queue* %7)
  %9 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %21 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MVPP2_DESC_ALIGNED_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dma_free_coherent(i32 %19, i32 %24, i32* %27, i64 %30)
  br label %32

32:                                               ; preds = %13, %2
  %33 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %36 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %42 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %45 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MVPP2_RXQ_STATUS_REG(i32 %46)
  %48 = call i32 @mvpp2_write(i32 %43, i32 %47, i32 0)
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (...) @get_cpu()
  %53 = call i32 @mvpp2_cpu_to_thread(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %55 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MVPP2_RXQ_NUM_REG, align 4
  %59 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %60 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mvpp2_thread_write(i32 %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %64 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @MVPP2_RXQ_DESC_ADDR_REG, align 4
  %68 = call i32 @mvpp2_thread_write(i32 %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %70 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MVPP2_RXQ_DESC_SIZE_REG, align 4
  %74 = call i32 @mvpp2_thread_write(i32 %71, i32 %72, i32 %73, i32 0)
  %75 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @mvpp2_rxq_drop_pkts(%struct.mvpp2_port*, %struct.mvpp2_rx_queue*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

declare dso_local i32 @MVPP2_RXQ_STATUS_REG(i32) #1

declare dso_local i32 @mvpp2_cpu_to_thread(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @mvpp2_thread_write(i32, i32, i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
