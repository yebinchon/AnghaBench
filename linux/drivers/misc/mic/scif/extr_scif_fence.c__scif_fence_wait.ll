; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c__scif_fence_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c__scif_fence_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCIF_REMOTE_FENCE = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i64 0, align 8
@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @_scif_fence_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scif_fence_wait(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.scif_endpt*
  store %struct.scif_endpt* %9, %struct.scif_endpt** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SCIF_REMOTE_FENCE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %15 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %19 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @dma_async_is_tx_complete(i32 %21, i32 %22, i32* null, i32* null)
  %24 = load i64, i64* @DMA_COMPLETE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %28 = call i32 @wait_event_interruptible_timeout(i32 %17, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @dma_async_is_tx_complete(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
