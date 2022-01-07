; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-timers.c_stm32_timers_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-timers.c_stm32_timers_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_timers = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32, i32 }

@STM32_TIMERS_DMA_CH1 = common dso_local global i32 0, align 4
@STM32_TIMERS_DMA_CH4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ch%1d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@STM32_TIMERS_DMA_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"trig\00", align 1
@STM32_TIMERS_DMA_TRIG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@STM32_TIMERS_DMA_COM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.stm32_timers*)* @stm32_timers_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_timers_dma_probe(%struct.device* %0, %struct.stm32_timers* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.stm32_timers*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.stm32_timers* %1, %struct.stm32_timers** %4, align 8
  %7 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %8 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load i32, i32* @STM32_TIMERS_DMA_CH1, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STM32_TIMERS_DMA_CH4, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8* %22)
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @snprintf(i8* %21, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %29 = call i8* @dma_request_slave_channel(%struct.device* %27, i8* %28)
  %30 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %29, i8** %36, align 8
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i8* @dma_request_slave_channel(%struct.device* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @STM32_TIMERS_DMA_UP, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %42, i8** %48, align 8
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i8* @dma_request_slave_channel(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %52 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* @STM32_TIMERS_DMA_TRIG, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %50, i8** %56, align 8
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = call i8* @dma_request_slave_channel(%struct.device* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @STM32_TIMERS_DMA_COM, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %58, i8** %64, align 8
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i8* @dma_request_slave_channel(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
