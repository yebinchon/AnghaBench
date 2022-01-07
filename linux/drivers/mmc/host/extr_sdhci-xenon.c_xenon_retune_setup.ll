; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_retune_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_retune_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i32 }

@XENON_SLOT_RETUNING_REQ_CTRL = common dso_local global i32 0, align 4
@XENON_RETUNING_COMPATIBLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_RETUNE = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_TUNING_MODE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @xenon_retune_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_retune_setup(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.xenon_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %6)
  store %struct.sdhci_pltfm_host* %7, %struct.sdhci_pltfm_host** %3, align 8
  %8 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %9 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %8)
  store %struct.xenon_priv* %9, %struct.xenon_priv** %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = load i32, i32* @XENON_SLOT_RETUNING_REQ_CTRL, align 4
  %12 = call i32 @sdhci_readl(%struct.sdhci_host* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @XENON_RETUNING_COMPATIBLE, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @XENON_SLOT_RETUNING_REQ_CTRL, align 4
  %20 = call i32 @sdhci_writel(%struct.sdhci_host* %17, i32 %18, i32 %19)
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %22 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %23 = call i32 @sdhci_readl(%struct.sdhci_host* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @SDHCI_INT_RETUNE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %31 = call i32 @sdhci_writel(%struct.sdhci_host* %28, i32 %29, i32 %30)
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %34 = call i32 @sdhci_readl(%struct.sdhci_host* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @SDHCI_INT_RETUNE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %42 = call i32 @sdhci_writel(%struct.sdhci_host* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @SDHCI_TUNING_MODE_1, align 4
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.xenon_priv*, %struct.xenon_priv** %4, align 8
  %47 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = shl i32 1, %49
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
