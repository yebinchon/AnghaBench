; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_port_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_port_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.mvneta_rx_queue*, %struct.mvneta_tx_queue* }
%struct.mvneta_rx_queue = type { i64 }
%struct.mvneta_tx_queue = type { i64 }

@txq_number = common dso_local global i32 0, align 4
@MVNETA_TXQ_CMD = common dso_local global i32 0, align 4
@rxq_number = common dso_local global i32 0, align 4
@MVNETA_RXQ_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*)* @mvneta_port_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_port_up(%struct.mvneta_port* %0) #0 {
  %2 = alloca %struct.mvneta_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvneta_tx_queue*, align 8
  %6 = alloca %struct.mvneta_rx_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @txq_number, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %13 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %12, i32 0, i32 1
  %14 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %14, i64 %16
  store %struct.mvneta_tx_queue* %17, %struct.mvneta_tx_queue** %5, align 8
  %18 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %33 = load i32, i32* @MVNETA_TXQ_CMD, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mvreg_write(%struct.mvneta_port* %32, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %57, %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @rxq_number, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %42 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %41, i32 0, i32 0
  %43 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %43, i64 %45
  store %struct.mvneta_rx_queue* %46, %struct.mvneta_rx_queue** %6, align 8
  %47 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %6, align 8
  %48 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %36

60:                                               ; preds = %36
  %61 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %62 = load i32, i32* @MVNETA_RXQ_CMD, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @mvreg_write(%struct.mvneta_port* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
