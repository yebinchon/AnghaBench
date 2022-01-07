; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_get_ciu_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_get_ciu_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i64 }

@DW_MCI_TYPE_EXYNOS4412 = common dso_local global i64 0, align 8
@EXYNOS4412_FIXED_CIU_CLK_DIV = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS4210 = common dso_local global i64 0, align 8
@EXYNOS4210_FIXED_CIU_CLK_DIV = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS7 = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS7_SMU = common dso_local global i64 0, align 8
@CLKSEL64 = common dso_local global i32 0, align 4
@CLKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dw_mci*)* @dw_mci_exynos_get_ciu_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dw_mci_exynos_get_ciu_div(%struct.dw_mci* %0) #0 {
  %2 = alloca i64, align 8
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
  %11 = load i64, i64* @DW_MCI_TYPE_EXYNOS4412, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @EXYNOS4412_FIXED_CIU_CLK_DIV, align 8
  store i64 %14, i64* %2, align 8
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %17 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DW_MCI_TYPE_EXYNOS4210, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @EXYNOS4210_FIXED_CIU_CLK_DIV, align 8
  store i64 %22, i64* %2, align 8
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %25 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DW_MCI_TYPE_EXYNOS7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %31 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29, %23
  %36 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %37 = load i32, i32* @CLKSEL64, align 4
  %38 = call i32 @mci_readl(%struct.dw_mci* %36, i32 %37)
  %39 = call i64 @SDMMC_CLKSEL_GET_DIV(i32 %38)
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %2, align 8
  br label %47

41:                                               ; preds = %29
  %42 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %43 = load i32, i32* @CLKSEL, align 4
  %44 = call i32 @mci_readl(%struct.dw_mci* %42, i32 %43)
  %45 = call i64 @SDMMC_CLKSEL_GET_DIV(i32 %44)
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %41, %35, %21, %13
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @SDMMC_CLKSEL_GET_DIV(i32) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
