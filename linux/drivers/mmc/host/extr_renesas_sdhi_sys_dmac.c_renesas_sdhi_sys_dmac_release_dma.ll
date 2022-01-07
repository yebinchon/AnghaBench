; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32*, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @renesas_sdhi_sys_dmac_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_sys_dmac_release_dma(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 2
  %7 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %8 = icmp ne %struct.dma_chan* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 2
  %12 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  store %struct.dma_chan* %12, %struct.dma_chan** %3, align 8
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 2
  store %struct.dma_chan* null, %struct.dma_chan** %14, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %16 = call i32 @dma_release_channel(%struct.dma_chan* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 1
  %20 = load %struct.dma_chan*, %struct.dma_chan** %19, align 8
  %21 = icmp ne %struct.dma_chan* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %23, i32 0, i32 1
  %25 = load %struct.dma_chan*, %struct.dma_chan** %24, align 8
  store %struct.dma_chan* %25, %struct.dma_chan** %4, align 8
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %26, i32 0, i32 1
  store %struct.dma_chan* null, %struct.dma_chan** %27, align 8
  %28 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %29 = call i32 @dma_release_channel(%struct.dma_chan* %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = call i32 @free_pages(i64 %39, i32 0)
  %41 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %42 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
