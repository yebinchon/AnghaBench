; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_config_smu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_config_smu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i64 }

@DW_MCI_TYPE_EXYNOS5420_SMU = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS7_SMU = common dso_local global i64 0, align 8
@MPSBEGIN0 = common dso_local global i32 0, align 4
@MPSEND0 = common dso_local global i32 0, align 4
@SDMMC_ENDING_SEC_NR_MAX = common dso_local global i32 0, align 4
@MPSCTRL0 = common dso_local global i32 0, align 4
@SDMMC_MPSCTRL_SECURE_WRITE_BIT = common dso_local global i32 0, align 4
@SDMMC_MPSCTRL_NON_SECURE_READ_BIT = common dso_local global i32 0, align 4
@SDMMC_MPSCTRL_VALID = common dso_local global i32 0, align 4
@SDMMC_MPSCTRL_NON_SECURE_WRITE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*)* @dw_mci_exynos_config_smu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_exynos_config_smu(%struct.dw_mci* %0) #0 {
  %2 = alloca %struct.dw_mci*, align 8
  %3 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %2, align 8
  %4 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %5 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %4, i32 0, i32 0
  %6 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  store %struct.dw_mci_exynos_priv_data* %6, %struct.dw_mci_exynos_priv_data** %3, align 8
  %7 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DW_MCI_TYPE_EXYNOS5420_SMU, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12, %1
  %19 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %20 = load i32, i32* @MPSBEGIN0, align 4
  %21 = call i32 @mci_writel(%struct.dw_mci* %19, i32 %20, i32 0)
  %22 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %23 = load i32, i32* @MPSEND0, align 4
  %24 = load i32, i32* @SDMMC_ENDING_SEC_NR_MAX, align 4
  %25 = call i32 @mci_writel(%struct.dw_mci* %22, i32 %23, i32 %24)
  %26 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %27 = load i32, i32* @MPSCTRL0, align 4
  %28 = load i32, i32* @SDMMC_MPSCTRL_SECURE_WRITE_BIT, align 4
  %29 = load i32, i32* @SDMMC_MPSCTRL_NON_SECURE_READ_BIT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SDMMC_MPSCTRL_VALID, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SDMMC_MPSCTRL_NON_SECURE_WRITE_BIT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mci_writel(%struct.dw_mci* %26, i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
