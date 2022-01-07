; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-dwc-mshc.c_sdhci_snps_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-dwc-mshc.c_sdhci_snps_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_VENDOR_PTR_R = common dso_local global i32 0, align 4
@SDHC_AT_CTRL_R = common dso_local global i64 0, align 8
@SDHC_SW_TUNE_EN = common dso_local global i64 0, align 8
@SDHC_GPIO_OUT = common dso_local global i64 0, align 8
@SDHC_CCLK_MMCM_RST = common dso_local global i64 0, align 8
@DIV_REG_100_MHZ = common dso_local global i64 0, align 8
@SDHC_MMCM_DIV_REG = common dso_local global i64 0, align 8
@CLKFBOUT_100_MHZ = common dso_local global i64 0, align 8
@SDHC_MMCM_CLKFBOUT = common dso_local global i64 0, align 8
@DIV_REG_200_MHZ = common dso_local global i64 0, align 8
@CLKFBOUT_200_MHZ = common dso_local global i64 0, align 8
@SDHCI_PROG_CLOCK_MODE = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_snps_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_snps_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = load i32, i32* @SDHCI_VENDOR_PTR_R, align 4
  %10 = call i64 @sdhci_readw(%struct.sdhci_host* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = load i64, i64* @SDHC_AT_CTRL_R, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @sdhci_readl(%struct.sdhci_host* %11, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @SDHC_SW_TUNE_EN, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @SDHC_AT_CTRL_R, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @sdhci_writel(%struct.sdhci_host* %20, i64 %21, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ule i32 %26, 52000000
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sdhci_set_clock(%struct.sdhci_host* %29, i32 %30)
  br label %92

32:                                               ; preds = %2
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = load i64, i64* @SDHC_GPIO_OUT, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @sdhci_readl(%struct.sdhci_host* %33, i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* @SDHC_CCLK_MMCM_RST, align 8
  %39 = load i64, i64* %6, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @SDHC_GPIO_OUT, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @sdhci_writel(%struct.sdhci_host* %41, i64 %42, i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 100000000
  br i1 %48, label %49, label %58

49:                                               ; preds = %32
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %51 = load i64, i64* @DIV_REG_100_MHZ, align 8
  %52 = load i64, i64* @SDHC_MMCM_DIV_REG, align 8
  %53 = call i32 @sdhci_writel(%struct.sdhci_host* %50, i64 %51, i64 %52)
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load i64, i64* @CLKFBOUT_100_MHZ, align 8
  %56 = load i64, i64* @SDHC_MMCM_CLKFBOUT, align 8
  %57 = call i32 @sdhci_writel(%struct.sdhci_host* %54, i64 %55, i64 %56)
  br label %67

58:                                               ; preds = %32
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %60 = load i64, i64* @DIV_REG_200_MHZ, align 8
  %61 = load i64, i64* @SDHC_MMCM_DIV_REG, align 8
  %62 = call i32 @sdhci_writel(%struct.sdhci_host* %59, i64 %60, i64 %61)
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %64 = load i64, i64* @CLKFBOUT_200_MHZ, align 8
  %65 = load i64, i64* @SDHC_MMCM_CLKFBOUT, align 8
  %66 = call i32 @sdhci_writel(%struct.sdhci_host* %63, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %49
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %69 = load i64, i64* @SDHC_GPIO_OUT, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i64 @sdhci_readl(%struct.sdhci_host* %68, i64 %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* @SDHC_CCLK_MMCM_RST, align 8
  %74 = xor i64 %73, -1
  %75 = load i64, i64* %6, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @SDHC_GPIO_OUT, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @sdhci_writel(%struct.sdhci_host* %77, i64 %78, i64 %81)
  %83 = load i32, i32* @SDHCI_PROG_CLOCK_MODE, align 4
  %84 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %5, align 4
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %91 = call i32 @sdhci_writew(%struct.sdhci_host* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %67, %28
  ret void
}

declare dso_local i64 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i64 @sdhci_readl(%struct.sdhci_host*, i64) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i64, i64) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
