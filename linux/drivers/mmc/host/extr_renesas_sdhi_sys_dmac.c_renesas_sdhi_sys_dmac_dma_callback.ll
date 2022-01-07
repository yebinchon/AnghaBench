; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.renesas_sdhi = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @renesas_sdhi_sys_dmac_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_sys_dmac_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.renesas_sdhi*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %6, %struct.tmio_mmc_host** %3, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %7)
  store %struct.renesas_sdhi* %8, %struct.renesas_sdhi** %4, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MMC_DATA_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %27, i32 0, i32 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_sg(i32 %33, i32 %36, i32 %39, i32 %40)
  br label %58

42:                                               ; preds = %17
  %43 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %43, i32 0, i32 3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %51 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_unmap_sg(i32 %49, i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %42, %26
  %59 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %63 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_irq(i32* %67)
  %69 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %70 = call i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host* %69)
  br label %71

71:                                               ; preds = %58, %16
  %72 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %73 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  ret void
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
