; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_sdhci_st_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_sdhci_st_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sdhci_host = type { i64, i32 }
%struct.st_mmc_platform_data = type { %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host* }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.clk = type { i64, i32 }
%struct.resource = type { i32 }
%struct.reset_control = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Peripheral clk not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"icn\00", align 1
@sdhci_st_pdata = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed sdhci_pltfm_init\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed mmc_of_parse\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to prepare clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to prepare icn clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"top-mmc-delay\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"FlashSS Top Dly registers not available\00", align 1
@SDHCI_HOST_VERSION = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [62 x i8] c"SDHCI ST Initialised: Host Version: 0x%x Vendor Version 0x%x\0A\00", align 1
@SDHCI_SPEC_VER_MASK = common dso_local global i32 0, align 4
@SDHCI_SPEC_VER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_VENDOR_VER_MASK = common dso_local global i32 0, align 4
@SDHCI_VENDOR_VER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_st_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_st_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.st_mmc_platform_data*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.reset_control*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.sdhci_host* @devm_clk_get(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = bitcast %struct.sdhci_host* %20 to %struct.clk*
  store %struct.clk* %21, %struct.clk** %8, align 8
  %22 = load %struct.clk*, %struct.clk** %8, align 8
  %23 = bitcast %struct.clk* %22 to %struct.sdhci_host*
  %24 = call i64 @IS_ERR(%struct.sdhci_host* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.clk*, %struct.clk** %8, align 8
  %31 = bitcast %struct.clk* %30 to %struct.sdhci_host*
  %32 = call i32 @PTR_ERR(%struct.sdhci_host* %31)
  store i32 %32, i32* %2, align 4
  br label %186

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call %struct.sdhci_host* @devm_clk_get(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %37 = bitcast %struct.sdhci_host* %36 to %struct.clk*
  store %struct.clk* %37, %struct.clk** %9, align 8
  %38 = load %struct.clk*, %struct.clk** %9, align 8
  %39 = bitcast %struct.clk* %38 to %struct.sdhci_host*
  %40 = call i64 @IS_ERR(%struct.sdhci_host* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store %struct.clk* null, %struct.clk** %9, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call %struct.sdhci_host* @devm_reset_control_get_exclusive(%struct.TYPE_7__* %45, i32* null)
  %47 = bitcast %struct.sdhci_host* %46 to %struct.reset_control*
  store %struct.reset_control* %47, %struct.reset_control** %13, align 8
  %48 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %49 = bitcast %struct.reset_control* %48 to %struct.sdhci_host*
  %50 = call i64 @IS_ERR(%struct.sdhci_host* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store %struct.reset_control* null, %struct.reset_control** %13, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %55 = bitcast %struct.reset_control* %54 to %struct.sdhci_host*
  %56 = call i32 @reset_control_deassert(%struct.sdhci_host* %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %58, i32* @sdhci_st_pdata, i32 24)
  store %struct.sdhci_host* %59, %struct.sdhci_host** %5, align 8
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %61 = call i64 @IS_ERR(%struct.sdhci_host* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_7__* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %68 = call i32 @PTR_ERR(%struct.sdhci_host* %67)
  store i32 %68, i32* %10, align 4
  br label %177

69:                                               ; preds = %57
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %71 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %70)
  store %struct.sdhci_pltfm_host* %71, %struct.sdhci_pltfm_host** %7, align 8
  %72 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %73 = call %struct.st_mmc_platform_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %72)
  store %struct.st_mmc_platform_data* %73, %struct.st_mmc_platform_data** %6, align 8
  %74 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %75 = bitcast %struct.reset_control* %74 to %struct.sdhci_host*
  %76 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %77 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %76, i32 0, i32 2
  store %struct.sdhci_host* %75, %struct.sdhci_host** %77, align 8
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %79 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @mmc_of_parse(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %174

88:                                               ; preds = %69
  %89 = load %struct.clk*, %struct.clk** %8, align 8
  %90 = bitcast %struct.clk* %89 to %struct.sdhci_host*
  %91 = call i32 @clk_prepare_enable(%struct.sdhci_host* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %174

98:                                               ; preds = %88
  %99 = load %struct.clk*, %struct.clk** %9, align 8
  %100 = bitcast %struct.clk* %99 to %struct.sdhci_host*
  %101 = call i32 @clk_prepare_enable(%struct.sdhci_host* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(%struct.TYPE_7__* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %170

108:                                              ; preds = %98
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load i32, i32* @IORESOURCE_MEM, align 4
  %111 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %109, i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store %struct.resource* %111, %struct.resource** %12, align 8
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.resource*, %struct.resource** %12, align 8
  %115 = call %struct.sdhci_host* @devm_ioremap_resource(%struct.TYPE_7__* %113, %struct.resource* %114)
  %116 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %117 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %116, i32 0, i32 1
  store %struct.sdhci_host* %115, %struct.sdhci_host** %117, align 8
  %118 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %119 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %118, i32 0, i32 1
  %120 = load %struct.sdhci_host*, %struct.sdhci_host** %119, align 8
  %121 = call i64 @IS_ERR(%struct.sdhci_host* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_warn(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %127 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %128 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %127, i32 0, i32 1
  store %struct.sdhci_host* null, %struct.sdhci_host** %128, align 8
  br label %129

129:                                              ; preds = %123, %108
  %130 = load %struct.clk*, %struct.clk** %8, align 8
  %131 = bitcast %struct.clk* %130 to %struct.sdhci_host*
  %132 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %133 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %132, i32 0, i32 0
  store %struct.sdhci_host* %131, %struct.sdhci_host** %133, align 8
  %134 = load %struct.clk*, %struct.clk** %9, align 8
  %135 = bitcast %struct.clk* %134 to %struct.sdhci_host*
  %136 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %137 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %136, i32 0, i32 0
  store %struct.sdhci_host* %135, %struct.sdhci_host** %137, align 8
  %138 = load %struct.device_node*, %struct.device_node** %4, align 8
  %139 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %140 = call i32 @st_mmcss_cconfig(%struct.device_node* %138, %struct.sdhci_host* %139)
  %141 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %142 = call i32 @sdhci_add_host(%struct.sdhci_host* %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %129
  br label %166

146:                                              ; preds = %129
  %147 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %148 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SDHCI_HOST_VERSION, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @readw_relaxed(i64 %151)
  store i32 %152, i32* %11, align 4
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @SDHCI_SPEC_VER_MASK, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @SDHCI_SPEC_VER_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @SDHCI_VENDOR_VER_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @SDHCI_VENDOR_VER_SHIFT, align 4
  %164 = ashr i32 %162, %163
  %165 = call i32 @dev_info(%struct.TYPE_7__* %154, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %159, i32 %164)
  store i32 0, i32* %2, align 4
  br label %186

166:                                              ; preds = %145
  %167 = load %struct.clk*, %struct.clk** %9, align 8
  %168 = bitcast %struct.clk* %167 to %struct.sdhci_host*
  %169 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %168)
  br label %170

170:                                              ; preds = %166, %104
  %171 = load %struct.clk*, %struct.clk** %8, align 8
  %172 = bitcast %struct.clk* %171 to %struct.sdhci_host*
  %173 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %172)
  br label %174

174:                                              ; preds = %170, %94, %84
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = call i32 @sdhci_pltfm_free(%struct.platform_device* %175)
  br label %177

177:                                              ; preds = %174, %63
  %178 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %179 = icmp ne %struct.reset_control* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %182 = bitcast %struct.reset_control* %181 to %struct.sdhci_host*
  %183 = call i32 @reset_control_assert(%struct.sdhci_host* %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %184, %146, %26
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_reset_control_get_exclusive(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @reset_control_deassert(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.st_mmc_platform_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.sdhci_host* @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @st_mmcss_cconfig(%struct.device_node*, %struct.sdhci_host*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

declare dso_local i32 @reset_control_assert(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
