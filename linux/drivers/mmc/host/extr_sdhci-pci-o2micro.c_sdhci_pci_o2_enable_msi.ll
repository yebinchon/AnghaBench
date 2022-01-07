; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_enable_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_enable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32 }
%struct.sdhci_host = type { i32, i32 }

@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: unsupport msi, use INTx irq\0A\00", align 1
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: enable PCI MSI failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_pci_chip*, %struct.sdhci_host*)* @sdhci_pci_o2_enable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_pci_o2_enable_msi(%struct.sdhci_pci_chip* %0, %struct.sdhci_host* %1) #0 {
  %3 = alloca %struct.sdhci_pci_chip*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %3, align 8
  store %struct.sdhci_host* %1, %struct.sdhci_host** %4, align 8
  %6 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %10 = call i32 @pci_find_capability(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mmc_hostname(i32 %16)
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %21 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_IRQ_MSI, align 4
  %24 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @pci_alloc_irq_vectors(i32 %22, i32 1, i32 1, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mmc_hostname(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %43

36:                                               ; preds = %19
  %37 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %38 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_irq_vector(i32 %39, i32 0)
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %29, %13
  ret void
}

declare dso_local i32 @pci_find_capability(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
