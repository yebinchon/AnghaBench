; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_card_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_card_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_omap_host = type { i32 }

@SDHCI_OMAP_CON = common dso_local global i32 0, align 4
@SDHCI_OMAP_AC12 = common dso_local global i32 0, align 4
@CON_CLKEXTFREE = common dso_local global i32 0, align 4
@AC12_V1V8_SIGEN = common dso_local global i32 0, align 4
@CON_PADEN = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_INT = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_OMAP_PSTATE = common dso_local global i32 0, align 4
@PSTATE_DATI = common dso_local global i32 0, align 4
@PSTATE_DLEV_DAT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sdhci_omap_card_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_card_busy(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_omap_host*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.sdhci_host* %11, %struct.sdhci_host** %6, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %13 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %16 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %15)
  store %struct.sdhci_pltfm_host* %16, %struct.sdhci_pltfm_host** %7, align 8
  %17 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %18 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %17)
  store %struct.sdhci_omap_host* %18, %struct.sdhci_omap_host** %8, align 8
  %19 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %20 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %21 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %23 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %24 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @CON_CLKEXTFREE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AC12_V1V8_SIGEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @CON_CLKEXTFREE, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i32, i32* @CON_PADEN, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %42 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %41, i32 %42, i32 %43)
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @disable_irq(i32 %47)
  %49 = load i32, i32* @SDHCI_INT_CARD_INT, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %55 = call i32 @sdhci_writel(%struct.sdhci_host* %52, i32 %53, i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %59 = call i32 @sdhci_writel(%struct.sdhci_host* %56, i32 %57, i32 %58)
  %60 = call i32 @usleep_range(i32 50, i32 100)
  %61 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %62 = load i32, i32* @SDHCI_OMAP_PSTATE, align 4
  %63 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @PSTATE_DATI, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %37
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @PSTATE_DLEV_DAT0, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68, %37
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %76 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %77 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %75, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @CON_CLKEXTFREE, align 4
  %79 = load i32, i32* @CON_PADEN, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %85 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %84, i32 %85, i32 %86)
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %90 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %93 = call i32 @sdhci_writel(%struct.sdhci_host* %88, i32 %91, i32 %92)
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %99 = call i32 @sdhci_writel(%struct.sdhci_host* %94, i32 %97, i32 %98)
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @enable_irq(i32 %102)
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
