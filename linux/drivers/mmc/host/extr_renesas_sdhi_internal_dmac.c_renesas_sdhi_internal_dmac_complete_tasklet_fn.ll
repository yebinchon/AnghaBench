; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_complete_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_complete_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SDHI_INTERNAL_DMAC_RX_IN_USE = common dso_local global i32 0, align 4
@global_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @renesas_sdhi_internal_dmac_complete_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_internal_dmac_complete_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %6, %struct.tmio_mmc_host** %3, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MMC_DATA_READ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %30 = call i32 @renesas_sdhi_internal_dmac_enable_dma(%struct.tmio_mmc_host* %29, i32 0)
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dma_unmap_sg(i32* %34, i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i32, i32* @SDHI_INTERNAL_DMAC_RX_IN_USE, align 4
  %48 = call i32 @clear_bit(i32 %47, i32* @global_flags)
  br label %49

49:                                               ; preds = %46, %28
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %51 = call i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host* %50)
  br label %52

52:                                               ; preds = %49, %14
  %53 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @renesas_sdhi_internal_dmac_enable_dma(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
