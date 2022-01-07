; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_writeb_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_writeb_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { i64 }

@SDHCI_CTRL_LED = common dso_local global i32 0, align 4
@ESDHC_HOST_CONTROL_LE = common dso_local global i32 0, align 4
@SDHCI_CTRL_DMA_MASK = common dso_local global i32 0, align 4
@ESDHC_CTRL_BUSWIDTH_MASK = common dso_local global i32 0, align 4
@ESDHC_CTRL_D3CD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@ESDHC_SYSTEM_CONTROL = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL = common dso_local global i64 0, align 8
@ESDHC_MIX_CTRL_TUNING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @esdhc_writeb_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_writeb_le(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.pltfm_imx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %7, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %14 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.pltfm_imx_data* %14, %struct.pltfm_imx_data** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %57 [
    i32 129, label %16
    i32 130, label %17
    i32 128, label %45
  ]

16:                                               ; preds = %3
  br label %106

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SDHCI_CTRL_LED, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @ESDHC_HOST_CONTROL_LE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %25 = call i32 @is_imx25_esdhc(%struct.pltfm_imx_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %30 = and i32 %28, %29
  %31 = shl i32 %30, 5
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %27, %17
  %35 = load i32, i32* @ESDHC_CTRL_BUSWIDTH_MASK, align 4
  %36 = load i32, i32* @ESDHC_CTRL_D3CD, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 65535, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @esdhc_clrset_le(%struct.sdhci_host* %40, i32 %41, i32 %42, i32 %43)
  br label %106

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 130
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %3, %56
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @esdhc_clrset_le(%struct.sdhci_host* %58, i32 255, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %106

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %71 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %72 = call i32 @esdhc_clrset_le(%struct.sdhci_host* %70, i32 7, i32 7, i32 %71)
  %73 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %74 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %78 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ESDHC_MIX_CTRL_TUNING_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %87 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %93 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %76, %69
  br label %105

95:                                               ; preds = %64
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @esdhc_clrset_le(%struct.sdhci_host* %101, i32 255, i32 %102, i32 130)
  br label %104

104:                                              ; preds = %100, %95
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %16, %34, %105, %57
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @is_imx25_esdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @esdhc_clrset_le(%struct.sdhci_host*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
