; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_release_vrfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_release_vrfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@VRFB_NUM_BUFS = common dso_local global i32 0, align 4
@DMA_CHAN_ALLOTED = common dso_local global i64 0, align 8
@DMA_CHAN_NOT_ALLOTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vout_release_vrfb(%struct.omap_vout_device* %0) #0 {
  %2 = alloca %struct.omap_vout_device*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VRFB_NUM_BUFS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %10 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @omap_vrfb_release_ctx(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %21 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_CHAN_ALLOTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i64, i64* @DMA_CHAN_NOT_ALLOTED, align 8
  %28 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %29 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %32 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %37 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dmaengine_terminate_sync(i32 %39)
  %41 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %42 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_release_channel(i32 %44)
  br label %46

46:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @omap_vrfb_release_ctx(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
