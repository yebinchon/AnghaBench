; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_sdhci_esdhc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_sdhci_esdhc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sdhci_host = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_esdhc = type { i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@sdhci_esdhc_le_pdata = common dso_local global i32 0, align 4
@sdhci_esdhc_be_pdata = common dso_local global i32 0, align 4
@esdhc_signal_voltage_switch = common dso_local global i32 0, align 4
@esdhc_execute_tuning = common dso_local global i32 0, align 4
@esdhc_hs400_prepare_ddr = common dso_local global i32 0, align 4
@soc_fixup_tuning = common dso_local global i32 0, align 4
@VENDOR_V_22 = common dso_local global i64 0, align 8
@SDHCI_QUIRK2_HOST_NO_CMD23 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_NO_BUSY_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fsl,p2020-esdhc\00", align 1
@SDHCI_QUIRK_RESET_AFTER_REQUEST = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_TIMEOUT_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fsl,p5040-esdhc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fsl,p5020-esdhc\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fsl,p4080-esdhc\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fsl,p1020-esdhc\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"fsl,t1040-esdhc\00", align 1
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"fsl,ls1021a-esdhc\00", align 1
@SDHCI_QUIRK2_BROKEN_HOST_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_esdhc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_esdhc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_esdhc*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i64 @of_property_read_bool(%struct.device_node* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %17, i32* @sdhci_esdhc_le_pdata, i32 24)
  store %struct.sdhci_host* %18, %struct.sdhci_host** %4, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %20, i32* @sdhci_esdhc_be_pdata, i32 24)
  store %struct.sdhci_host* %21, %struct.sdhci_host** %4, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %24 = call i64 @IS_ERR(%struct.sdhci_host* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.sdhci_host* %27)
  store i32 %28, i32* %2, align 4
  br label %175

29:                                               ; preds = %22
  %30 = load i32, i32* @esdhc_signal_voltage_switch, align 4
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @esdhc_execute_tuning, align 4
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @esdhc_hs400_prepare_ddr, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %43 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %46 = call i32 @esdhc_init(%struct.platform_device* %44, %struct.sdhci_host* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @sdhci_get_of_property(%struct.platform_device* %47)
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %50 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %49)
  store %struct.sdhci_pltfm_host* %50, %struct.sdhci_pltfm_host** %6, align 8
  %51 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %52 = call %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %51)
  store %struct.sdhci_esdhc* %52, %struct.sdhci_esdhc** %7, align 8
  %53 = load i32, i32* @soc_fixup_tuning, align 4
  %54 = call i64 @soc_device_match(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %29
  %57 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %58 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %62

59:                                               ; preds = %29
  %60 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %61 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %64 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VENDOR_V_22, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @SDHCI_QUIRK2_HOST_NO_CMD23, align 4
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %76 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VENDOR_V_22, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* @SDHCI_QUIRK_NO_BUSY_IRQ, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %84 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %74
  %88 = call i64 @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32, i32* @SDHCI_QUIRK_RESET_AFTER_REQUEST, align 4
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %93 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %90, %87
  %102 = load %struct.device_node*, %struct.device_node** %5, align 8
  %103 = call i64 @of_device_is_compatible(%struct.device_node* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %101
  %106 = load %struct.device_node*, %struct.device_node** %5, align 8
  %107 = call i64 @of_device_is_compatible(%struct.device_node* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load %struct.device_node*, %struct.device_node** %5, align 8
  %111 = call i64 @of_device_is_compatible(%struct.device_node* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load %struct.device_node*, %struct.device_node** %5, align 8
  %115 = call i64 @of_device_is_compatible(%struct.device_node* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.device_node*, %struct.device_node** %5, align 8
  %119 = call i64 @of_device_is_compatible(%struct.device_node* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117, %113, %109, %105, %101
  %122 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %125 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %117
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i64 @of_device_is_compatible(%struct.device_node* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %134 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %135 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %128
  %139 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %140 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  %141 = load %struct.device_node*, %struct.device_node** %5, align 8
  %142 = call i64 @of_device_is_compatible(%struct.device_node* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load i32, i32* @SDHCI_QUIRK2_BROKEN_HOST_CONTROL, align 4
  %146 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %147 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %151 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %144, %138
  %153 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %154 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @mmc_of_parse(i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %171

160:                                              ; preds = %152
  %161 = load %struct.device_node*, %struct.device_node** %5, align 8
  %162 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %163 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %162, i32 0, i32 1
  %164 = call i32 @mmc_of_parse_voltage(%struct.device_node* %161, i32* %163)
  %165 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %166 = call i32 @sdhci_add_host(%struct.sdhci_host* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %171

170:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %175

171:                                              ; preds = %169, %159
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = call i32 @sdhci_pltfm_free(%struct.platform_device* %172)
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %170, %26
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @esdhc_init(%struct.platform_device*, %struct.sdhci_host*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @soc_device_match(i32) #1

declare dso_local i64 @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @mmc_of_parse_voltage(%struct.device_node*, i32*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
