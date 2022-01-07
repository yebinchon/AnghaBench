; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_cqe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_cqe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32 }

@CQHCI_CFG = common dso_local global i32 0, align 4
@CQHCI_ENABLE = common dso_local global i32 0, align 4
@CQHCI_SSC1 = common dso_local global i32 0, align 4
@CQHCI_SSC1_CBC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @sdhci_tegra_cqe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_tegra_cqe_enable(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.cqhci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 0
  %7 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  store %struct.cqhci_host* %7, %struct.cqhci_host** %3, align 8
  %8 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %9 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %1
  %13 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %14 = load i32, i32* @CQHCI_CFG, align 4
  %15 = call i32 @cqhci_readl(%struct.cqhci_host* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CQHCI_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CQHCI_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @CQHCI_CFG, align 4
  %27 = call i32 @cqhci_writel(%struct.cqhci_host* %21, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = call i32 @sdhci_cqe_enable(%struct.mmc_host* %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CQHCI_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CQHCI_CFG, align 4
  %39 = call i32 @cqhci_writel(%struct.cqhci_host* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %43 = load i32, i32* @CQHCI_SSC1, align 4
  %44 = call i32 @cqhci_readl(%struct.cqhci_host* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @CQHCI_SSC1_CBC_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CQHCI_SSC1, align 4
  %52 = call i32 @cqhci_writel(%struct.cqhci_host* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_cqe_enable(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
