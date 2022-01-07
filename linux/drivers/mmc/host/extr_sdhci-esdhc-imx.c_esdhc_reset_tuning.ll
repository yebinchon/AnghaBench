; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_reset_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_reset_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ESDHC_FLAG_MAN_TUNING = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL = common dso_local global i64 0, align 8
@ESDHC_MIX_CTRL_SMPCLK_SEL = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL_FBCLK_SEL = common dso_local global i32 0, align 4
@ESDHC_TUNE_CTRL_STATUS = common dso_local global i64 0, align 8
@ESDHC_FLAG_STD_TUNING = common dso_local global i32 0, align 4
@SDHCI_AUTO_CMD_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @esdhc_reset_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_reset_tuning(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.pltfm_imx_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %6)
  store %struct.sdhci_pltfm_host* %7, %struct.sdhci_pltfm_host** %3, align 8
  %8 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %9 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %8)
  store %struct.pltfm_imx_data* %9, %struct.pltfm_imx_data** %4, align 8
  %10 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %4, align 8
  %11 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %79

13:                                               ; preds = %1
  %14 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %4, align 8
  %15 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ESDHC_FLAG_MAN_TUNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %13
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @ESDHC_MIX_CTRL_SMPCLK_SEL, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ESDHC_MIX_CTRL_FBCLK_SEL, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ESDHC_TUNE_CTRL_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 0, i64 %48)
  br label %78

50:                                               ; preds = %13
  %51 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %4, align 8
  %52 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ESDHC_FLAG_STD_TUNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %50
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SDHCI_AUTO_CMD_STATUS, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @ESDHC_MIX_CTRL_SMPCLK_SEL, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %72 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SDHCI_AUTO_CMD_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %59, %50
  br label %78

78:                                               ; preds = %77, %22
  br label %79

79:                                               ; preds = %78, %1
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
