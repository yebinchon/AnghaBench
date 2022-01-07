; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_device.c_mic_request_dma_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_device.c_mic_request_dma_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_driver = type { i64, i32, %struct.dma_chan** }
%struct.dma_chan = type { i32 }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@MIC_MAX_DMA_CHAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"DMA channels # %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_driver*)* @mic_request_dma_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_request_dma_chans(%struct.mic_driver* %0) #0 {
  %2 = alloca %struct.mic_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.mic_driver* %0, %struct.mic_driver** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @dma_cap_zero(i32 %5)
  %7 = load i32, i32* @DMA_MEMCPY, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dma_cap_set(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.dma_chan* @dma_request_channel(i32 %11, i32* null, i32* null)
  store %struct.dma_chan* %12, %struct.dma_chan** %4, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %14 = icmp ne %struct.dma_chan* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %17 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %18 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %17, i32 0, i32 2
  %19 = load %struct.dma_chan**, %struct.dma_chan*** %18, align 8
  %20 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %21 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %19, i64 %22
  store %struct.dma_chan* %16, %struct.dma_chan** %24, align 8
  %25 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %26 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MIC_MAX_DMA_CHAN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %36

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %10
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %35 = icmp ne %struct.dma_chan* %34, null
  br i1 %35, label %10, label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %38 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %41 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %45 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
