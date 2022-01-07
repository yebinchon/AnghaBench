; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_time_coal_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_time_coal_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@MVPP2_MAX_ISR_TX_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_tx_time_coal_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_tx_time_coal_set(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %5 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %6 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @mvpp2_usec_to_cycles(i32 %12, i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @MVPP2_MAX_ISR_TX_THRESHOLD, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i64, i64* @MVPP2_MAX_ISR_TX_THRESHOLD, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @mvpp2_cycles_to_usec(i64 %19, i64 %20)
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %25 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @mvpp2_usec_to_cycles(i32 %26, i64 %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %18, %1
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MVPP2_ISR_TX_THRESHOLD_REG(i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @mvpp2_write(%struct.TYPE_2__* %32, i32 %36, i64 %37)
  ret void
}

declare dso_local i64 @mvpp2_usec_to_cycles(i32, i64) #1

declare dso_local i32 @mvpp2_cycles_to_usec(i64, i64) #1

declare dso_local i32 @mvpp2_write(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @MVPP2_ISR_TX_THRESHOLD_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
