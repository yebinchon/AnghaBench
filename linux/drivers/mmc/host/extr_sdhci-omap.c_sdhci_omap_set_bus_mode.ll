; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_bus_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_bus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32 }

@SDHCI_OMAP_CON = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i32 0, align 4
@CON_OD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_omap_host*, i32)* @sdhci_omap_set_bus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_set_bus_mode(%struct.sdhci_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_omap_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %14 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %15 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MMC_BUSMODE_OPENDRAIN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @CON_OD, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %12
  %24 = load i32, i32* @CON_OD, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %30 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %35 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
