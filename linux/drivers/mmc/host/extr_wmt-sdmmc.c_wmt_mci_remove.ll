; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.wmt_mci_priv = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@SDMMC_BUSMODE = common dso_local global i64 0, align 8
@BM_SOFT_RESET = common dso_local global i32 0, align 4
@SDMMC_BLKLEN = common dso_local global i64 0, align 8
@SDMMC_STS0 = common dso_local global i64 0, align 8
@SDMMC_STS1 = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WMT MCI device removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wmt_mci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_mci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.wmt_mci_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mmc_host* %8, %struct.mmc_host** %3, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %9)
  store %struct.wmt_mci_priv* %10, %struct.wmt_mci_priv** %4, align 8
  %11 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %12 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDMMC_BUSMODE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @BM_SOFT_RESET, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %21 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SDMMC_BUSMODE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %27 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDMMC_BLKLEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readw(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -40961
  %34 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %35 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SDMMC_BLKLEN, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 %33, i64 %38)
  %40 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %41 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SDMMC_STS0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writeb(i32 255, i64 %44)
  %46 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %47 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SDMMC_STS1, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 255, i64 %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %55 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %54, i32 0, i32 6
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 16
  %60 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %61 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %64 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dma_free_coherent(i32* %53, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %68 = call i32 @mmc_remove_host(%struct.mmc_host* %67)
  %69 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %70 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %73 = call i32 @free_irq(i32 %71, %struct.wmt_mci_priv* %72)
  %74 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %75 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %78 = call i32 @free_irq(i32 %76, %struct.wmt_mci_priv* %77)
  %79 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %80 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @iounmap(i64 %81)
  %83 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %84 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_disable_unprepare(i32 %85)
  %87 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %4, align 8
  %88 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @clk_put(i32 %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %92 = load i32, i32* @IORESOURCE_MEM, align 4
  %93 = call %struct.resource* @platform_get_resource(%struct.platform_device* %91, i32 %92, i32 0)
  store %struct.resource* %93, %struct.resource** %5, align 8
  %94 = load %struct.resource*, %struct.resource** %5, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.resource*, %struct.resource** %5, align 8
  %98 = call i32 @resource_size(%struct.resource* %97)
  %99 = call i32 @release_mem_region(i32 %96, i32 %98)
  %100 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %101 = call i32 @mmc_free_host(%struct.mmc_host* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_info(i32* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @free_irq(i32, %struct.wmt_mci_priv*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
