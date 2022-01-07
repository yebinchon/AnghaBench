; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_sync_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_sync_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_queue = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.mt76_queue*)* @mt76_dma_sync_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_dma_sync_idx(%struct.mt76_dev* %0, %struct.mt76_queue* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %4, align 8
  %5 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %6 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %9 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = call i32 @writel(i32 %7, i32* %11)
  %13 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %14 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %17 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call i32 @writel(i32 %15, i32* %19)
  %21 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %22 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @readl(i32* %24)
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %29 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %32 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %34 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %37 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @writel(i32 %35, i32* %39)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
