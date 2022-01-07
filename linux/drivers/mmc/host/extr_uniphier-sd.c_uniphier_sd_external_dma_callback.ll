; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_external_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_external_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaengine_result = type { i64 }
%struct.tmio_mmc_host = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uniphier_sd_priv = type { i32 }

@DMA_TRANS_NOERROR = common dso_local global i64 0, align 8
@TMIO_STAT_DATAEND = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dmaengine_result*)* @uniphier_sd_external_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_external_dma_callback(i8* %0, %struct.dmaengine_result* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dmaengine_result*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca %struct.uniphier_sd_priv*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dmaengine_result* %1, %struct.dmaengine_result** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %9, %struct.tmio_mmc_host** %5, align 8
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %11 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %10)
  store %struct.uniphier_sd_priv* %11, %struct.uniphier_sd_priv** %6, align 8
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mmc_dev(i32 %14)
  %16 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %6, align 8
  %23 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_unmap_sg(i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %27 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %31 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_TRANS_NOERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %37 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %38 = call i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host* %36, i32 %37)
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %43 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %47 = call i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host* %46)
  br label %48

48:                                               ; preds = %39, %35
  %49 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %50 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %49, i32 0, i32 0
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
