; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_hw_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_hw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_tx_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_tx_queue*)* @mvneta_txq_hw_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_txq_hw_deinit(%struct.mvneta_port* %0, %struct.mvneta_tx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_tx_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_tx_queue* %1, %struct.mvneta_tx_queue** %4, align 8
  %5 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %6 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %7 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MVETH_TXQ_TOKEN_CFG_REG(i32 %8)
  %10 = call i32 @mvreg_write(%struct.mvneta_port* %5, i32 %9, i32 0)
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %12 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MVETH_TXQ_TOKEN_COUNT_REG(i32 %14)
  %16 = call i32 @mvreg_write(%struct.mvneta_port* %11, i32 %15, i32 0)
  %17 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %18 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MVNETA_TXQ_BASE_ADDR_REG(i32 %20)
  %22 = call i32 @mvreg_write(%struct.mvneta_port* %17, i32 %21, i32 0)
  %23 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %24 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %25 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MVNETA_TXQ_SIZE_REG(i32 %26)
  %28 = call i32 @mvreg_write(%struct.mvneta_port* %23, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @MVETH_TXQ_TOKEN_CFG_REG(i32) #1

declare dso_local i32 @MVETH_TXQ_TOKEN_COUNT_REG(i32) #1

declare dso_local i32 @MVNETA_TXQ_BASE_ADDR_REG(i32) #1

declare dso_local i32 @MVNETA_TXQ_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
