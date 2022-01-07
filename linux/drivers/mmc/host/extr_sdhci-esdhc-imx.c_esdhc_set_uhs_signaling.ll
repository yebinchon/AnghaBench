; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.sdhci_host*, i32)* }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { i32, %struct.esdhc_platform_data }
%struct.esdhc_platform_data = type { i32 }

@ESDHC_MIX_CTRL = common dso_local global i64 0, align 8
@ESDHC_MIX_CTRL_DDREN = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL_HS400_EN = common dso_local global i32 0, align 4
@ESDHC_DLL_OVERRIDE_VAL_SHIFT = common dso_local global i32 0, align 4
@ESDHC_DLL_OVERRIDE_EN_SHIFT = common dso_local global i32 0, align 4
@ESDHC_DLL_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_set_uhs_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.pltfm_imx_data*, align 8
  %8 = alloca %struct.esdhc_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %6, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %13 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.pltfm_imx_data* %13, %struct.pltfm_imx_data** %7, align 8
  %14 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %15 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %14, i32 0, i32 1
  store %struct.esdhc_platform_data* %15, %struct.esdhc_platform_data** %8, align 8
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @ESDHC_MIX_CTRL_DDREN, align 4
  %23 = load i32, i32* @ESDHC_MIX_CTRL_HS400_EN, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %29 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %108 [
    i32 130, label %31
    i32 129, label %31
    i32 128, label %31
    i32 131, label %31
    i32 135, label %31
    i32 134, label %31
    i32 132, label %39
    i32 136, label %39
    i32 133, label %80
    i32 137, label %107
  ]

31:                                               ; preds = %2, %2, %2, %2, %2, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  br label %111

39:                                               ; preds = %2, %2
  %40 = load i32, i32* @ESDHC_MIX_CTRL_DDREN, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %51 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.esdhc_platform_data*, %struct.esdhc_platform_data** %8, align 8
  %53 = getelementptr inbounds %struct.esdhc_platform_data, %struct.esdhc_platform_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %39
  %57 = load %struct.esdhc_platform_data*, %struct.esdhc_platform_data** %8, align 8
  %58 = getelementptr inbounds %struct.esdhc_platform_data, %struct.esdhc_platform_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ESDHC_DLL_OVERRIDE_VAL_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @ESDHC_DLL_OVERRIDE_EN_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %66 = call i32 @is_imx53_esdhc(%struct.pltfm_imx_data* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %56
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ESDHC_DLL_CTRL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  br label %79

79:                                               ; preds = %71, %39
  br label %111

80:                                               ; preds = %2
  %81 = load i32, i32* @ESDHC_MIX_CTRL_DDREN, align 4
  %82 = load i32, i32* @ESDHC_MIX_CTRL_HS400_EN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %88 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %94 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %98, align 8
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %102 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %99(%struct.sdhci_host* %100, i32 %103)
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %106 = call i32 @esdhc_set_strobe_dll(%struct.sdhci_host* %105)
  br label %111

107:                                              ; preds = %2
  br label %108

108:                                              ; preds = %2, %107
  %109 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %110 = call i32 @esdhc_reset_tuning(%struct.sdhci_host* %109)
  br label %111

111:                                              ; preds = %108, %80, %79, %31
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @esdhc_change_pinstate(%struct.sdhci_host* %112, i32 %113)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @is_imx53_esdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @esdhc_set_strobe_dll(%struct.sdhci_host*) #1

declare dso_local i32 @esdhc_reset_tuning(%struct.sdhci_host*) #1

declare dso_local i32 @esdhc_change_pinstate(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
