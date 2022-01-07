; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_set_clksel_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_set_clksel_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.TYPE_2__*, %struct.dw_mci_exynos_priv_data* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mci_exynos_priv_data = type { i64 }

@DW_MCI_TYPE_EXYNOS7 = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS7_SMU = common dso_local global i64 0, align 8
@CLKSEL64 = common dso_local global i32 0, align 4
@CLKSEL = common dso_local global i32 0, align 4
@SDMMC_CLKSEL_TIMING_MASK = common dso_local global i32 0, align 4
@DW_MMC_CARD_NO_USE_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, i32)* @dw_mci_exynos_set_clksel_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_exynos_set_clksel_timing(%struct.dw_mci* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %7, i32 0, i32 1
  %9 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %8, align 8
  store %struct.dw_mci_exynos_priv_data* %9, %struct.dw_mci_exynos_priv_data** %5, align 8
  %10 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %11 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DW_MCI_TYPE_EXYNOS7, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %17 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %2
  %22 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %23 = load i32, i32* @CLKSEL64, align 4
  %24 = call i32 @mci_readl(%struct.dw_mci* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %27 = load i32, i32* @CLKSEL, align 4
  %28 = call i32 @mci_readl(%struct.dw_mci* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SDMMC_CLKSEL_TIMING_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %37 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DW_MCI_TYPE_EXYNOS7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %43 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41, %29
  %48 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %49 = load i32, i32* @CLKSEL64, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mci_writel(%struct.dw_mci* %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %54 = load i32, i32* @CLKSEL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mci_writel(%struct.dw_mci* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @SDMMC_CLKSEL_GET_DRV_WD3(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %63 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp ne %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @DW_MMC_CARD_NO_USE_HOLD, align 4
  %68 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %69 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %67, i32* %71)
  br label %73

73:                                               ; preds = %66, %61, %57
  ret void
}

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @SDMMC_CLKSEL_GET_DRV_WD3(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
