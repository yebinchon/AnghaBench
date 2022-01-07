; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-gli.c_gl9750_wt_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-gli.c_gl9750_wt_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_GLI_9750_WT = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_WT_EN = common dso_local global i64 0, align 8
@GLI_9750_WT_EN_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @gl9750_wt_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl9750_wt_off(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %6 = load i32, i32* @SDHCI_GLI_9750_WT, align 4
  %7 = call i64 @sdhci_readl(%struct.sdhci_host* %5, i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @SDHCI_GLI_9750_WT_EN, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @FIELD_GET(i64 %8, i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @GLI_9750_WT_EN_OFF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %29

15:                                               ; preds = %1
  %16 = load i64, i64* @SDHCI_GLI_9750_WT_EN, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* @SDHCI_GLI_9750_WT_EN, align 8
  %21 = load i64, i64* @GLI_9750_WT_EN_OFF, align 8
  %22 = call i64 @FIELD_PREP(i64 %20, i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* @SDHCI_GLI_9750_WT, align 4
  %28 = call i32 @sdhci_writel(%struct.sdhci_host* %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i64 @FIELD_GET(i64, i64) #1

declare dso_local i64 @FIELD_PREP(i64, i64) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
