; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_sw_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_sw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvneta_tx_queue = type { i32, i64, i64, i64, i32*, i64, i32*, i32, i32 }
%struct.netdev_queue = type { i32 }

@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@MVNETA_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_tx_queue*)* @mvneta_txq_sw_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_txq_sw_deinit(%struct.mvneta_port* %0, %struct.mvneta_tx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_tx_queue*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_tx_queue* %1, %struct.mvneta_tx_queue** %4, align 8
  %6 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_4__* %8, i32 %11)
  store %struct.netdev_queue* %12, %struct.netdev_queue** %5, align 8
  %13 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %18 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %23 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dma_free_coherent(i32 %27, i32 %32, i32* %35, i64 %38)
  br label %40

40:                                               ; preds = %21, %2
  %41 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %47 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %53 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MVNETA_DESC_ALIGNED_SIZE, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %58 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %61 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dma_free_coherent(i32 %51, i32 %56, i32* %59, i64 %62)
  br label %64

64:                                               ; preds = %45, %40
  %65 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %66 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %65)
  %67 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %68 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %70 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %72 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %74 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
