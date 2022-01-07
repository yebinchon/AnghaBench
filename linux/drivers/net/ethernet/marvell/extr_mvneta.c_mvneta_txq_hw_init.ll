; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_tx_queue = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_tx_queue*)* @mvneta_txq_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_txq_hw_init(%struct.mvneta_port* %0, %struct.mvneta_tx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_tx_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_tx_queue* %1, %struct.mvneta_tx_queue** %4, align 8
  %5 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %6 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %7 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MVETH_TXQ_TOKEN_CFG_REG(i32 %8)
  %10 = call i32 @mvreg_write(%struct.mvneta_port* %5, i32 %9, i32 67108863)
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %12 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MVETH_TXQ_TOKEN_COUNT_REG(i32 %14)
  %16 = call i32 @mvreg_write(%struct.mvneta_port* %11, i32 %15, i32 1073741823)
  %17 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %18 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MVNETA_TXQ_BASE_ADDR_REG(i32 %20)
  %22 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %23 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mvreg_write(%struct.mvneta_port* %17, i32 %21, i32 %24)
  %26 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %27 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %28 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MVNETA_TXQ_SIZE_REG(i32 %29)
  %31 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %32 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mvreg_write(%struct.mvneta_port* %26, i32 %30, i32 %33)
  %35 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %36 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %37 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mvneta_tx_done_pkts_coal_set(%struct.mvneta_port* %35, %struct.mvneta_tx_queue* %36, i32 %39)
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @MVETH_TXQ_TOKEN_CFG_REG(i32) #1

declare dso_local i32 @MVETH_TXQ_TOKEN_COUNT_REG(i32) #1

declare dso_local i32 @MVNETA_TXQ_BASE_ADDR_REG(i32) #1

declare dso_local i32 @MVNETA_TXQ_SIZE_REG(i32) #1

declare dso_local i32 @mvneta_tx_done_pkts_coal_set(%struct.mvneta_port*, %struct.mvneta_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
