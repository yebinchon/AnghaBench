; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_amd_tuning_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_amd_tuning_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_PRESET_VAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_CTRL_EXEC_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @amd_tuning_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_tuning_reset(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %6 = call i32 @sdhci_readw(%struct.sdhci_host* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %8 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %15 = call i32 @sdhci_writew(%struct.sdhci_host* %12, i32 %13, i32 %14)
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %17 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %18 = call i32 @sdhci_readw(%struct.sdhci_host* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %26 = call i32 @sdhci_writew(%struct.sdhci_host* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
