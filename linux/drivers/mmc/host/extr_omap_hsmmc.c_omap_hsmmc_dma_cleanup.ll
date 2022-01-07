; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 8
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 3
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %35 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host* %34, %struct.TYPE_5__* %37)
  store %struct.dma_chan* %38, %struct.dma_chan** %7, align 8
  %39 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %40 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %39)
  %41 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %42 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @mmc_get_dma_dir(%struct.TYPE_5__* %58)
  %60 = call i32 @dma_unmap_sg(i32 %45, i32 %50, i32 %55, i32 %59)
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %33, %30, %2
  %66 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %66, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %67, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host*, %struct.TYPE_5__*) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
