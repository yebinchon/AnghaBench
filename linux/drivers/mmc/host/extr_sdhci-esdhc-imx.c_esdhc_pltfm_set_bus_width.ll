; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@ESDHC_CTRL_8BITBUS = common dso_local global i32 0, align 4
@ESDHC_CTRL_4BITBUS = common dso_local global i32 0, align 4
@ESDHC_CTRL_BUSWIDTH_MASK = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_pltfm_set_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_pltfm_set_bus_width(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %11 [
    i32 128, label %7
    i32 129, label %9
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @ESDHC_CTRL_8BITBUS, align 4
  store i32 %8, i32* %5, align 4
  br label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ESDHC_CTRL_4BITBUS, align 4
  store i32 %10, i32* %5, align 4
  br label %12

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %9, %7
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = load i32, i32* @ESDHC_CTRL_BUSWIDTH_MASK, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %17 = call i32 @esdhc_clrset_le(%struct.sdhci_host* %13, i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @esdhc_clrset_le(%struct.sdhci_host*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
