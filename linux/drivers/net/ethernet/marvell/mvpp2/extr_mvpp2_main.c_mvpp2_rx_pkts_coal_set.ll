; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_pkts_coal_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_pkts_coal_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_rx_queue = type { i64, i64 }

@MVPP2_OCCUPIED_THRESH_MASK = common dso_local global i64 0, align 8
@MVPP2_RXQ_NUM_REG = common dso_local global i32 0, align 4
@MVPP2_RXQ_THRESH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_rx_queue*)* @mvpp2_rx_pkts_coal_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rx_pkts_coal_set(%struct.mvpp2_port* %0, %struct.mvpp2_rx_queue* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.mvpp2_rx_queue* %1, %struct.mvpp2_rx_queue** %4, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (...) @get_cpu()
  %10 = call i32 @mvpp2_cpu_to_thread(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MVPP2_OCCUPIED_THRESH_MASK, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* @MVPP2_OCCUPIED_THRESH_MASK, align 8
  %18 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %22 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MVPP2_RXQ_NUM_REG, align 4
  %26 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @mvpp2_thread_write(i32 %23, i32 %24, i32 %25, i64 %28)
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MVPP2_RXQ_THRESH_REG, align 4
  %35 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %36 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mvpp2_thread_write(i32 %32, i32 %33, i32 %34, i64 %37)
  %39 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @mvpp2_cpu_to_thread(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @mvpp2_thread_write(i32, i32, i32, i64) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
