; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pxav2.c_sdhci_pxav2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pxav2.c_sdhci_pxav2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.sdhci_pxa_platdata* }
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.of_device_id = type { i32 }
%struct.clk = type { i32, i32*, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [11 x i8] c"PXA-SDHCLK\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get io clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to enable io clock\0A\00", align 1
@SDHCI_QUIRK_BROKEN_ADMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_TIMEOUT_VAL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN = common dso_local global i32 0, align 4
@sdhci_pxav2_of_match = common dso_local global i32 0, align 4
@PXA_FLAG_CARD_PERMANENT = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@PXA_FLAG_SD_8_BIT_CAPABLE_SLOT = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@pxav2_sdhci_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_pxav2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_pxav2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_pxa_platdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sdhci_host*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %13, align 8
  store %struct.sdhci_pxa_platdata* %14, %struct.sdhci_pxa_platdata** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  store %struct.sdhci_host* null, %struct.sdhci_host** %7, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %17, i32* null, i32 0)
  store %struct.sdhci_host* %18, %struct.sdhci_host** %7, align 8
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %20 = call i64 @IS_ERR(%struct.sdhci_host* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.sdhci_host* %23)
  store i32 %24, i32* %2, align 4
  br label %172

25:                                               ; preds = %1
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %27 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %26)
  store %struct.sdhci_pltfm_host* %27, %struct.sdhci_pltfm_host** %4, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call %struct.sdhci_host* @devm_clk_get(%struct.device* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = bitcast %struct.sdhci_host* %29 to %struct.clk*
  store %struct.clk* %30, %struct.clk** %10, align 8
  %31 = load %struct.clk*, %struct.clk** %10, align 8
  %32 = bitcast %struct.clk* %31 to %struct.sdhci_host*
  %33 = call i64 @IS_ERR(%struct.sdhci_host* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.clk*, %struct.clk** %10, align 8
  %39 = bitcast %struct.clk* %38 to %struct.sdhci_host*
  %40 = call i32 @PTR_ERR(%struct.sdhci_host* %39)
  store i32 %40, i32* %9, align 4
  br label %168

41:                                               ; preds = %25
  %42 = load %struct.clk*, %struct.clk** %10, align 8
  %43 = bitcast %struct.clk* %42 to %struct.sdhci_host*
  %44 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %45 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %44, i32 0, i32 0
  store %struct.sdhci_host* %43, %struct.sdhci_host** %45, align 8
  %46 = load %struct.clk*, %struct.clk** %10, align 8
  %47 = bitcast %struct.clk* %46 to %struct.sdhci_host*
  %48 = call i32 @clk_prepare_enable(%struct.sdhci_host* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %168

55:                                               ; preds = %41
  %56 = load i32, i32* @SDHCI_QUIRK_BROKEN_ADMA, align 4
  %57 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @sdhci_pxav2_of_match, align 4
  %64 = call i32 @of_match_ptr(i32 %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call %struct.of_device_id* @of_match_device(i32 %64, %struct.device* %66)
  store %struct.of_device_id* %67, %struct.of_device_id** %8, align 8
  %68 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %69 = icmp ne %struct.of_device_id* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call %struct.sdhci_pxa_platdata* @pxav2_get_mmc_pdata(%struct.device* %71)
  store %struct.sdhci_pxa_platdata* %72, %struct.sdhci_pxa_platdata** %5, align 8
  br label %73

73:                                               ; preds = %70, %55
  %74 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %75 = icmp ne %struct.sdhci_pxa_platdata* %74, null
  br i1 %75, label %76, label %155

76:                                               ; preds = %73
  %77 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %78 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PXA_FLAG_CARD_PERMANENT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %86 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %91 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %83, %76
  %97 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %98 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PXA_FLAG_SD_8_BIT_CAPABLE_SLOT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %106 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %96
  %112 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %113 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %118 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %121 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %116, %111
  %125 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %126 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %131 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %134 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %129, %124
  %140 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %141 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %146 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %149 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %148, i32 0, i32 2
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %147
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %144, %139
  br label %155

155:                                              ; preds = %154, %73
  %156 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %157 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %156, i32 0, i32 1
  store i32* @pxav2_sdhci_ops, i32** %157, align 8
  %158 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %159 = call i32 @sdhci_add_host(%struct.sdhci_host* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %164

163:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %172

164:                                              ; preds = %162
  %165 = load %struct.clk*, %struct.clk** %10, align 8
  %166 = bitcast %struct.clk* %165 to %struct.sdhci_host*
  %167 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %166)
  br label %168

168:                                              ; preds = %164, %51, %35
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = call i32 @sdhci_pltfm_free(%struct.platform_device* %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %163, %22
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.sdhci_pxa_platdata* @pxav2_get_mmc_pdata(%struct.device*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
