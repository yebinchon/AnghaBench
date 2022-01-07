; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32, %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }

@AU6601_REG_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AU6601_INT_READ_BUF_RDY = common dso_local global i32 0, align 4
@AU6601_INT_WRITE_BUF_RDY = common dso_local global i32 0, align 4
@AU6601_INT_DATA_END = common dso_local global i32 0, align 4
@AU6601_INT_DMA_END = common dso_local global i32 0, align 4
@AU6601_INT_CMD_END = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @alcor_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alcor_sdmmc_host*, align 8
  %7 = alloca %struct.alcor_pci_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.alcor_sdmmc_host*
  store %struct.alcor_sdmmc_host* %14, %struct.alcor_sdmmc_host** %6, align 8
  %15 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %16 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %15, i32 0, i32 1
  %17 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %16, align 8
  store %struct.alcor_pci_priv* %17, %struct.alcor_pci_priv** %7, align 8
  %18 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %19 = load i32, i32* @AU6601_REG_INT_STATUS, align 4
  %20 = call i32 @alcor_read32(%struct.alcor_pci_priv* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AU6601_REG_INT_STATUS, align 4
  %29 = call i32 @alcor_write32(%struct.alcor_pci_priv* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AU6601_INT_READ_BUF_RDY, align 4
  %32 = load i32, i32* @AU6601_INT_WRITE_BUF_RDY, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AU6601_INT_DATA_END, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AU6601_INT_DMA_END, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AU6601_INT_CMD_END, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %30, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %25
  %45 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @alcor_cmd_irq_done(%struct.alcor_sdmmc_host* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @alcor_data_irq_done(%struct.alcor_sdmmc_host* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %10, align 4
  br label %66

58:                                               ; preds = %53, %44
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %62 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %63, i32* %10, align 4
  %64 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %6, align 8
  %65 = call i32 @alcor_mask_sd_irqs(%struct.alcor_sdmmc_host* %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @alcor_read32(%struct.alcor_pci_priv*, i32) #1

declare dso_local i32 @alcor_write32(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @alcor_cmd_irq_done(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_data_irq_done(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_mask_sd_irqs(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
