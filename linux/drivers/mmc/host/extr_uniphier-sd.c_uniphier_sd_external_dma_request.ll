; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_external_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_external_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.dma_chan*, %struct.dma_chan*, i32 }
%struct.dma_chan = type { i32 }
%struct.tmio_mmc_data = type { i32 }
%struct.uniphier_sd_priv = type { %struct.dma_chan* }

@.str = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to request DMA channel. falling back to PIO\0A\00", align 1
@uniphier_sd_external_dma_issue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.tmio_mmc_data*)* @uniphier_sd_external_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_external_dma_request(%struct.tmio_mmc_host* %0, %struct.tmio_mmc_data* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.tmio_mmc_data*, align 8
  %5 = alloca %struct.uniphier_sd_priv*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.tmio_mmc_data* %1, %struct.tmio_mmc_data** %4, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %7)
  store %struct.uniphier_sd_priv* %8, %struct.uniphier_sd_priv** %5, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mmc_dev(i32 %11)
  %13 = call %struct.dma_chan* @dma_request_chan(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_chan* %13, %struct.dma_chan** %6, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %15 = call i64 @IS_ERR(%struct.dma_chan* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mmc_dev(i32 %20)
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %25 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %26 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %25, i32 0, i32 0
  store %struct.dma_chan* %24, %struct.dma_chan** %26, align 8
  %27 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %28 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %28, i32 0, i32 2
  store %struct.dma_chan* %27, %struct.dma_chan** %29, align 8
  %30 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %31, i32 0, i32 1
  store %struct.dma_chan* %30, %struct.dma_chan** %32, align 8
  %33 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %33, i32 0, i32 0
  %35 = load i32, i32* @uniphier_sd_external_dma_issue, align 4
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %37 = ptrtoint %struct.tmio_mmc_host* %36 to i64
  %38 = call i32 @tasklet_init(i32* %34, i32 %35, i64 %37)
  br label %39

39:                                               ; preds = %23, %17
  ret void
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local %struct.dma_chan* @dma_request_chan(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
