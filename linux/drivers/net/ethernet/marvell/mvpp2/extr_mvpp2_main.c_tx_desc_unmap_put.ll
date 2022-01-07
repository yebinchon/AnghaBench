; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_tx_desc_unmap_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_tx_desc_unmap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvpp2_tx_queue = type { i32 }
%struct.mvpp2_tx_desc = type { i32 }
%struct.mvpp2_txq_pcpu = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_desc*)* @tx_desc_unmap_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_desc_unmap_put(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_desc* %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.mvpp2_tx_queue*, align 8
  %6 = alloca %struct.mvpp2_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %5, align 8
  store %struct.mvpp2_tx_desc* %2, %struct.mvpp2_tx_desc** %6, align 8
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (...) @smp_processor_id()
  %15 = call i32 @mvpp2_cpu_to_thread(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %5, align 8
  %17 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32 %18, i32 %19)
  store %struct.mvpp2_txq_pcpu* %20, %struct.mvpp2_txq_pcpu** %8, align 8
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %22 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %6, align 8
  %23 = call i32 @mvpp2_txdesc_dma_addr_get(%struct.mvpp2_port* %21, %struct.mvpp2_tx_desc* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %25 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %6, align 8
  %26 = call i64 @mvpp2_txdesc_size_get(%struct.mvpp2_port* %24, %struct.mvpp2_tx_desc* %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @IS_TSO_HEADER(%struct.mvpp2_txq_pcpu* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %3
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(i32 %37, i32 %38, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %3
  %43 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %5, align 8
  %44 = call i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue* %43)
  ret void
}

declare dso_local i32 @mvpp2_cpu_to_thread(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @mvpp2_txdesc_dma_addr_get(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*) #1

declare dso_local i64 @mvpp2_txdesc_size_get(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*) #1

declare dso_local i32 @IS_TSO_HEADER(%struct.mvpp2_txq_pcpu*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
