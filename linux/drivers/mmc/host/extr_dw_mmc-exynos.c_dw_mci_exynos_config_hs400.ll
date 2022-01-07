; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_config_hs400.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_config_hs400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i64, i64, i64, i32 }

@DW_MCI_TYPE_EXYNOS5420 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"cannot configure HS400, unsupported chipset\0A\00", align 1
@DATA_STROBE_EN = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@HS400_DQS_EN = common dso_local global i32 0, align 4
@HS400_DLINE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, i64)* @dw_mci_exynos_config_hs400 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_exynos_config_hs400(%struct.dw_mci* %0, i64 %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %9 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %8, i32 0, i32 1
  %10 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %9, align 8
  store %struct.dw_mci_exynos_priv_data* %10, %struct.dw_mci_exynos_priv_data** %5, align 8
  %11 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %12 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DW_MCI_TYPE_EXYNOS5420, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %22 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %16
  br label %67

26:                                               ; preds = %2
  %27 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %28 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %31 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load i64, i64* @DATA_STROBE_EN, align 8
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %42 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @DQS_CTRL_RD_DELAY(i64 %40, i32 %43)
  store i64 %44, i64* %7, align 8
  br label %58

45:                                               ; preds = %26
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = and i64 %50, 4294967040
  store i64 %51, i64* %6, align 8
  br label %57

52:                                               ; preds = %45
  %53 = load i64, i64* @DATA_STROBE_EN, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %6, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %60 = load i32, i32* @HS400_DQS_EN, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @mci_writel(%struct.dw_mci* %59, i32 %60, i64 %61)
  %63 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %64 = load i32, i32* @HS400_DLINE_CTRL, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @mci_writel(%struct.dw_mci* %63, i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %25
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @DQS_CTRL_RD_DELAY(i64, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
