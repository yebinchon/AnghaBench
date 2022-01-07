; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.sdhci_arasan_of_data* }
%struct.sdhci_arasan_of_data = type { i32, i32 }
%struct.clk = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sdhci_host = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_arasan_data = type { i32, %struct.sdhci_host*, %struct.sdhci_host*, i32, %struct.sdhci_host*, i32, %struct.sdhci_host* }

@sdhci_arasan_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"arasan,soc-ctl-syscon\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't get syscon: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clk_ahb\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"clk_ahb clock not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clk_xin\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"clk_xin clock not found.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to enable AHB clock.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unable to enable SD clock.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"xlnx,fails-without-test-cd\00", align 1
@SDHCI_ARASAN_QUIRK_FORCE_CDTEST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"xlnx,int-clock-stable-broken\00", align 1
@SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"rockchip,rk3399-sdhci-5.1\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"parsing dt failed (%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"arasan,sdhci-5.1\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"phy_arasan\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"No phy for arasan,sdhci-5.1.\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"phy_init err.\0A\00", align 1
@sdhci_arasan_hs400_enhanced_strobe = common dso_local global i32 0, align 4
@sdhci_arasan_voltage_switch = common dso_local global i32 0, align 4
@MMC_CAP2_CQE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"disable-cqe-dcmd\00", align 1
@MMC_CAP2_CQE_DCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_arasan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_arasan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.sdhci_host*, align 8
  %9 = alloca %struct.sdhci_pltfm_host*, align 8
  %10 = alloca %struct.sdhci_arasan_data*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.sdhci_arasan_of_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %11, align 8
  %17 = load i32, i32* @sdhci_arasan_of_match, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  %22 = call %struct.of_device_id* @of_match_node(i32 %17, %struct.device_node* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %5, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.sdhci_arasan_of_data*, %struct.sdhci_arasan_of_data** %24, align 8
  store %struct.sdhci_arasan_of_data* %25, %struct.sdhci_arasan_of_data** %12, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.sdhci_arasan_of_data*, %struct.sdhci_arasan_of_data** %12, align 8
  %28 = getelementptr inbounds %struct.sdhci_arasan_of_data, %struct.sdhci_arasan_of_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %26, i32 %29, i32 56)
  store %struct.sdhci_host* %30, %struct.sdhci_host** %8, align 8
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %32 = call i64 @IS_ERR(%struct.sdhci_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.sdhci_host* %35)
  store i32 %36, i32* %2, align 4
  br label %316

37:                                               ; preds = %1
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %39 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %38)
  store %struct.sdhci_pltfm_host* %39, %struct.sdhci_pltfm_host** %9, align 8
  %40 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %9, align 8
  %41 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %40)
  store %struct.sdhci_arasan_data* %41, %struct.sdhci_arasan_data** %10, align 8
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %43 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %44 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %43, i32 0, i32 6
  store %struct.sdhci_host* %42, %struct.sdhci_host** %44, align 8
  %45 = load %struct.sdhci_arasan_of_data*, %struct.sdhci_arasan_of_data** %12, align 8
  %46 = getelementptr inbounds %struct.sdhci_arasan_of_data, %struct.sdhci_arasan_of_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %49 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.device_node*, %struct.device_node** %52, align 8
  %54 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %54, %struct.device_node** %6, align 8
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = icmp ne %struct.device_node* %55, null
  br i1 %56, label %57, label %85

57:                                               ; preds = %37
  %58 = load %struct.device_node*, %struct.device_node** %6, align 8
  %59 = call %struct.sdhci_host* @syscon_node_to_regmap(%struct.device_node* %58)
  %60 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %61 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %60, i32 0, i32 4
  store %struct.sdhci_host* %59, %struct.sdhci_host** %61, align 8
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i32 @of_node_put(%struct.device_node* %62)
  %64 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %65 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %64, i32 0, i32 4
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %65, align 8
  %67 = call i64 @IS_ERR(%struct.sdhci_host* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %57
  %70 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %71 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %70, i32 0, i32 4
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %71, align 8
  %73 = call i32 @PTR_ERR(%struct.sdhci_host* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %69
  br label %312

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %37
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i8* @devm_clk_get(%struct.TYPE_9__* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %89 = bitcast i8* %88 to %struct.sdhci_host*
  %90 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %91 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %90, i32 0, i32 1
  store %struct.sdhci_host* %89, %struct.sdhci_host** %91, align 8
  %92 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %93 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %92, i32 0, i32 1
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %93, align 8
  %95 = call i64 @IS_ERR(%struct.sdhci_host* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %85
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %102 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %101, i32 0, i32 1
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %102, align 8
  %104 = call i32 @PTR_ERR(%struct.sdhci_host* %103)
  store i32 %104, i32* %4, align 4
  br label %312

105:                                              ; preds = %85
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i8* @devm_clk_get(%struct.TYPE_9__* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %109 = bitcast i8* %108 to %struct.clk*
  store %struct.clk* %109, %struct.clk** %7, align 8
  %110 = load %struct.clk*, %struct.clk** %7, align 8
  %111 = bitcast %struct.clk* %110 to %struct.sdhci_host*
  %112 = call i64 @IS_ERR(%struct.sdhci_host* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct.clk*, %struct.clk** %7, align 8
  %119 = bitcast %struct.clk* %118 to %struct.sdhci_host*
  %120 = call i32 @PTR_ERR(%struct.sdhci_host* %119)
  store i32 %120, i32* %4, align 4
  br label %312

121:                                              ; preds = %105
  %122 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %123 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %122, i32 0, i32 1
  %124 = load %struct.sdhci_host*, %struct.sdhci_host** %123, align 8
  %125 = call i32 @clk_prepare_enable(%struct.sdhci_host* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %312

132:                                              ; preds = %121
  %133 = load %struct.clk*, %struct.clk** %7, align 8
  %134 = bitcast %struct.clk* %133 to %struct.sdhci_host*
  %135 = call i32 @clk_prepare_enable(%struct.sdhci_host* %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %307

142:                                              ; preds = %132
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = call i32 @sdhci_get_of_property(%struct.platform_device* %143)
  %145 = load %struct.device_node*, %struct.device_node** %11, align 8
  %146 = call i64 @of_property_read_bool(%struct.device_node* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* @SDHCI_ARASAN_QUIRK_FORCE_CDTEST, align 4
  %150 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %151 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %148, %142
  %155 = load %struct.device_node*, %struct.device_node** %11, align 8
  %156 = call i64 @of_property_read_bool(%struct.device_node* %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* @SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE, align 4
  %160 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %161 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %154
  %165 = load %struct.clk*, %struct.clk** %7, align 8
  %166 = bitcast %struct.clk* %165 to %struct.sdhci_host*
  %167 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %9, align 8
  %168 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %167, i32 0, i32 0
  store %struct.sdhci_host* %166, %struct.sdhci_host** %168, align 8
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load %struct.device_node*, %struct.device_node** %171, align 8
  %173 = call i64 @of_device_is_compatible(%struct.device_node* %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %177 = call i32 @sdhci_arasan_update_clockmultiplier(%struct.sdhci_host* %176, i32 0)
  br label %178

178:                                              ; preds = %175, %164
  %179 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %180 = call i32 @sdhci_arasan_update_baseclkfreq(%struct.sdhci_host* %179)
  %181 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %182 = load %struct.clk*, %struct.clk** %7, align 8
  %183 = bitcast %struct.clk* %182 to %struct.sdhci_host*
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @sdhci_arasan_register_sdclk(%struct.sdhci_arasan_data* %181, %struct.sdhci_host* %183, %struct.TYPE_9__* %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  br label %303

190:                                              ; preds = %178
  %191 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %192 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %191, i32 0, i32 0
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = call i32 @mmc_of_parse(%struct.TYPE_10__* %193)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %190
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @EPROBE_DEFER, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = load i32, i32* %4, align 4
  %206 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %202, %197
  br label %299

208:                                              ; preds = %190
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  %211 = call %struct.sdhci_host* @ERR_PTR(i32 %210)
  %212 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %213 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %212, i32 0, i32 2
  store %struct.sdhci_host* %211, %struct.sdhci_host** %213, align 8
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load %struct.device_node*, %struct.device_node** %216, align 8
  %218 = call i64 @of_device_is_compatible(%struct.device_node* %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %280

220:                                              ; preds = %208
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call %struct.sdhci_host* @devm_phy_get(%struct.TYPE_9__* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %224 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %225 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %224, i32 0, i32 2
  store %struct.sdhci_host* %223, %struct.sdhci_host** %225, align 8
  %226 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %227 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %226, i32 0, i32 2
  %228 = load %struct.sdhci_host*, %struct.sdhci_host** %227, align 8
  %229 = call i64 @IS_ERR(%struct.sdhci_host* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %220
  %232 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %233 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %232, i32 0, i32 2
  %234 = load %struct.sdhci_host*, %struct.sdhci_host** %233, align 8
  %235 = call i32 @PTR_ERR(%struct.sdhci_host* %234)
  store i32 %235, i32* %4, align 4
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %236, i32 0, i32 0
  %238 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %237, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  br label %299

239:                                              ; preds = %220
  %240 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %241 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %240, i32 0, i32 2
  %242 = load %struct.sdhci_host*, %struct.sdhci_host** %241, align 8
  %243 = call i32 @phy_init(%struct.sdhci_host* %242)
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %4, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %239
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %299

250:                                              ; preds = %239
  %251 = load i32, i32* @sdhci_arasan_hs400_enhanced_strobe, align 4
  %252 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %253 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  store i32 %251, i32* %254, align 4
  %255 = load i32, i32* @sdhci_arasan_voltage_switch, align 4
  %256 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %257 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  store i32 %255, i32* %258, align 8
  %259 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %260 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load i32, i32* @MMC_CAP2_CQE, align 4
  %262 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %263 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %262, i32 0, i32 0
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %261
  store i32 %267, i32* %265, align 4
  %268 = load %struct.device_node*, %struct.device_node** %11, align 8
  %269 = call i64 @of_property_read_bool(%struct.device_node* %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %250
  %272 = load i32, i32* @MMC_CAP2_CQE_DCMD, align 4
  %273 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %274 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %273, i32 0, i32 0
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %272
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %271, %250
  br label %280

280:                                              ; preds = %279, %208
  %281 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %282 = call i32 @sdhci_arasan_add_host(%struct.sdhci_arasan_data* %281)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* %4, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %287

286:                                              ; preds = %280
  store i32 0, i32* %2, align 4
  br label %316

287:                                              ; preds = %285
  %288 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %289 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %288, i32 0, i32 2
  %290 = load %struct.sdhci_host*, %struct.sdhci_host** %289, align 8
  %291 = call i64 @IS_ERR(%struct.sdhci_host* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %287
  %294 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %295 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %294, i32 0, i32 2
  %296 = load %struct.sdhci_host*, %struct.sdhci_host** %295, align 8
  %297 = call i32 @phy_exit(%struct.sdhci_host* %296)
  br label %298

298:                                              ; preds = %293, %287
  br label %299

299:                                              ; preds = %298, %246, %231, %207
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = call i32 @sdhci_arasan_unregister_sdclk(%struct.TYPE_9__* %301)
  br label %303

303:                                              ; preds = %299, %189
  %304 = load %struct.clk*, %struct.clk** %7, align 8
  %305 = bitcast %struct.clk* %304 to %struct.sdhci_host*
  %306 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %305)
  br label %307

307:                                              ; preds = %303, %138
  %308 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %10, align 8
  %309 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %308, i32 0, i32 1
  %310 = load %struct.sdhci_host*, %struct.sdhci_host** %309, align 8
  %311 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %310)
  br label %312

312:                                              ; preds = %307, %128, %114, %97, %83
  %313 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %314 = call i32 @sdhci_pltfm_free(%struct.platform_device* %313)
  %315 = load i32, i32* %4, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %312, %286, %34
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.sdhci_host* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @sdhci_arasan_update_clockmultiplier(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_arasan_update_baseclkfreq(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_arasan_register_sdclk(%struct.sdhci_arasan_data*, %struct.sdhci_host*, %struct.TYPE_9__*) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_10__*) #1

declare dso_local %struct.sdhci_host* @ERR_PTR(i32) #1

declare dso_local %struct.sdhci_host* @devm_phy_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @phy_init(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_arasan_add_host(%struct.sdhci_arasan_data*) #1

declare dso_local i32 @phy_exit(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_arasan_unregister_sdclk(%struct.TYPE_9__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
