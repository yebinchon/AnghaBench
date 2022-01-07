; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-timers.c_stm32_timers_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-timers.c_stm32_timers_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_timers_dma = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_tx_state = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stm32_timers_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_timers_dma_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stm32_timers_dma*, align 8
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.stm32_timers_dma*
  store %struct.stm32_timers_dma* %7, %struct.stm32_timers_dma** %3, align 8
  %8 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmaengine_tx_status(%struct.TYPE_2__* %10, i32 %15, %struct.dma_tx_state* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DMA_COMPLETE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %21, i32 0, i32 0
  %23 = call i32 @complete(i32* %22)
  br label %24

24:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @dmaengine_tx_status(%struct.TYPE_2__*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
