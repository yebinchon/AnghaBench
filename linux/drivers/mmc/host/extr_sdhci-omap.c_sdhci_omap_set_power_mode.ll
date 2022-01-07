; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i64, i32 }

@MMC_POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_omap_host*, i32)* @sdhci_omap_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_set_power_mode(%struct.sdhci_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_omap_host*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_POWER_OFF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %12 = call i32 @sdhci_omap_disable_tuning(%struct.sdhci_omap_host* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  ret void
}

declare dso_local i32 @sdhci_omap_disable_tuning(%struct.sdhci_omap_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
