; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_pkts_coal_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_pkts_coal_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_tx_queue = type { i32, i32 }

@MVPP2_TXQ_THRESH_MASK = common dso_local global i32 0, align 4
@MVPP2_TXQ_THRESH_OFFSET = common dso_local global i32 0, align 4
@MVPP2_TXQ_NUM_REG = common dso_local global i32 0, align 4
@MVPP2_TXQ_THRESH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*)* @mvpp2_tx_pkts_coal_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_tx_pkts_coal_set(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %4, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (...) @get_cpu()
  %11 = call i32 @mvpp2_cpu_to_thread(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MVPP2_TXQ_THRESH_MASK, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @MVPP2_TXQ_THRESH_MASK, align 4
  %19 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %23 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MVPP2_TXQ_THRESH_OFFSET, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MVPP2_TXQ_NUM_REG, align 4
  %32 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %33 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mvpp2_thread_write(i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %37 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MVPP2_TXQ_THRESH_REG, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mvpp2_thread_write(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = call i32 (...) @put_cpu()
  ret void
}

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
