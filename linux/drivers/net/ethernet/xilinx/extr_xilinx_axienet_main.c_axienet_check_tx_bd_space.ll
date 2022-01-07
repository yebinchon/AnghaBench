; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_check_tx_bd_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_check_tx_bd_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axienet_local = type { i32, i32, %struct.axidma_bd* }
%struct.axidma_bd = type { i32 }

@XAXIDMA_BD_STS_ALL_MASK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axienet_local*, i32)* @axienet_check_tx_bd_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_check_tx_bd_space(%struct.axienet_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axienet_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.axidma_bd*, align 8
  store %struct.axienet_local* %0, %struct.axienet_local** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %8 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %7, i32 0, i32 2
  %9 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %10 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %11 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  %15 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %16 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %9, i64 %19
  store %struct.axidma_bd* %20, %struct.axidma_bd** %6, align 8
  %21 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %22 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XAXIDMA_BD_STS_ALL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
