; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_pci_sdmmc_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_pci_sdmmc_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }
%struct.mmc_host = type { i32 }
%struct.alcor_sdmmc_host = type { i32, i32, %struct.alcor_pci_priv*, i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [20 x i8] c"Can't allocate MMC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MMC_POWER_UNDEFINED = common dso_local global i32 0, align 4
@AU6601_REG_INT_ENABLE = common dso_local global i32 0, align 4
@AU6601_MS_INT_ENABLE = common dso_local global i32 0, align 4
@alcor_irq = common dso_local global i32 0, align 4
@alcor_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME_ALCOR_PCI_SDMMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get irq for data line\0A\00", align 1
@alcor_timeout_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @alcor_pci_sdmmc_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_pci_sdmmc_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.alcor_pci_priv*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.alcor_sdmmc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %10, align 8
  store %struct.alcor_pci_priv* %11, %struct.alcor_pci_priv** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.mmc_host* @mmc_alloc_host(i32 32, %struct.TYPE_5__* %13)
  store %struct.mmc_host* %14, %struct.mmc_host** %5, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %16 = icmp ne %struct.mmc_host* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %25 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %24)
  store %struct.alcor_sdmmc_host* %25, %struct.alcor_sdmmc_host** %6, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %29 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %28, i32 0, i32 4
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load i32, i32* @MMC_POWER_UNDEFINED, align 4
  %31 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %32 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %34 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %35 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %34, i32 0, i32 2
  store %struct.alcor_pci_priv* %33, %struct.alcor_pci_priv** %35, align 8
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %37 = load i32, i32* @AU6601_REG_INT_ENABLE, align 4
  %38 = call i32 @alcor_write32(%struct.alcor_pci_priv* %36, i32 0, i32 %37)
  %39 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %40 = load i32, i32* @AU6601_MS_INT_ENABLE, align 4
  %41 = call i32 @alcor_write32(%struct.alcor_pci_priv* %39, i32 0, i32 %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %45 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @alcor_irq, align 4
  %48 = load i32, i32* @alcor_irq_thread, align 4
  %49 = load i32, i32* @IRQF_SHARED, align 4
  %50 = load i32, i32* @DRV_NAME_ALCOR_PCI_SDMMC, align 4
  %51 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %52 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %43, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, %struct.alcor_sdmmc_host* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %23
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %78

60:                                               ; preds = %23
  %61 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %62 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %61, i32 0, i32 1
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %65 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %64, i32 0, i32 0
  %66 = load i32, i32* @alcor_timeout_timer, align 4
  %67 = call i32 @INIT_DELAYED_WORK(i32* %65, i32 %66)
  %68 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %69 = call i32 @alcor_init_mmc(%struct.alcor_sdmmc_host* %68)
  %70 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %71 = call i32 @alcor_hw_init(%struct.alcor_sdmmc_host* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %75 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %73, %struct.alcor_sdmmc_host* %74)
  %76 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %77 = call i32 @mmc_add_host(%struct.mmc_host* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %60, %55, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @alcor_write32(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.alcor_sdmmc_host*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @alcor_init_mmc(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @alcor_hw_init(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.alcor_sdmmc_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
