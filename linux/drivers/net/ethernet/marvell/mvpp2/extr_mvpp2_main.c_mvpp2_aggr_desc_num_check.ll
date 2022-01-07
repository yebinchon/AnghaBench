; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_aggr_desc_num_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_aggr_desc_num_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_tx_queue = type { i32 }

@MVPP2_AGGR_TXQ_SIZE = common dso_local global i32 0, align 4
@MVPP2_AGGR_TXQ_PENDING_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, i32)* @mvpp2_aggr_desc_num_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_aggr_desc_num_check(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_tx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %11 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @MVPP2_AGGR_TXQ_SIZE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %19 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (...) @smp_processor_id()
  %22 = call i32 @mvpp2_cpu_to_thread(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %24 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MVPP2_AGGR_TXQ_STATUS_REG(i32 %26)
  %28 = call i32 @mvpp2_read_relaxed(i32 %25, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MVPP2_AGGR_TXQ_PENDING_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %33 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %35 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @MVPP2_AGGR_TXQ_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %17
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %3
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mvpp2_cpu_to_thread(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mvpp2_read_relaxed(i32, i32) #1

declare dso_local i32 @MVPP2_AGGR_TXQ_STATUS_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
