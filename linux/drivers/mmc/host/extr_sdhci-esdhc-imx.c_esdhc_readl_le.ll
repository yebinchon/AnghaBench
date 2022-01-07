; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_readl_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_readl_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@ESDHC_FLAG_HAVE_CAP1 = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_ADMA1 = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_ADMA2 = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES_1 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_DDR50 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR104 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR50 = common dso_local global i32 0, align 4
@SDHCI_USE_SDR50_TUNING = common dso_local global i32 0, align 4
@SDHCI_TUNING_MODE_3 = common dso_local global i32 0, align 4
@SDHCI_RETUNING_MODE_SHIFT = common dso_local global i32 0, align 4
@ESDHC_FLAG_HS400 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_HS400 = common dso_local global i32 0, align 4
@SDHCI_MAX_CURRENT = common dso_local global i32 0, align 4
@SDHCI_MAX_CURRENT_330_SHIFT = common dso_local global i32 0, align 4
@SDHCI_MAX_CURRENT_300_SHIFT = common dso_local global i32 0, align 4
@SDHCI_MAX_CURRENT_180_SHIFT = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@ESDHC_INT_VENDOR_SPEC_DMA_ERR = common dso_local global i32 0, align 4
@SDHCI_INT_ADMA_ERROR = common dso_local global i32 0, align 4
@WAIT_FOR_INT = common dso_local global i64 0, align 8
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@NO_CMD_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @esdhc_readl_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_readl_le(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.pltfm_imx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %5, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %12 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.pltfm_imx_data* %12, %struct.pltfm_imx_data** %6, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 1048575
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 251658240
  %32 = ashr i32 %31, 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 8388608
  %37 = shl i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %26, %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %40
  %48 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %49 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ESDHC_FLAG_HAVE_CAP1, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, -65536
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SDHCI_CAN_DO_ADMA1, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @SDHCI_CAN_DO_ADMA1, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @SDHCI_CAN_DO_ADMA2, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %64, %59
  br label %73

73:                                               ; preds = %72, %40
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @SDHCI_CAPABILITIES_1, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %152

80:                                               ; preds = %73
  %81 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %82 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %151

84:                                               ; preds = %80
  %85 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %86 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ESDHC_FLAG_HAVE_CAP1, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %95 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @readl(i64 %99)
  %101 = and i32 %100, 65535
  store i32 %101, i32* %7, align 4
  br label %114

102:                                              ; preds = %84
  %103 = load i32, i32* @SDHCI_SUPPORT_DDR50, align 4
  %104 = load i32, i32* @SDHCI_SUPPORT_SDR104, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SDHCI_SUPPORT_SDR50, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SDHCI_USE_SDR50_TUNING, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SDHCI_TUNING_MODE_3, align 4
  %111 = load i32, i32* @SDHCI_RETUNING_MODE_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %102, %93
  %115 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %116 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %115, i32 0, i32 3
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ESDHC_FLAG_HS400, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32, i32* @SDHCI_SUPPORT_HS400, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %123, %114
  %128 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %129 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @IS_ERR_OR_NULL(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %135 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @IS_ERR_OR_NULL(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %133, %127
  %140 = load i32, i32* @SDHCI_SUPPORT_SDR50, align 4
  %141 = load i32, i32* @SDHCI_SUPPORT_DDR50, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @SDHCI_SUPPORT_SDR104, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SDHCI_SUPPORT_HS400, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %139, %133
  br label %151

151:                                              ; preds = %150, %80
  br label %152

152:                                              ; preds = %151, %73
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @SDHCI_MAX_CURRENT, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %161 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  store i32 0, i32* %7, align 4
  %164 = load i32, i32* @SDHCI_MAX_CURRENT_330_SHIFT, align 4
  %165 = shl i32 255, %164
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* @SDHCI_MAX_CURRENT_300_SHIFT, align 4
  %169 = shl i32 255, %168
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* @SDHCI_MAX_CURRENT_180_SHIFT, align 4
  %173 = shl i32 255, %172
  %174 = load i32, i32* %7, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %163, %159, %152
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %225

183:                                              ; preds = %176
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @ESDHC_INT_VENDOR_SPEC_DMA_ERR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load i32, i32* @ESDHC_INT_VENDOR_SPEC_DMA_ERR, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* @SDHCI_INT_ADMA_ERROR, align 4
  %194 = load i32, i32* %7, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %188, %183
  %197 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %198 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @WAIT_FOR_INT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %196
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %202
  %209 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %7, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %214 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %215 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = call i32 @writel(i32 %213, i64 %219)
  %221 = load i64, i64* @NO_CMD_PENDING, align 8
  %222 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %223 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %208, %202, %196
  br label %225

225:                                              ; preds = %224, %176
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
