; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_tx_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_tx_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TX_BW_RATE = common dso_local global i32 0, align 4
@TX_BW_MTU = common dso_local global i32 0, align 4
@TX_BW_BURST = common dso_local global i32 0, align 4
@TX_BW_RATE_MOVED = common dso_local global i32 0, align 4
@TX_BW_MTU_MOVED = common dso_local global i32 0, align 4
@TX_BW_BURST_MOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32, i32)* @tx_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_set_rate(%struct.mv643xx_eth_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 1000
  %12 = mul nsw i32 %11, 64
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 1000
  %17 = sdiv i32 %12, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 1023
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1023, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %23 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 255
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 63
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 63, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 255
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 65535
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 65535, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %41 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %71 [
    i32 128, label %45
    i32 129, label %58
  ]

45:                                               ; preds = %39
  %46 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %47 = load i32, i32* @TX_BW_RATE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @wrlp(%struct.mv643xx_eth_private* %46, i32 %47, i32 %48)
  %50 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %51 = load i32, i32* @TX_BW_MTU, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @wrlp(%struct.mv643xx_eth_private* %50, i32 %51, i32 %52)
  %54 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %55 = load i32, i32* @TX_BW_BURST, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @wrlp(%struct.mv643xx_eth_private* %54, i32 %55, i32 %56)
  br label %71

58:                                               ; preds = %39
  %59 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %60 = load i32, i32* @TX_BW_RATE_MOVED, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @wrlp(%struct.mv643xx_eth_private* %59, i32 %60, i32 %61)
  %63 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %64 = load i32, i32* @TX_BW_MTU_MOVED, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @wrlp(%struct.mv643xx_eth_private* %63, i32 %64, i32 %65)
  %67 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %68 = load i32, i32* @TX_BW_BURST_MOVED, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @wrlp(%struct.mv643xx_eth_private* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %39, %58, %45
  ret void
}

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
