; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_esdhc = type { i64 }

@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fsl,p2020-esdhc\00", align 1
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@ESDHC_TBCTL = common dso_local global i32 0, align 4
@ESDHC_TB_EN = common dso_local global i32 0, align 4
@ESDHC_DLLCFG1 = common dso_local global i32 0, align 4
@ESDHC_DLL_PD_PULSE_STRETCH_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_reset(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_esdhc*, align 8
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %5, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %11 = call %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_esdhc* %11, %struct.sdhci_esdhc** %6, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @sdhci_reset(%struct.sdhci_host* %12, i32 %13)
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %20 = call i32 @sdhci_writel(%struct.sdhci_host* %15, i32 %18, i32 %19)
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %26 = call i32 @sdhci_writel(%struct.sdhci_host* %21, i32 %24, i32 %25)
  %27 = call i64 @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @mdelay(i32 5)
  br label %31

31:                                               ; preds = %29, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = load i32, i32* @ESDHC_TBCTL, align 4
  %39 = call i32 @sdhci_readl(%struct.sdhci_host* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @ESDHC_TB_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ESDHC_TBCTL, align 4
  %47 = call i32 @sdhci_writel(%struct.sdhci_host* %44, i32 %45, i32 %46)
  %48 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %49 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %54 = load i32, i32* @ESDHC_DLLCFG1, align 4
  %55 = call i32 @sdhci_readl(%struct.sdhci_host* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @ESDHC_DLL_PD_PULSE_STRETCH_SEL, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ESDHC_DLLCFG1, align 4
  %63 = call i32 @sdhci_writel(%struct.sdhci_host* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %36
  br label %65

65:                                               ; preds = %64, %31
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i64 @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
