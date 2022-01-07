; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_pwr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_pwr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sdhci_msm_pwr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_msm_pwr_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_msm_host*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sdhci_host*
  store %struct.sdhci_host* %9, %struct.sdhci_host** %5, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %6, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %13 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_msm_host* %13, %struct.sdhci_msm_host** %7, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sdhci_msm_handle_pwr_irq(%struct.sdhci_host* %14, i32 %15)
  %17 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %7, align 8
  %18 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %7, align 8
  %20 = call i32 @sdhci_msm_complete_pwr_irq_wait(%struct.sdhci_msm_host* %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_msm_handle_pwr_irq(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_msm_complete_pwr_irq_wait(%struct.sdhci_msm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
