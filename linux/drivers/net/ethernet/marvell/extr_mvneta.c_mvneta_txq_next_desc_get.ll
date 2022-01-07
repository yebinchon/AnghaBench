; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_next_desc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_next_desc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_tx_desc = type { i32 }
%struct.mvneta_tx_queue = type { i32, %struct.mvneta_tx_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvneta_tx_desc* (%struct.mvneta_tx_queue*)* @mvneta_txq_next_desc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvneta_tx_desc* @mvneta_txq_next_desc_get(%struct.mvneta_tx_queue* %0) #0 {
  %2 = alloca %struct.mvneta_tx_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.mvneta_tx_queue* %0, %struct.mvneta_tx_queue** %2, align 8
  %4 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @MVNETA_QUEUE_NEXT_DESC(%struct.mvneta_tx_queue* %7, i32 %8)
  %10 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %12, i32 0, i32 1
  %14 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %14, i64 %16
  ret %struct.mvneta_tx_desc* %17
}

declare dso_local i32 @MVNETA_QUEUE_NEXT_DESC(%struct.mvneta_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
