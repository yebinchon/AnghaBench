; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_readw_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_readw_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@ESDHC_VENDOR_SPEC = common dso_local global i64 0, align 8
@ESDHC_VENDOR_SPEC_VSELECT = common dso_local global i32 0, align 4
@SDHCI_CTRL_VDD_180 = common dso_local global i32 0, align 4
@ESDHC_FLAG_MAN_TUNING = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL = common dso_local global i64 0, align 8
@ESDHC_FLAG_STD_TUNING = common dso_local global i32 0, align 4
@SDHCI_AUTO_CMD_STATUS = common dso_local global i64 0, align 8
@ESDHC_MIX_CTRL_EXE_TUNE = common dso_local global i32 0, align 4
@SDHCI_CTRL_EXEC_TUNING = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL_SMPCLK_SEL = common dso_local global i32 0, align 4
@SDHCI_CTRL_TUNED_CLK = common dso_local global i32 0, align 4
@SDHCI_CTRL_PRESET_VAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL_SDHCI_MASK = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL_AC23EN = common dso_local global i32 0, align 4
@SDHCI_TRNS_AUTO_CMD23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @esdhc_readw_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_readw_le(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.pltfm_imx_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %6, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %14 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.pltfm_imx_data* %14, %struct.pltfm_imx_data** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, 2
  store i32 %23, i32* %5, align 4
  %24 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %25 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @SDHCI_SPEC_300, align 4
  store i32 %28, i32* %3, align 4
  br label %166

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %114

37:                                               ; preds = %30
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ESDHC_VENDOR_SPEC_VSELECT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %54 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %58 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ESDHC_FLAG_MAN_TUNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %9, align 4
  br label %89

72:                                               ; preds = %56
  %73 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %74 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ESDHC_FLAG_STD_TUNING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SDHCI_AUTO_CMD_STATUS, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %81, %72
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ESDHC_MIX_CTRL_EXE_TUNE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @ESDHC_MIX_CTRL_SMPCLK_SEL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %166

114:                                              ; preds = %30
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %158

121:                                              ; preds = %114
  %122 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %123 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %127 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl(i64 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @ESDHC_MIX_CTRL_SDHCI_MASK, align 4
  %134 = and i32 %132, %133
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @ESDHC_MIX_CTRL_AC23EN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %125
  %140 = load i32, i32* @ESDHC_MIX_CTRL_AC23EN, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* @SDHCI_TRNS_AUTO_CMD23, align 4
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %139, %125
  br label %156

148:                                              ; preds = %121
  %149 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %150 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = call i32 @readw(i64 %154)
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %148, %147
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %166

158:                                              ; preds = %114
  %159 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %160 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = call i32 @readw(i64 %164)
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %158, %156, %108, %27
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
