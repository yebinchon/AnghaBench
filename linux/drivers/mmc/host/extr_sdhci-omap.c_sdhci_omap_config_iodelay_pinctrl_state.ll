; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_config_iodelay_pinctrl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_config_iodelay_pinctrl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32, %struct.pinctrl_state**, %struct.pinctrl_state*, %struct.device*, %struct.sdhci_host* }
%struct.pinctrl_state = type { i32 }
%struct.device = type { i32 }
%struct.sdhci_host = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32 }

@SDHCI_OMAP_REQUIRE_IODELAY = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS200 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot get pinctrl\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"no pinctrl state for default mode\0A\00", align 1
@MMC_TIMING_LEGACY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"sdr104\00", align 1
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"ddr50\00", align 1
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"sdr50\00", align 1
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"sdr25\00", align 1
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR25 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"sdr12\00", align 1
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"ddr_1_8v\00", align 1
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"ddr_3_3v\00", align 1
@MMC_CAP_3_3V_DDR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_TIMING_SD_HS = common dso_local global i64 0, align 8
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"hs200_1_8v\00", align 1
@MMC_CAP2_HS200_1_8V_SDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_omap_host*)* @sdhci_omap_config_iodelay_pinctrl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_config_iodelay_pinctrl_state(%struct.sdhci_omap_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_omap_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pinctrl_state*, align 8
  %10 = alloca %struct.pinctrl_state**, align 8
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %3, align 8
  %11 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %14, i32 0, i32 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %15, align 8
  store %struct.sdhci_host* %16, %struct.sdhci_host** %5, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  store %struct.mmc_host* %19, %struct.mmc_host** %6, align 8
  %20 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 1
  store i32* %21, i32** %7, align 8
  %22 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 0
  store i32* %23, i32** %8, align 8
  %24 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SDHCI_OMAP_REQUIRE_IODELAY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %214

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* @MMC_TIMING_MMC_HS200, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.pinctrl_state** @devm_kcalloc(%struct.device* %32, i32 %34, i32 8, i32 %35)
  store %struct.pinctrl_state** %36, %struct.pinctrl_state*** %10, align 8
  %37 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %38 = icmp ne %struct.pinctrl_state** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %214

42:                                               ; preds = %31
  %43 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %43, i32 0, i32 3
  %45 = load %struct.device*, %struct.device** %44, align 8
  %46 = call %struct.pinctrl_state* @devm_pinctrl_get(%struct.device* %45)
  %47 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %47, i32 0, i32 2
  store %struct.pinctrl_state* %46, %struct.pinctrl_state** %48, align 8
  %49 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %50 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %49, i32 0, i32 2
  %51 = load %struct.pinctrl_state*, %struct.pinctrl_state** %50, align 8
  %52 = call i64 @IS_ERR(%struct.pinctrl_state* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %58 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %57, i32 0, i32 2
  %59 = load %struct.pinctrl_state*, %struct.pinctrl_state** %58, align 8
  %60 = call i32 @PTR_ERR(%struct.pinctrl_state* %59)
  store i32 %60, i32* %2, align 4
  br label %214

61:                                               ; preds = %42
  %62 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %63 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %62, i32 0, i32 2
  %64 = load %struct.pinctrl_state*, %struct.pinctrl_state** %63, align 8
  %65 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.pinctrl_state* %65, %struct.pinctrl_state** %9, align 8
  %66 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %67 = call i64 @IS_ERR(%struct.pinctrl_state* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %73 = call i32 @PTR_ERR(%struct.pinctrl_state* %72)
  store i32 %73, i32* %2, align 4
  br label %214

74:                                               ; preds = %61
  %75 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %76 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %77 = load i64, i64* @MMC_TIMING_LEGACY, align 8
  %78 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %76, i64 %77
  store %struct.pinctrl_state* %75, %struct.pinctrl_state** %78, align 8
  %79 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %82 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %80, i32 %81)
  store %struct.pinctrl_state* %82, %struct.pinctrl_state** %9, align 8
  %83 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %84 = call i64 @IS_ERR(%struct.pinctrl_state* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %88 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %89 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %90 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %88, i64 %89
  store %struct.pinctrl_state* %87, %struct.pinctrl_state** %90, align 8
  br label %91

91:                                               ; preds = %86, %74
  %92 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %95 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %93, i32 %94)
  store %struct.pinctrl_state* %95, %struct.pinctrl_state** %9, align 8
  %96 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %97 = call i64 @IS_ERR(%struct.pinctrl_state* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %91
  %100 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %101 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %102 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %103 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %101, i64 %102
  store %struct.pinctrl_state* %100, %struct.pinctrl_state** %103, align 8
  br label %104

104:                                              ; preds = %99, %91
  %105 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %108 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %106, i32 %107)
  store %struct.pinctrl_state* %108, %struct.pinctrl_state** %9, align 8
  %109 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %110 = call i64 @IS_ERR(%struct.pinctrl_state* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %114 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %115 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %116 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %114, i64 %115
  store %struct.pinctrl_state* %113, %struct.pinctrl_state** %116, align 8
  br label %117

117:                                              ; preds = %112, %104
  %118 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %121 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %119, i32 %120)
  store %struct.pinctrl_state* %121, %struct.pinctrl_state** %9, align 8
  %122 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %123 = call i64 @IS_ERR(%struct.pinctrl_state* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %127 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %128 = load i64, i64* @MMC_TIMING_UHS_SDR25, align 8
  %129 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %127, i64 %128
  store %struct.pinctrl_state* %126, %struct.pinctrl_state** %129, align 8
  br label %130

130:                                              ; preds = %125, %117
  %131 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %134 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %132, i32 %133)
  store %struct.pinctrl_state* %134, %struct.pinctrl_state** %9, align 8
  %135 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %136 = call i64 @IS_ERR(%struct.pinctrl_state* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %130
  %139 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %140 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %141 = load i64, i64* @MMC_TIMING_UHS_SDR12, align 8
  %142 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %140, i64 %141
  store %struct.pinctrl_state* %139, %struct.pinctrl_state** %142, align 8
  br label %143

143:                                              ; preds = %138, %130
  %144 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %147 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %145, i32 %146)
  store %struct.pinctrl_state* %147, %struct.pinctrl_state** %9, align 8
  %148 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %149 = call i64 @IS_ERR(%struct.pinctrl_state* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %143
  %152 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %153 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %154 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %155 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %153, i64 %154
  store %struct.pinctrl_state* %152, %struct.pinctrl_state** %155, align 8
  br label %170

156:                                              ; preds = %143
  %157 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* @MMC_CAP_3_3V_DDR, align 4
  %160 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %158, i32 %159)
  store %struct.pinctrl_state* %160, %struct.pinctrl_state** %9, align 8
  %161 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %162 = call i64 @IS_ERR(%struct.pinctrl_state* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %156
  %165 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %166 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %167 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %168 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %166, i64 %167
  store %struct.pinctrl_state* %165, %struct.pinctrl_state** %168, align 8
  br label %169

169:                                              ; preds = %164, %156
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %174 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %172, i32 %173)
  store %struct.pinctrl_state* %174, %struct.pinctrl_state** %9, align 8
  %175 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %176 = call i64 @IS_ERR(%struct.pinctrl_state* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %170
  %179 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %180 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %181 = load i64, i64* @MMC_TIMING_SD_HS, align 8
  %182 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %180, i64 %181
  store %struct.pinctrl_state* %179, %struct.pinctrl_state** %182, align 8
  br label %183

183:                                              ; preds = %178, %170
  %184 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %187 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %185, i32 %186)
  store %struct.pinctrl_state* %187, %struct.pinctrl_state** %9, align 8
  %188 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %189 = call i64 @IS_ERR(%struct.pinctrl_state* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %183
  %192 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %193 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %194 = load i64, i64* @MMC_TIMING_MMC_HS, align 8
  %195 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %193, i64 %194
  store %struct.pinctrl_state* %192, %struct.pinctrl_state** %195, align 8
  br label %196

196:                                              ; preds = %191, %183
  %197 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* @MMC_CAP2_HS200_1_8V_SDR, align 4
  %200 = call %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %198, i32 %199)
  store %struct.pinctrl_state* %200, %struct.pinctrl_state** %9, align 8
  %201 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %202 = call i64 @IS_ERR(%struct.pinctrl_state* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %196
  %205 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %206 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %207 = load i32, i32* @MMC_TIMING_MMC_HS200, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %206, i64 %208
  store %struct.pinctrl_state* %205, %struct.pinctrl_state** %209, align 8
  br label %210

210:                                              ; preds = %204, %196
  %211 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %10, align 8
  %212 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %213 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %212, i32 0, i32 1
  store %struct.pinctrl_state** %211, %struct.pinctrl_state*** %213, align 8
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %210, %69, %54, %39, %30
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.pinctrl_state** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state*, i8*) #1

declare dso_local %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
