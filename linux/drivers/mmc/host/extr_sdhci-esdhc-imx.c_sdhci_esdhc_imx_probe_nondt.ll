; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_sdhci_esdhc_imx_probe_nondt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_sdhci_esdhc_imx_probe_nondt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.pltfm_imx_data = type { %struct.esdhc_platform_data }
%struct.esdhc_platform_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no board data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ESDHC_WP_GPIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to request write-protect gpio!\0A\00", align 1
@MMC_CAP2_RO_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to request card-detect gpio!\0A\00", align 1
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_FORCE_1_BIT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.sdhci_host*, %struct.pltfm_imx_data*)* @sdhci_esdhc_imx_probe_nondt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_esdhc_imx_probe_nondt(%struct.platform_device* %0, %struct.sdhci_host* %1, %struct.pltfm_imx_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.pltfm_imx_data*, align 8
  %8 = alloca %struct.esdhc_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.sdhci_host* %1, %struct.sdhci_host** %6, align 8
  store %struct.pltfm_imx_data* %2, %struct.pltfm_imx_data** %7, align 8
  %10 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %11 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %10, i32 0, i32 0
  store %struct.esdhc_platform_data* %11, %struct.esdhc_platform_data** %8, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %13 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %22 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @mmc_dev(%struct.TYPE_6__* %23)
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %133

28:                                               ; preds = %3
  %29 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %30 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %29, i32 0, i32 0
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.esdhc_platform_data*
  %39 = bitcast %struct.esdhc_platform_data* %30 to i8*
  %40 = bitcast %struct.esdhc_platform_data* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.esdhc_platform_data*, %struct.esdhc_platform_data** %8, align 8
  %42 = getelementptr inbounds %struct.esdhc_platform_data, %struct.esdhc_platform_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ESDHC_WP_GPIO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %28
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %48 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @mmc_gpiod_request_ro(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32* null)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %55 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @mmc_dev(%struct.TYPE_6__* %56)
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %133

60:                                               ; preds = %46
  %61 = load i32, i32* @MMC_CAP2_RO_ACTIVE_HIGH, align 4
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %28
  %69 = load %struct.esdhc_platform_data*, %struct.esdhc_platform_data** %8, align 8
  %70 = getelementptr inbounds %struct.esdhc_platform_data, %struct.esdhc_platform_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %103 [
    i32 130, label %72
    i32 131, label %87
    i32 128, label %94
    i32 129, label %102
  ]

72:                                               ; preds = %68
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @mmc_gpiod_request_cd(%struct.TYPE_6__* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0, i32* null)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @mmc_dev(%struct.TYPE_6__* %82)
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %133

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %68, %86
  %88 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %91 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %103

94:                                               ; preds = %68
  %95 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %96 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %97 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 8
  br label %103

102:                                              ; preds = %68
  br label %103

103:                                              ; preds = %68, %102, %94, %87
  %104 = load %struct.esdhc_platform_data*, %struct.esdhc_platform_data** %8, align 8
  %105 = getelementptr inbounds %struct.esdhc_platform_data, %struct.esdhc_platform_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %126 [
    i32 8, label %107
    i32 4, label %117
    i32 1, label %125
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %109 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %112 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 8
  br label %132

117:                                              ; preds = %103
  %118 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %120 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 8
  br label %132

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %103, %125
  %127 = load i32, i32* @SDHCI_QUIRK_FORCE_1_BIT_DATA, align 4
  %128 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %129 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %117, %107
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %79, %53, %20
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mmc_gpiod_request_ro(%struct.TYPE_6__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @mmc_gpiod_request_cd(%struct.TYPE_6__*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
