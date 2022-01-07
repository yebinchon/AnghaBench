; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_cqe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_cqe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32 }

@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_DATA_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @sdhci_arasan_cqe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_arasan_cqe_enable(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.sdhci_host* %6, %struct.sdhci_host** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %9 = call i32 @sdhci_readl(%struct.sdhci_host* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %15, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SDHCI_DATA_AVAILABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = load i32, i32* @SDHCI_BUFFER, align 4
  %18 = call i32 @sdhci_readl(%struct.sdhci_host* %16, i32 %17)
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %21 = call i32 @sdhci_readl(%struct.sdhci_host* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = call i32 @sdhci_cqe_enable(%struct.mmc_host* %23)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_cqe_enable(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
