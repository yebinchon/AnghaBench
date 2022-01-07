; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c_mic_request_dma_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c_mic_request_dma_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { i64, %struct.TYPE_4__*, %struct.dma_chan**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@MIC_MAX_DMA_CHAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"DMA channels # %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_device*)* @mic_request_dma_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_request_dma_chans(%struct.mic_device* %0) #0 {
  %2 = alloca %struct.mic_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @dma_cap_zero(i32 %5)
  %7 = load i32, i32* @DMA_MEMCPY, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dma_cap_set(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %42, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %13 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %18 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call %struct.dma_chan* @dma_request_channel(i32 %11, i32 %16, i32* %20)
  store %struct.dma_chan* %21, %struct.dma_chan** %4, align 8
  %22 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %23 = icmp ne %struct.dma_chan* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %10
  %25 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %26 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %27 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %26, i32 0, i32 2
  %28 = load %struct.dma_chan**, %struct.dma_chan*** %27, align 8
  %29 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %30 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %28, i64 %31
  store %struct.dma_chan* %25, %struct.dma_chan** %33, align 8
  %34 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %35 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MIC_MAX_DMA_CHAN, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %45

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %10
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %44 = icmp ne %struct.dma_chan* %43, null
  br i1 %44, label %10, label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %47 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %51 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %55 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
