; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_writel_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_writel_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_INT = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i64 0, align 8
@ESDHC_CTRL_D3CD = common dso_local global i32 0, align 4
@SDHCI_INT_ADMA_ERROR = common dso_local global i32 0, align 4
@ESDHC_INT_VENDOR_SPEC_DMA_ERR = common dso_local global i32 0, align 4
@ESDHC_FLAG_MULTIBLK_NO_INT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@ESDHC_VENDOR_SPEC = common dso_local global i64 0, align 8
@ESDHC_VENDOR_SPEC_SDIO_QUIRK = common dso_local global i32 0, align 4
@MULTIBLK_IN_PROCESS = common dso_local global i64 0, align 8
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@SDHCI_CMD_ABORTCMD = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i64 0, align 8
@WAIT_FOR_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @esdhc_writel_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_writel_le(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
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
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18, %3
  %27 = phi i1 [ true, %18 ], [ true, %3 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SDHCI_INT_CARD_INT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  %37 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %38 = call i32 @esdhc_is_usdhc(%struct.pltfm_imx_data* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SDHCI_HOST_CONTROL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @ESDHC_CTRL_D3CD, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDHCI_HOST_CONTROL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load i32, i32* @ESDHC_CTRL_D3CD, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SDHCI_HOST_CONTROL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  br label %68

68:                                               ; preds = %40, %36, %31
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SDHCI_INT_ADMA_ERROR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* @SDHCI_INT_ADMA_ERROR, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @ESDHC_INT_VENDOR_SPEC_DMA_ERR, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %73, %68
  br label %82

82:                                               ; preds = %81, %26
  %83 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %84 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ESDHC_FLAG_MULTIBLK_NO_INT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %95, %91, %82
  %101 = phi i1 [ false, %91 ], [ false, %82 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %145

105:                                              ; preds = %100
  %106 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %107 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl(i64 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @ESDHC_VENDOR_SPEC_SDIO_QUIRK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %118 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %124 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MULTIBLK_IN_PROCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %105
  %129 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %130 = shl i32 %129, 24
  %131 = load i32, i32* @SDHCI_CMD_ABORTCMD, align 4
  %132 = shl i32 %131, 16
  %133 = or i32 %130, %132
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %136 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SDHCI_TRANSFER_MODE, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  %141 = load i64, i64* @WAIT_FOR_INT, align 8
  %142 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %8, align 8
  %143 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %128, %105
  br label %145

145:                                              ; preds = %144, %100
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %148 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = call i32 @writel(i32 %146, i64 %152)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
