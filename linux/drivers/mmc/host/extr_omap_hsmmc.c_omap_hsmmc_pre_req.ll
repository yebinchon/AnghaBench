; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_pre_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_pre_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.omap_hsmmc_host = type { i32, i64 }
%struct.dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @omap_hsmmc_pre_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_pre_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.omap_hsmmc_host*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.omap_hsmmc_host* %8, %struct.omap_hsmmc_host** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host* %26, %struct.TYPE_3__* %29)
  store %struct.dma_chan* %30, %struct.dma_chan** %6, align 8
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %32 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %36 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %35, i32 0, i32 0
  %37 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %38 = call i64 @omap_hsmmc_pre_dma_transfer(%struct.omap_hsmmc_host* %31, %struct.TYPE_3__* %34, i32* %36, %struct.dma_chan* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %25
  br label %46

46:                                               ; preds = %15, %45, %20
  ret void
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host*, %struct.TYPE_3__*) #1

declare dso_local i64 @omap_hsmmc_pre_dma_transfer(%struct.omap_hsmmc_host*, %struct.TYPE_3__*, i32*, %struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
