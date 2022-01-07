; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { %struct.dma_chan*, %struct.dma_chan*, %struct.TYPE_2__*, i64, %struct.mmc_request* }
%struct.dma_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_request*)* @mmc_omap_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_start_request(%struct.mmc_omap_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %6, i32 0, i32 4
  %8 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %9 = icmp ne %struct.mmc_request* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %13 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %13, i32 0, i32 4
  store %struct.mmc_request* %12, %struct.mmc_request** %14, align 8
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %16 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %17 = call i32 @mmc_omap_prepare_data(%struct.mmc_omap_host* %15, %struct.mmc_request* %16)
  %18 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %19 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mmc_omap_start_command(%struct.mmc_omap_host* %18, i32 %21)
  %23 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MMC_DATA_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %37, i32 0, i32 1
  %39 = load %struct.dma_chan*, %struct.dma_chan** %38, align 8
  br label %44

40:                                               ; preds = %27
  %41 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %41, i32 0, i32 0
  %43 = load %struct.dma_chan*, %struct.dma_chan** %42, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi %struct.dma_chan* [ %39, %36 ], [ %43, %40 ]
  store %struct.dma_chan* %45, %struct.dma_chan** %5, align 8
  %46 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %47 = call i32 @dma_async_issue_pending(%struct.dma_chan* %46)
  br label %48

48:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_omap_prepare_data(%struct.mmc_omap_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_omap_start_command(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
