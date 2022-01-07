; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32 }
%struct.mv643xx_eth_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*, i32, i32)* @txq_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_set_rate(%struct.tx_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tx_queue* %0, %struct.tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %11 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %10)
  store %struct.mv643xx_eth_private* %11, %struct.mv643xx_eth_private** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 1000
  %14 = mul nsw i32 %13, 64
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %16 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000
  %19 = sdiv i32 %14, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 1023
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1023, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 255
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 65535
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 65535, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %32 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %33 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TXQ_BW_TOKENS(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 14
  %38 = call i32 @wrlp(%struct.mv643xx_eth_private* %31, i32 %35, i32 %37)
  %39 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %40 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %41 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TXQ_BW_CONF(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, 10
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @wrlp(%struct.mv643xx_eth_private* %39, i32 %43, i32 %47)
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @TXQ_BW_TOKENS(i32) #1

declare dso_local i32 @TXQ_BW_CONF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
