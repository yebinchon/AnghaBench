; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_xdp_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_xdp_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qede_tx_queue = type { i64, i32, i32, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_tx_queue*)* @qede_xdp_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_xdp_tx_int(%struct.qede_dev* %0, %struct.qede_tx_queue* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.qede_tx_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %4, align 8
  %7 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @le16_to_cpu(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = call i32 (...) @barrier()
  br label %13

13:                                               ; preds = %19, %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %16 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %15, i32 0, i32 4
  %17 = call i64 @qed_chain_get_cons_idx(i32* %16)
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %21 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %20, i32 0, i32 4
  %22 = call i32 @qed_chain_consume(i32* %21)
  %23 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %24 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %27 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %31 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %40 = call i32 @dma_unmap_page(i32* %29, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__free_page(i32 %48)
  %50 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %51 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %55 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = srem i64 %53, %57
  %59 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %60 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %62 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %13

65:                                               ; preds = %13
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i32 @qed_chain_consume(i32*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @__free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
