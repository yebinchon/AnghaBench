; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_hs400_enhanced_strobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_hs400_enhanced_strobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_sprd_host = type { i32* }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@SDHCI_SPRD_CTRL_HS400ES = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i32 0, align 4
@SDHCI_SPRD_REG_32_DLL_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @sdhci_sprd_hs400_enhanced_strobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_sprd_hs400_enhanced_strobe(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_sprd_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %12 = call %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host* %11)
  store %struct.sdhci_sprd_host* %12, %struct.sdhci_sprd_host** %6, align 8
  %13 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %6, align 8
  %14 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %23 = call i32 @sdhci_sprd_sd_clk_off(%struct.sdhci_host* %22)
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %25 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %26 = call i32 @sdhci_readw(%struct.sdhci_host* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @SDHCI_SPRD_CTRL_HS400ES, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %37 = call i32 @sdhci_writew(%struct.sdhci_host* %34, i32 %35, i32 %36)
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %39 = call i32 @sdhci_sprd_sd_clk_on(%struct.sdhci_host* %38)
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @MMC_TIMING_MMC_HS400, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_DLY, align 4
  %48 = call i32 @sdhci_writel(%struct.sdhci_host* %40, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_sprd_sd_clk_off(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_sprd_sd_clk_on(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
