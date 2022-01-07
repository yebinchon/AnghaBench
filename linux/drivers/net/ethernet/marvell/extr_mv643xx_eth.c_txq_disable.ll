; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32 }
%struct.mv643xx_eth_private = type { i32 }

@TXQ_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*)* @txq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_disable(%struct.tx_queue* %0) #0 {
  %2 = alloca %struct.tx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.tx_queue* %0, %struct.tx_queue** %2, align 8
  %5 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %6 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %5)
  store %struct.mv643xx_eth_private* %6, %struct.mv643xx_eth_private** %3, align 8
  %7 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %12 = load i32, i32* @TXQ_COMMAND, align 4
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 8
  %15 = call i32 @wrlp(%struct.mv643xx_eth_private* %11, i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %23, %1
  %17 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %18 = load i32, i32* @TXQ_COMMAND, align 4
  %19 = call i32 @rdlp(%struct.mv643xx_eth_private* %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @udelay(i32 10)
  br label %16

25:                                               ; preds = %16
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
