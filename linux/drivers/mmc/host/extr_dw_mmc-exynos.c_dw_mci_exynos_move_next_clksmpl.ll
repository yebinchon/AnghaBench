; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_move_next_clksmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_move_next_clksmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i64 }

@DW_MCI_TYPE_EXYNOS7 = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS7_SMU = common dso_local global i64 0, align 8
@CLKSEL64 = common dso_local global i32 0, align 4
@CLKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_exynos_move_next_clksmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_exynos_move_next_clksmpl(%struct.dw_mci* %0) #0 {
  %2 = alloca %struct.dw_mci*, align 8
  %3 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %2, align 8
  %6 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %7 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %6, i32 0, i32 0
  %8 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %7, align 8
  store %struct.dw_mci_exynos_priv_data* %8, %struct.dw_mci_exynos_priv_data** %3, align 8
  %9 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DW_MCI_TYPE_EXYNOS7, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %3, align 8
  %16 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14, %1
  %21 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %22 = load i32, i32* @CLKSEL64, align 4
  %23 = call i32 @mci_readl(%struct.dw_mci* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %26 = load i32, i32* @CLKSEL, align 4
  %27 = call i32 @mci_readl(%struct.dw_mci* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 7
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SDMMC_CLKSEL_UP_SAMPLE(i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %3, align 8
  %36 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DW_MCI_TYPE_EXYNOS7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %3, align 8
  %42 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DW_MCI_TYPE_EXYNOS7_SMU, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40, %28
  %47 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %48 = load i32, i32* @CLKSEL64, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @mci_writel(%struct.dw_mci* %47, i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %53 = load i32, i32* @CLKSEL, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @mci_writel(%struct.dw_mci* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @SDMMC_CLKSEL_UP_SAMPLE(i32, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
