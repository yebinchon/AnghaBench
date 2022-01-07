; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_time_coal_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_time_coal_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_rx_queue = type { i32, i32 }

@MVPP2_MAX_ISR_RX_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_rx_queue*)* @mvpp2_rx_time_coal_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rx_time_coal_set(%struct.mvpp2_port* %0, %struct.mvpp2_rx_queue* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_rx_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.mvpp2_rx_queue* %1, %struct.mvpp2_rx_queue** %4, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @mvpp2_usec_to_cycles(i32 %14, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @MVPP2_MAX_ISR_RX_THRESHOLD, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i64, i64* @MVPP2_MAX_ISR_RX_THRESHOLD, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @mvpp2_cycles_to_usec(i64 %21, i64 %22)
  %24 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %25 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @mvpp2_usec_to_cycles(i32 %28, i64 %29)
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %20, %2
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %4, align 8
  %36 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MVPP2_ISR_RX_THRESHOLD_REG(i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @mvpp2_write(%struct.TYPE_2__* %34, i32 %38, i64 %39)
  ret void
}

declare dso_local i64 @mvpp2_usec_to_cycles(i32, i64) #1

declare dso_local i32 @mvpp2_cycles_to_usec(i64, i64) #1

declare dso_local i32 @mvpp2_write(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @MVPP2_ISR_RX_THRESHOLD_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
