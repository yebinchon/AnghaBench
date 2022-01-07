; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvneta_rx_queue = type { i32, i32, i32, i32 }

@MVNETA_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, %struct.mvneta_rx_queue*)* @mvneta_rxq_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_rxq_sw_init(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvneta_port*, align 8
  %5 = alloca %struct.mvneta_rx_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %4, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %5, align 8
  %6 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %7 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %10 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %12 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %18 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MVNETA_DESC_ALIGNED_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %23 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %22, i32 0, i32 3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @dma_alloc_coherent(i32 %16, i32 %21, i32* %23, i32 %24)
  %26 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %27 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %37 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %41 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
