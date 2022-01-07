; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32 }
%struct.mvpp2_tx_queue = type { i32 }
%struct.mvpp2_txq_pcpu = type { i64, i64, i64 }
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"wrong cpu on the end of Tx processing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*)* @mvpp2_txq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_txq_done(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1, %struct.mvpp2_txq_pcpu* %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.mvpp2_tx_queue*, align 8
  %6 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %5, align 8
  store %struct.mvpp2_txq_pcpu* %2, %struct.mvpp2_txq_pcpu** %6, align 8
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %5, align 8
  %13 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %11, i32 %14)
  store %struct.netdev_queue* %15, %struct.netdev_queue** %7, align 8
  %16 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %17 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (...) @smp_processor_id()
  %23 = call i64 @mvpp2_cpu_to_thread(i32 %21, i32 %22)
  %24 = icmp ne i64 %18, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_err(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %32 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %5, align 8
  %33 = call i32 @mvpp2_txq_sent_desc_proc(%struct.mvpp2_port* %31, %struct.mvpp2_tx_queue* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %64

37:                                               ; preds = %30
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %39 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %5, align 8
  %40 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mvpp2_txq_bufs_free(%struct.mvpp2_port* %38, %struct.mvpp2_tx_queue* %39, %struct.mvpp2_txq_pcpu* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %46 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %50 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %37
  %53 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %54 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %57 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %62 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %36, %63, %37
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @mvpp2_cpu_to_thread(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @mvpp2_txq_sent_desc_proc(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txq_bufs_free(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
