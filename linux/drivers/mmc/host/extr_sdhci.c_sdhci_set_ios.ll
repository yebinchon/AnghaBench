; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32, i32, i32 }
%struct.sdhci_host = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32, i32)* }
%struct.TYPE_5__ = type { i32, i32 }

@MMC_POWER_UNDEFINED = common dso_local global i32 0, align 4
@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@MMC_POWER_OFF = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@MMC_POWER_UP = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_PRESET_VALUE_BROKEN = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_NO_HISPD_BIT = common dso_local global i32 0, align 4
@MMC_TIMING_SD_HS = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS200 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_HISPD = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_DRV_TYPE_MASK = common dso_local global i32 0, align 4
@MMC_SET_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@SDHCI_CTRL_DRV_TYPE_A = common dso_local global i32 0, align 4
@MMC_SET_DRIVER_TYPE_B = common dso_local global i32 0, align 4
@SDHCI_CTRL_DRV_TYPE_B = common dso_local global i32 0, align 4
@MMC_SET_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@SDHCI_CTRL_DRV_TYPE_C = common dso_local global i32 0, align 4
@MMC_SET_DRIVER_TYPE_D = common dso_local global i32 0, align 4
@SDHCI_CTRL_DRV_TYPE_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: invalid driver type, default to driver type B\0A\00", align 1
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_PRESET_DRV_MASK = common dso_local global i32 0, align 4
@SDHCI_PRESET_DRV_SHIFT = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.sdhci_host* %11, %struct.sdhci_host** %5, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MMC_POWER_UNDEFINED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %519

18:                                               ; preds = %2
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_ERR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_POWER_OFF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %39, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %38, %32, %25
  br label %519

46:                                               ; preds = %18
  %47 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MMC_POWER_OFF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %54 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %55 = call i32 @sdhci_writel(%struct.sdhci_host* %53, i32 0, i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %57 = call i32 @sdhci_reinit(%struct.sdhci_host* %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %60 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SDHCI_SPEC_300, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %66 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MMC_POWER_UP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %72 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SDHCI_QUIRK2_PRESET_VALUE_BROKEN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %79 = call i32 @sdhci_enable_preset_value(%struct.sdhci_host* %78, i32 0)
  br label %80

80:                                               ; preds = %77, %70, %64, %58
  %81 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %90 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %174

93:                                               ; preds = %85, %80
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %95 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %94, i32 0, i32 6
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %97, align 8
  %99 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %100 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 %98(%struct.sdhci_host* %99, i32 %102)
  %104 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %108 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %110 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %173

115:                                              ; preds = %93
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %117 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %173

120:                                              ; preds = %115
  %121 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %122 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %121, i32 0, i32 9
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %129 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %128, i32 0, i32 9
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %132, 1000
  br label %139

134:                                              ; preds = %120
  %135 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %136 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 1000
  br label %139

139:                                              ; preds = %134, %127
  %140 = phi i32 [ %133, %127 ], [ %138, %134 ]
  %141 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %142 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %144 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %143, i32 0, i32 6
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %146, align 8
  %148 = icmp ne i32 (%struct.sdhci_host*)* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %139
  %150 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %151 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %150, i32 0, i32 6
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %153, align 8
  %155 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %156 = call i32 %154(%struct.sdhci_host* %155)
  br label %158

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %149
  %159 = phi i32 [ %156, %149 ], [ 134217728, %157 ]
  %160 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %161 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %160, i32 0, i32 9
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  store i32 %159, i32* %163, align 4
  %164 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %165 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %168 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %167, i32 0, i32 9
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %158, %115, %93
  br label %174

174:                                              ; preds = %173, %85
  %175 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %176 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %175, i32 0, i32 6
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = load i32 (%struct.sdhci_host*, i32, i32)*, i32 (%struct.sdhci_host*, i32, i32)** %178, align 8
  %180 = icmp ne i32 (%struct.sdhci_host*, i32, i32)* %179, null
  br i1 %180, label %181, label %195

181:                                              ; preds = %174
  %182 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %183 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %182, i32 0, i32 6
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load i32 (%struct.sdhci_host*, i32, i32)*, i32 (%struct.sdhci_host*, i32, i32)** %185, align 8
  %187 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %188 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %189 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %192 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = call i32 %186(%struct.sdhci_host* %187, i32 %190, i32 %193)
  br label %204

195:                                              ; preds = %174
  %196 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %197 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %198 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %201 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @sdhci_set_power(%struct.sdhci_host* %196, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %195, %181
  %205 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %206 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %205, i32 0, i32 6
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 4
  %209 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %208, align 8
  %210 = icmp ne i32 (%struct.sdhci_host*, i32)* %209, null
  br i1 %210, label %211, label %222

211:                                              ; preds = %204
  %212 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %213 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %212, i32 0, i32 6
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %215, align 8
  %217 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %218 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %219 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 %216(%struct.sdhci_host* %217, i32 %220)
  br label %222

222:                                              ; preds = %211, %204
  %223 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %224 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %223, i32 0, i32 6
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  %227 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %226, align 8
  %228 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %229 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %230 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 %227(%struct.sdhci_host* %228, i32 %231)
  %233 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %234 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %235 = call i32 @sdhci_readb(%struct.sdhci_host* %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %237 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @SDHCI_QUIRK_NO_HISPD_BIT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %306, label %242

242:                                              ; preds = %222
  %243 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %244 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @MMC_TIMING_SD_HS, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %296, label %248

248:                                              ; preds = %242
  %249 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %250 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @MMC_TIMING_MMC_HS, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %296, label %254

254:                                              ; preds = %248
  %255 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %256 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @MMC_TIMING_MMC_HS400, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %296, label %260

260:                                              ; preds = %254
  %261 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %262 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @MMC_TIMING_MMC_HS200, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %296, label %266

266:                                              ; preds = %260
  %267 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %268 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @MMC_TIMING_MMC_DDR52, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %296, label %272

272:                                              ; preds = %266
  %273 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %274 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @MMC_TIMING_UHS_SDR50, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %296, label %278

278:                                              ; preds = %272
  %279 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %280 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @MMC_TIMING_UHS_SDR104, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %296, label %284

284:                                              ; preds = %278
  %285 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %286 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %292 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @MMC_TIMING_UHS_SDR25, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290, %284, %278, %272, %266, %260, %254, %248, %242
  %297 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %298 = load i32, i32* %6, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %6, align 4
  br label %305

300:                                              ; preds = %290
  %301 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %302 = xor i32 %301, -1
  %303 = load i32, i32* %6, align 4
  %304 = and i32 %303, %302
  store i32 %304, i32* %6, align 4
  br label %305

305:                                              ; preds = %300, %296
  br label %306

306:                                              ; preds = %305, %222
  %307 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %308 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @SDHCI_SPEC_300, align 8
  %311 = icmp sge i64 %309, %310
  br i1 %311, label %312, label %501

312:                                              ; preds = %306
  %313 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %314 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %383, label %317

317:                                              ; preds = %312
  %318 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %321 = call i32 @sdhci_writeb(%struct.sdhci_host* %318, i32 %319, i32 %320)
  %322 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %323 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %324 = call i32 @sdhci_readw(%struct.sdhci_host* %322, i32 %323)
  store i32 %324, i32* %8, align 4
  %325 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_MASK, align 4
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %8, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %8, align 4
  %329 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %330 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @MMC_SET_DRIVER_TYPE_A, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %317
  %335 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_A, align 4
  %336 = load i32, i32* %8, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %8, align 4
  br label %378

338:                                              ; preds = %317
  %339 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %340 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @MMC_SET_DRIVER_TYPE_B, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %338
  %345 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_B, align 4
  %346 = load i32, i32* %8, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %8, align 4
  br label %377

348:                                              ; preds = %338
  %349 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %350 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @MMC_SET_DRIVER_TYPE_C, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_C, align 4
  %356 = load i32, i32* %8, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %8, align 4
  br label %376

358:                                              ; preds = %348
  %359 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %360 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @MMC_SET_DRIVER_TYPE_D, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %358
  %365 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_D, align 4
  %366 = load i32, i32* %8, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %8, align 4
  br label %375

368:                                              ; preds = %358
  %369 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %370 = call i32 @mmc_hostname(%struct.mmc_host* %369)
  %371 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_B, align 4
  %373 = load i32, i32* %8, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %368, %364
  br label %376

376:                                              ; preds = %375, %354
  br label %377

377:                                              ; preds = %376, %344
  br label %378

378:                                              ; preds = %377, %334
  %379 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %382 = call i32 @sdhci_writew(%struct.sdhci_host* %379, i32 %380, i32 %381)
  br label %409

383:                                              ; preds = %312
  %384 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %385 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %386 = call i32 @sdhci_readw(%struct.sdhci_host* %384, i32 %385)
  store i32 %386, i32* %7, align 4
  %387 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %388 = xor i32 %387, -1
  %389 = load i32, i32* %7, align 4
  %390 = and i32 %389, %388
  store i32 %390, i32* %7, align 4
  %391 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %394 = call i32 @sdhci_writew(%struct.sdhci_host* %391, i32 %392, i32 %393)
  %395 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %398 = call i32 @sdhci_writeb(%struct.sdhci_host* %395, i32 %396, i32 %397)
  %399 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %400 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %399, i32 0, i32 6
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 1
  %403 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %402, align 8
  %404 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %405 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %406 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = call i32 %403(%struct.sdhci_host* %404, i32 %407)
  br label %409

409:                                              ; preds = %383, %378
  %410 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %411 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %412 = call i32 @sdhci_readw(%struct.sdhci_host* %410, i32 %411)
  store i32 %412, i32* %7, align 4
  %413 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %414 = xor i32 %413, -1
  %415 = load i32, i32* %7, align 4
  %416 = and i32 %415, %414
  store i32 %416, i32* %7, align 4
  %417 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %418 = load i32, i32* %7, align 4
  %419 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %420 = call i32 @sdhci_writew(%struct.sdhci_host* %417, i32 %418, i32 %419)
  %421 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %422 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %421, i32 0, i32 6
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 2
  %425 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %424, align 8
  %426 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %427 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %428 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = call i32 %425(%struct.sdhci_host* %426, i32 %429)
  %431 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %432 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %435 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %434, i32 0, i32 7
  store i32 %433, i32* %435, align 8
  %436 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %437 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @SDHCI_QUIRK2_PRESET_VALUE_BROKEN, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %490, label %442

442:                                              ; preds = %409
  %443 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %444 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @MMC_TIMING_UHS_SDR12, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %478, label %448

448:                                              ; preds = %442
  %449 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %450 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @MMC_TIMING_UHS_SDR25, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %478, label %454

454:                                              ; preds = %448
  %455 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %456 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @MMC_TIMING_UHS_SDR50, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %478, label %460

460:                                              ; preds = %454
  %461 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %462 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @MMC_TIMING_UHS_SDR104, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %478, label %466

466:                                              ; preds = %460
  %467 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %468 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %478, label %472

472:                                              ; preds = %466
  %473 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %474 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @MMC_TIMING_MMC_DDR52, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %490

478:                                              ; preds = %472, %466, %460, %454, %448, %442
  %479 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %480 = call i32 @sdhci_enable_preset_value(%struct.sdhci_host* %479, i32 1)
  %481 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %482 = call i32 @sdhci_get_preset_value(%struct.sdhci_host* %481)
  store i32 %482, i32* %9, align 4
  %483 = load i32, i32* %9, align 4
  %484 = load i32, i32* @SDHCI_PRESET_DRV_MASK, align 4
  %485 = and i32 %483, %484
  %486 = load i32, i32* @SDHCI_PRESET_DRV_SHIFT, align 4
  %487 = ashr i32 %485, %486
  %488 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %489 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %488, i32 0, i32 1
  store i32 %487, i32* %489, align 4
  br label %490

490:                                              ; preds = %478, %472, %409
  %491 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %492 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %491, i32 0, i32 6
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 1
  %495 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %494, align 8
  %496 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %497 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %498 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = call i32 %495(%struct.sdhci_host* %496, i32 %499)
  br label %506

501:                                              ; preds = %306
  %502 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %505 = call i32 @sdhci_writeb(%struct.sdhci_host* %502, i32 %503, i32 %504)
  br label %506

506:                                              ; preds = %501, %490
  %507 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %508 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %519

513:                                              ; preds = %506
  %514 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %515 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %516 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %517 = or i32 %515, %516
  %518 = call i32 @sdhci_do_reset(%struct.sdhci_host* %514, i32 %517)
  br label %519

519:                                              ; preds = %17, %45, %513, %506
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_reinit(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_enable_preset_value(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_set_power(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_get_preset_value(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
