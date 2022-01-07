; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_sent_desc_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_sent_desc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_tx_queue = type { i32 }

@MVNETA_TXQ_DEC_SENT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_tx_queue*, i32)* @mvneta_txq_sent_desc_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_txq_sent_desc_dec(%struct.mvneta_port* %0, %struct.mvneta_tx_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.mvneta_port*, align 8
  %5 = alloca %struct.mvneta_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %4, align 8
  store %struct.mvneta_tx_queue* %1, %struct.mvneta_tx_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 255
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i32, i32* @MVNETA_TXQ_DEC_SENT_SHIFT, align 4
  %13 = shl i32 255, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %15 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MVNETA_TXQ_UPDATE_REG(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mvreg_write(%struct.mvneta_port* %14, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 255
  store i32 %22, i32* %6, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MVNETA_TXQ_DEC_SENT_SHIFT, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %28 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MVNETA_TXQ_UPDATE_REG(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mvreg_write(%struct.mvneta_port* %27, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @MVNETA_TXQ_UPDATE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
