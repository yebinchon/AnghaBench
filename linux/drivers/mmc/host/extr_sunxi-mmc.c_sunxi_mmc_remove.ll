; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.sunxi_mmc_host = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_mmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sunxi_mmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.sunxi_mmc_host* %8, %struct.sunxi_mmc_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call i32 @mmc_remove_host(%struct.mmc_host* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_force_suspend(i32* %12)
  %14 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @disable_irq(i32 %16)
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %19 = call i32 @sunxi_mmc_disable(%struct.sunxi_mmc_host* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dma_free_coherent(i32* %21, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %31 = call i32 @mmc_free_host(%struct.mmc_host* %30)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_force_suspend(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @sunxi_mmc_disable(%struct.sunxi_mmc_host*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
