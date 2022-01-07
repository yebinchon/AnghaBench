; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i32, i32, i32, i32, i32 }
%struct.mmc_ios = type { i32, i32, i32 }

@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_ios*)* @dw_mci_exynos_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_exynos_set_ios(%struct.dw_mci* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %9, i32 0, i32 0
  %11 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %10, align 8
  store %struct.dw_mci_exynos_priv_data* %11, %struct.dw_mci_exynos_priv_data** %5, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %62 [
    i32 131, label %19
    i32 132, label %29
    i32 129, label %42
    i32 128, label %42
    i32 130, label %52
  ]

19:                                               ; preds = %2
  %20 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %21 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %24 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SDMMC_CLKSEL_UP_SAMPLE(i32 %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %66

29:                                               ; preds = %2
  %30 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %31 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %29
  br label %66

42:                                               ; preds = %2, %2
  %43 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %44 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -458753
  %47 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %48 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %46, %50
  store i32 %51, i32* %8, align 4
  br label %66

52:                                               ; preds = %2
  %53 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %54 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -458753
  %57 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %58 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %56, %60
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %64 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %52, %42, %41, %19
  %67 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dw_mci_exynos_set_clksel_timing(%struct.dw_mci* %67, i32 %68)
  %70 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dw_mci_exynos_config_hs400(%struct.dw_mci* %70, i32 %71)
  %73 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dw_mci_exynos_adjust_clock(%struct.dw_mci* %73, i32 %74)
  ret void
}

declare dso_local i32 @SDMMC_CLKSEL_UP_SAMPLE(i32, i32) #1

declare dso_local i32 @dw_mci_exynos_set_clksel_timing(%struct.dw_mci*, i32) #1

declare dso_local i32 @dw_mci_exynos_config_hs400(%struct.dw_mci*, i32) #1

declare dso_local i32 @dw_mci_exynos_adjust_clock(%struct.dw_mci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
