; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_get_clksmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_get_clksmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i64 }

@DW_MCI_TYPE_EXYNOS7 = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS7_SMU = common dso_local global i64 0, align 8
@CLKSEL64 = common dso_local global i32 0, align 4
@CLKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_exynos_get_clksmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_exynos_get_clksmpl(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %5 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %6 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %5, i32 0, i32 0
  %7 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %6, align 8
  store %struct.dw_mci_exynos_priv_data* %7, %struct.dw_mci_exynos_priv_data** %4, align 8
  %8 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %9 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DW_MCI_TYPE_EXYNOS7, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %15 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %1
  %20 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %21 = load i32, i32* @CLKSEL64, align 4
  %22 = call i32 @mci_readl(%struct.dw_mci* %20, i32 %21)
  %23 = call i32 @SDMMC_CLKSEL_CCLK_SAMPLE(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %26 = load i32, i32* @CLKSEL, align 4
  %27 = call i32 @mci_readl(%struct.dw_mci* %25, i32 %26)
  %28 = call i32 @SDMMC_CLKSEL_CCLK_SAMPLE(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @SDMMC_CLKSEL_CCLK_SAMPLE(i32) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
