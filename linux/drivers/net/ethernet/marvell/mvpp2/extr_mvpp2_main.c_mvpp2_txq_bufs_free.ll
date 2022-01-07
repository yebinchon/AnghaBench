; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mvpp2_tx_queue = type { i32 }
%struct.mvpp2_txq_pcpu = type { i32, %struct.mvpp2_txq_pcpu_buf* }
%struct.mvpp2_txq_pcpu_buf = type { i64, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*, i32)* @mvpp2_txq_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_txq_bufs_free(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1, %struct.mvpp2_txq_pcpu* %2, i32 %3) #0 {
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_tx_queue*, align 8
  %7 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_txq_pcpu_buf*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %6, align 8
  store %struct.mvpp2_txq_pcpu* %2, %struct.mvpp2_txq_pcpu** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %58, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %7, align 8
  %17 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %16, i32 0, i32 1
  %18 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %17, align 8
  %19 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %7, align 8
  %20 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %18, i64 %22
  store %struct.mvpp2_txq_pcpu_buf* %23, %struct.mvpp2_txq_pcpu_buf** %10, align 8
  %24 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %7, align 8
  %25 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %10, align 8
  %26 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_TSO_HEADER(%struct.mvpp2_txq_pcpu* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %15
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %32 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %10, align 8
  %38 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %10, align 8
  %41 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(i32 %36, i32 %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %30, %15
  %46 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %10, align 8
  %47 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %10, align 8
  %52 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dev_kfree_skb_any(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %7, align 8
  %57 = call i32 @mvpp2_txq_inc_get(%struct.mvpp2_txq_pcpu* %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %11

61:                                               ; preds = %11
  ret void
}

declare dso_local i32 @IS_TSO_HEADER(%struct.mvpp2_txq_pcpu*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @mvpp2_txq_inc_get(%struct.mvpp2_txq_pcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
