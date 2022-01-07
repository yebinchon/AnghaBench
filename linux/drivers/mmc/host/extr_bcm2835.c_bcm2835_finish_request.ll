; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { %struct.TYPE_2__*, %struct.dma_chan*, i32*, i32*, i32*, %struct.mmc_request*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mmc_request = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to terminate DMA (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_finish_request(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  %6 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %7 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %6, i32 0, i32 6
  %8 = call i32 @cancel_delayed_work(i32* %7)
  %9 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %10 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %9, i32 0, i32 5
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  store %struct.mmc_request* %11, %struct.mmc_request** %4, align 8
  %12 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %13 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %12, i32 0, i32 5
  store %struct.mmc_request* null, %struct.mmc_request** %13, align 8
  %14 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %15 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %17 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %19 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %21 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %20, i32 0, i32 1
  %22 = load %struct.dma_chan*, %struct.dma_chan** %21, align 8
  store %struct.dma_chan* %22, %struct.dma_chan** %3, align 8
  %23 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %24 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %23, i32 0, i32 1
  store %struct.dma_chan* null, %struct.dma_chan** %24, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %26 = icmp ne %struct.dma_chan* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %29 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %34 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %42 = call i32 @mmc_from_priv(%struct.bcm2835_host* %41)
  %43 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %44 = call i32 @mmc_request_done(i32 %42, %struct.mmc_request* %43)
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @mmc_from_priv(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
