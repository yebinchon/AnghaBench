; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.msdc_host = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MAX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msdc_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.msdc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.msdc_host* %8, %struct.msdc_host** %4, align 8
  %9 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %10 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = call i32 @platform_set_drvdata(%struct.platform_device* %13, i32* null)
  %15 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %16 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mmc_remove_host(i32 %17)
  %19 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %20 = call i32 @msdc_deinit_hw(%struct.msdc_host* %19)
  %21 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %22 = call i32 @msdc_gate_clock(%struct.msdc_host* %21)
  %23 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %24 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_disable(i32 %25)
  %27 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %28 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_put_noidle(i32 %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %34 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %38 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_free_coherent(i32* %32, i32 8, i32 %36, i32 %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* @MAX_BD_NUM, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %49 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %53 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dma_free_coherent(i32* %43, i32 %47, i32 %51, i32 %55)
  %57 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %58 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mmc_free_host(i32 %59)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @msdc_deinit_hw(%struct.msdc_host*) #1

declare dso_local i32 @msdc_gate_clock(%struct.msdc_host*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @mmc_free_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
