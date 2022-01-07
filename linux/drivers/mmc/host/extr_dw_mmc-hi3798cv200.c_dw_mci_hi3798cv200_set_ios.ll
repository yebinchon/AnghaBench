; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-hi3798cv200.c_dw_mci_hi3798cv200_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-hi3798cv200.c_dw_mci_hi3798cv200_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.hi3798cv200_priv* }
%struct.hi3798cv200_priv = type { i32 }
%struct.mmc_ios = type { i64 }

@UHS_REG = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@SDMMC_UHS_DDR = common dso_local global i32 0, align 4
@ENABLE_SHIFT = common dso_local global i32 0, align 4
@SDMMC_ENABLE_PHASE = common dso_local global i32 0, align 4
@DDR_REG = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@SDMMC_DDR_HS400 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i64 0, align 8
@MMC_TIMING_LEGACY = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_ios*)* @dw_mci_hi3798cv200_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_hi3798cv200_set_ios(%struct.dw_mci* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.hi3798cv200_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %7, i32 0, i32 0
  %9 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %8, align 8
  store %struct.hi3798cv200_priv* %9, %struct.hi3798cv200_priv** %5, align 8
  %10 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %11 = load i32, i32* @UHS_REG, align 4
  %12 = call i32 @mci_readl(%struct.dw_mci* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @SDMMC_UHS_DDR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @SDMMC_UHS_DDR, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %35 = load i32, i32* @UHS_REG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mci_writel(%struct.dw_mci* %34, i32 %35, i32 %36)
  %38 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %39 = load i32, i32* @ENABLE_SHIFT, align 4
  %40 = call i32 @mci_readl(%struct.dw_mci* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @SDMMC_ENABLE_PHASE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %33
  %51 = load i32, i32* @SDMMC_ENABLE_PHASE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %57 = load i32, i32* @ENABLE_SHIFT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mci_writel(%struct.dw_mci* %56, i32 %57, i32 %58)
  %60 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %61 = load i32, i32* @DDR_REG, align 4
  %62 = call i32 @mci_readl(%struct.dw_mci* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i32, i32* @SDMMC_DDR_HS400, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %77

72:                                               ; preds = %55
  %73 = load i32, i32* @SDMMC_DDR_HS400, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %79 = load i32, i32* @DDR_REG, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @mci_writel(%struct.dw_mci* %78, i32 %79, i32 %80)
  %82 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MMC_TIMING_MMC_HS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %77
  %88 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MMC_TIMING_LEGACY, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %77
  %94 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %5, align 8
  %95 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_set_phase(i32 %96, i32 180)
  br label %110

98:                                               ; preds = %87
  %99 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %5, align 8
  %106 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_set_phase(i32 %107, i32 135)
  br label %109

109:                                              ; preds = %104, %98
  br label %110

110:                                              ; preds = %109, %93
  ret void
}

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
