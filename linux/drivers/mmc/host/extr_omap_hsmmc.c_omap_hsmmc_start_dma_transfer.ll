; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dma_chan = type { i32 }

@BLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @omap_hsmmc_start_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  %5 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %5, i32 0, i32 1
  %7 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  store %struct.mmc_request* %7, %struct.mmc_request** %3, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BLK, align 4
  %18 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %22, %28
  %30 = call i32 @OMAP_HSMMC_WRITE(i32 %16, i32 %17, i32 %29)
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %32 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_data_timeout(%struct.omap_hsmmc_host* %31, i32 %36, i32 %41)
  %43 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %44 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host* %43, %struct.TYPE_2__* %46)
  store %struct.dma_chan* %47, %struct.dma_chan** %4, align 8
  %48 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %49 = call i32 @dma_async_issue_pending(%struct.dma_chan* %48)
  br label %50

50:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @set_data_timeout(%struct.omap_hsmmc_host*, i32, i32) #1

declare dso_local %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
