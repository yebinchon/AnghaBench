; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.tmio_mmc_data* }
%struct.tmio_mmc_data = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.tmio_mmc_dma_ops = type { i32 }
%struct.renesas_sdhi_quirks = type { i64, i64 }
%struct.renesas_sdhi_of_data = type { i32, i64, i32, i32, %struct.renesas_sdhi_scc*, i64, i32, i32, i32, i32, i32, i32 }
%struct.renesas_sdhi_scc = type { i64, i32, i32 }
%struct.soc_device_attribute = type { %struct.renesas_sdhi_quirks* }
%struct.tmio_mmc_dma = type { i32, i32, i32 }
%struct.tmio_mmc_host = type { i32, i32 (%struct.tmio_mmc_host*)*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i64, i32, %struct.TYPE_13__, %struct.tmio_mmc_dma_ops*, i32, i32, i32 (%struct.tmio_mmc_host*)*, i32 }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.renesas_sdhi = type { i32, i32, i64, %struct.tmio_mmc_host*, i8*, i8*, %struct.tmio_mmc_host*, %struct.tmio_mmc_host*, %struct.tmio_mmc_dma, %struct.tmio_mmc_data }
%struct.resource = type { i64 }

@sdhi_quirks_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot get clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@PINCTRL_STATE_DEFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"state_uhs\00", align 1
@renesas_sdhi_write16_hook = common dso_local global i32 0, align 4
@renesas_sdhi_set_clock = common dso_local global i32 0, align 4
@renesas_sdhi_multi_io_quirk = common dso_local global i32 0, align 4
@MMC_CAP2_HS400 = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_ES = common dso_local global i32 0, align 4
@TMIO_MMC_HAVE_4TAP_HS400 = common dso_local global i32 0, align 4
@MMC_CAP2_NO_WRITE_PROTECT = common dso_local global i32 0, align 4
@TMIO_MMC_MIN_RCAR2 = common dso_local global i32 0, align 4
@renesas_sdhi_card_busy = common dso_local global i32 0, align 4
@renesas_sdhi_start_signal_voltage_switch = common dso_local global i32 0, align 4
@TMIO_STAT_ALWAYS_SET_27 = common dso_local global i32 0, align 4
@MMC_CAP_HW_RESET = common dso_local global i32 0, align 4
@renesas_sdhi_hw_reset = common dso_local global i32 0, align 4
@shdma_chan_filter = common dso_local global i32 0, align 4
@renesas_sdhi_enable_dma = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@TMIO_MMC_BLKSZ_2BYTES = common dso_local global i32 0, align 4
@TMIO_MMC_SDIO_IRQ = common dso_local global i32 0, align 4
@TMIO_MMC_HAVE_CMD12_CTRL = common dso_local global i32 0, align 4
@TMIO_MMC_SDIO_STATUS_SETBITS = common dso_local global i32 0, align 4
@CTL_VERSION = common dso_local global i32 0, align 4
@SDHI_VER_GEN2_SDR104 = common dso_local global i64 0, align 8
@U16_MAX = common dso_local global i64 0, align 8
@SDHI_VER_GEN2_SDR50 = common dso_local global i64 0, align 8
@TMIO_MMC_HAVE_CBSY = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP2_HS200_1_8V_SDR = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_1_8V = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unknown clock rate for SDR104\0A\00", align 1
@renesas_sdhi_init_tuning = common dso_local global i32 0, align 4
@renesas_sdhi_prepare_tuning = common dso_local global i32 0, align 4
@renesas_sdhi_select_tuning = common dso_local global i32 0, align 4
@renesas_sdhi_check_scc_error = common dso_local global i32 0, align 4
@renesas_sdhi_prepare_hs400_tuning = common dso_local global i32 0, align 4
@renesas_sdhi_disable_scc = common dso_local global i32 0, align 4
@renesas_sdhi_hs400_complete = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@tmio_mmc_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"%s base at 0x%08lx max clock rate %u MHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @renesas_sdhi_probe(%struct.platform_device* %0, %struct.tmio_mmc_dma_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.tmio_mmc_dma_ops*, align 8
  %6 = alloca %struct.tmio_mmc_data*, align 8
  %7 = alloca %struct.renesas_sdhi_quirks*, align 8
  %8 = alloca %struct.renesas_sdhi_of_data*, align 8
  %9 = alloca %struct.soc_device_attribute*, align 8
  %10 = alloca %struct.tmio_mmc_data*, align 8
  %11 = alloca %struct.tmio_mmc_dma*, align 8
  %12 = alloca %struct.tmio_mmc_host*, align 8
  %13 = alloca %struct.renesas_sdhi*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.renesas_sdhi_scc*, align 8
  %21 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.tmio_mmc_dma_ops* %1, %struct.tmio_mmc_dma_ops** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %24, align 8
  store %struct.tmio_mmc_data* %25, %struct.tmio_mmc_data** %6, align 8
  store %struct.renesas_sdhi_quirks* null, %struct.renesas_sdhi_quirks** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call %struct.renesas_sdhi_of_data* @of_device_get_match_data(%struct.TYPE_15__* %27)
  store %struct.renesas_sdhi_of_data* %28, %struct.renesas_sdhi_of_data** %8, align 8
  %29 = load i32, i32* @sdhi_quirks_match, align 4
  %30 = call %struct.soc_device_attribute* @soc_device_match(i32 %29)
  store %struct.soc_device_attribute* %30, %struct.soc_device_attribute** %9, align 8
  %31 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %9, align 8
  %32 = icmp ne %struct.soc_device_attribute* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %9, align 8
  %35 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %34, i32 0, i32 0
  %36 = load %struct.renesas_sdhi_quirks*, %struct.renesas_sdhi_quirks** %35, align 8
  store %struct.renesas_sdhi_quirks* %36, %struct.renesas_sdhi_quirks** %7, align 8
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %18, align 8
  %41 = load %struct.resource*, %struct.resource** %18, align 8
  %42 = icmp ne %struct.resource* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %568

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.renesas_sdhi* @devm_kzalloc(%struct.TYPE_15__* %48, i32 112, i32 %49)
  store %struct.renesas_sdhi* %50, %struct.renesas_sdhi** %13, align 8
  %51 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %52 = icmp ne %struct.renesas_sdhi* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %568

56:                                               ; preds = %46
  %57 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %58 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %57, i32 0, i32 9
  store %struct.tmio_mmc_data* %58, %struct.tmio_mmc_data** %10, align 8
  %59 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %60 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %59, i32 0, i32 8
  store %struct.tmio_mmc_dma* %60, %struct.tmio_mmc_dma** %11, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i8* @devm_clk_get(%struct.TYPE_15__* %62, i8* null)
  %64 = bitcast i8* %63 to %struct.tmio_mmc_host*
  %65 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %66 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %65, i32 0, i32 7
  store %struct.tmio_mmc_host* %64, %struct.tmio_mmc_host** %66, align 8
  %67 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %68 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %67, i32 0, i32 7
  %69 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %68, align 8
  %70 = call i64 @IS_ERR(%struct.tmio_mmc_host* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %56
  %73 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %74 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %73, i32 0, i32 7
  %75 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %75)
  store i32 %76, i32* %16, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @dev_err(%struct.TYPE_15__* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %3, align 4
  br label %568

82:                                               ; preds = %56
  %83 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i8* @devm_clk_get(%struct.TYPE_15__* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %86 = bitcast i8* %85 to %struct.tmio_mmc_host*
  %87 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %88 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %87, i32 0, i32 6
  store %struct.tmio_mmc_host* %86, %struct.tmio_mmc_host** %88, align 8
  %89 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %90 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %89, i32 0, i32 6
  %91 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %90, align 8
  %92 = call i64 @IS_ERR(%struct.tmio_mmc_host* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %96 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %95, i32 0, i32 6
  store %struct.tmio_mmc_host* null, %struct.tmio_mmc_host** %96, align 8
  br label %97

97:                                               ; preds = %94, %82
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call %struct.tmio_mmc_host* @devm_pinctrl_get(%struct.TYPE_15__* %99)
  %101 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %102 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %101, i32 0, i32 3
  store %struct.tmio_mmc_host* %100, %struct.tmio_mmc_host** %102, align 8
  %103 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %104 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %103, i32 0, i32 3
  %105 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %104, align 8
  %106 = call i64 @IS_ERR(%struct.tmio_mmc_host* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %97
  %109 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %110 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %109, i32 0, i32 3
  %111 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %110, align 8
  %112 = load i8*, i8** @PINCTRL_STATE_DEFAULT, align 8
  %113 = call i8* @pinctrl_lookup_state(%struct.tmio_mmc_host* %111, i8* %112)
  %114 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %115 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %117 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %116, i32 0, i32 3
  %118 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %117, align 8
  %119 = call i8* @pinctrl_lookup_state(%struct.tmio_mmc_host* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %121 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %108, %97
  %123 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %124 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %125 = call %struct.tmio_mmc_host* @tmio_mmc_host_alloc(%struct.platform_device* %123, %struct.tmio_mmc_data* %124)
  store %struct.tmio_mmc_host* %125, %struct.tmio_mmc_host** %12, align 8
  %126 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %127 = call i64 @IS_ERR(%struct.tmio_mmc_host* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %131 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %130)
  store i32 %131, i32* %3, align 4
  br label %568

132:                                              ; preds = %122
  %133 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %134 = icmp ne %struct.renesas_sdhi_of_data* %133, null
  br i1 %134, label %135, label %187

135:                                              ; preds = %132
  %136 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %137 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %140 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %144 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %147 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %149 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %152 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %156 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %159 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %163 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %166 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %168 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %171 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %173 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %176 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %178 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.tmio_mmc_dma*, %struct.tmio_mmc_dma** %11, align 8
  %181 = getelementptr inbounds %struct.tmio_mmc_dma, %struct.tmio_mmc_dma* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %183 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %186 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %135, %132
  %188 = load i32, i32* @renesas_sdhi_write16_hook, align 4
  %189 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %190 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %189, i32 0, i32 19
  store i32 %188, i32* %190, align 8
  %191 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %192 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %191, i32 0, i32 1
  store i32 (%struct.tmio_mmc_host*)* @renesas_sdhi_clk_enable, i32 (%struct.tmio_mmc_host*)** %192, align 8
  %193 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %194 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %193, i32 0, i32 18
  store i32 (%struct.tmio_mmc_host*)* @renesas_sdhi_clk_disable, i32 (%struct.tmio_mmc_host*)** %194, align 8
  %195 = load i32, i32* @renesas_sdhi_set_clock, align 4
  %196 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %197 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %196, i32 0, i32 17
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @renesas_sdhi_multi_io_quirk, align 4
  %199 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %200 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %199, i32 0, i32 16
  store i32 %198, i32* %200, align 8
  %201 = load %struct.tmio_mmc_dma_ops*, %struct.tmio_mmc_dma_ops** %5, align 8
  %202 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %203 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %202, i32 0, i32 15
  store %struct.tmio_mmc_dma_ops* %201, %struct.tmio_mmc_dma_ops** %203, align 8
  %204 = load %struct.renesas_sdhi_quirks*, %struct.renesas_sdhi_quirks** %7, align 8
  %205 = icmp ne %struct.renesas_sdhi_quirks* %204, null
  br i1 %205, label %206, label %222

206:                                              ; preds = %187
  %207 = load %struct.renesas_sdhi_quirks*, %struct.renesas_sdhi_quirks** %7, align 8
  %208 = getelementptr inbounds %struct.renesas_sdhi_quirks, %struct.renesas_sdhi_quirks* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %206
  %212 = load i32, i32* @MMC_CAP2_HS400, align 4
  %213 = load i32, i32* @MMC_CAP2_HS400_ES, align 4
  %214 = or i32 %212, %213
  %215 = xor i32 %214, -1
  %216 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %217 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %216, i32 0, i32 2
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, %215
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %211, %206, %187
  %223 = load %struct.renesas_sdhi_quirks*, %struct.renesas_sdhi_quirks** %7, align 8
  %224 = icmp ne %struct.renesas_sdhi_quirks* %223, null
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load %struct.renesas_sdhi_quirks*, %struct.renesas_sdhi_quirks** %7, align 8
  %227 = getelementptr inbounds %struct.renesas_sdhi_quirks, %struct.renesas_sdhi_quirks* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load i32, i32* @TMIO_MMC_HAVE_4TAP_HS400, align 4
  %232 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %233 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %230, %225, %222
  %237 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %238 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %237, i32 0, i32 2
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = call i64 @mmc_can_gpio_ro(%struct.TYPE_16__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load i32, i32* @MMC_CAP2_NO_WRITE_PROTECT, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %246 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %242, %236
  %250 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %251 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @TMIO_MMC_MIN_RCAR2, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %296

256:                                              ; preds = %249
  %257 = load i32, i32* @renesas_sdhi_card_busy, align 4
  %258 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %259 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %258, i32 0, i32 14
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* @renesas_sdhi_start_signal_voltage_switch, align 4
  %262 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %263 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %262, i32 0, i32 14
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 4
  %265 = load i32, i32* @TMIO_STAT_ALWAYS_SET_27, align 4
  %266 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %267 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %266, i32 0, i32 13
  store i32 %265, i32* %267, align 8
  %268 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %269 = icmp ne %struct.renesas_sdhi_of_data* %268, null
  br i1 %269, label %270, label %295

270:                                              ; preds = %256
  %271 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %272 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %295

275:                                              ; preds = %270
  %276 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %277 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %276, i32 0, i32 12
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %280 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %278, %281
  %283 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %284 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %283, i32 0, i32 2
  store i64 %282, i64* %284, align 8
  %285 = load i32, i32* @MMC_CAP_HW_RESET, align 4
  %286 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %287 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %286, i32 0, i32 2
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %285
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* @renesas_sdhi_hw_reset, align 4
  %293 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %294 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %293, i32 0, i32 11
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %275, %270, %256
  br label %296

296:                                              ; preds = %295, %249
  %297 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %298 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %296
  %302 = load %struct.resource*, %struct.resource** %18, align 8
  %303 = call i32 @resource_size(%struct.resource* %302)
  %304 = icmp sgt i32 %303, 256
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %307 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %306, i32 0, i32 0
  store i32 1, i32* %307, align 8
  br label %308

308:                                              ; preds = %305, %301, %296
  %309 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %310 = icmp ne %struct.tmio_mmc_data* %309, null
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %313 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %314 = bitcast %struct.tmio_mmc_data* %312 to i8*
  %315 = bitcast %struct.tmio_mmc_data* %313 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %314, i8* align 8 %315, i64 40, i1 false)
  br label %316

316:                                              ; preds = %311, %308
  %317 = load i32, i32* @shdma_chan_filter, align 4
  %318 = load %struct.tmio_mmc_dma*, %struct.tmio_mmc_dma** %11, align 8
  %319 = getelementptr inbounds %struct.tmio_mmc_dma, %struct.tmio_mmc_dma* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* @renesas_sdhi_enable_dma, align 4
  %321 = load %struct.tmio_mmc_dma*, %struct.tmio_mmc_dma** %11, align 8
  %322 = getelementptr inbounds %struct.tmio_mmc_dma, %struct.tmio_mmc_dma* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 4
  %323 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %324 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %323, i32 0, i32 2
  store i32 1, i32* %324, align 8
  %325 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %326 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %327 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 4
  %330 = load i32, i32* @TMIO_MMC_BLKSZ_2BYTES, align 4
  %331 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %332 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 8
  %335 = load i32, i32* @TMIO_MMC_SDIO_IRQ, align 4
  %336 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %337 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load i32, i32* @TMIO_MMC_HAVE_CMD12_CTRL, align 4
  %341 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %342 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load i32, i32* @TMIO_MMC_SDIO_STATUS_SETBITS, align 4
  %346 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %347 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %351 = call i32 @renesas_sdhi_clk_enable(%struct.tmio_mmc_host* %350)
  store i32 %351, i32* %16, align 4
  %352 = load i32, i32* %16, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %316
  br label %564

355:                                              ; preds = %316
  %356 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %357 = load i32, i32* @CTL_VERSION, align 4
  %358 = call i64 @sd_ctrl_read16(%struct.tmio_mmc_host* %356, i32 %357)
  store i64 %358, i64* %19, align 8
  %359 = load i64, i64* %19, align 8
  %360 = load i64, i64* @SDHI_VER_GEN2_SDR104, align 8
  %361 = icmp slt i64 %359, %360
  br i1 %361, label %362, label %372

362:                                              ; preds = %355
  %363 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %364 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @U16_MAX, align 8
  %367 = icmp sgt i64 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %362
  %369 = load i64, i64* @U16_MAX, align 8
  %370 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %371 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %370, i32 0, i32 1
  store i64 %369, i64* %371, align 8
  br label %372

372:                                              ; preds = %368, %362, %355
  %373 = load i64, i64* %19, align 8
  %374 = load i64, i64* @SDHI_VER_GEN2_SDR50, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %383

376:                                              ; preds = %372
  %377 = load i32, i32* @TMIO_MMC_HAVE_CBSY, align 4
  %378 = xor i32 %377, -1
  %379 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %10, align 8
  %380 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = and i32 %381, %378
  store i32 %382, i32* %380, align 8
  br label %383

383:                                              ; preds = %376, %372
  %384 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %385 = call i32 @tmio_mmc_host_probe(%struct.tmio_mmc_host* %384)
  store i32 %385, i32* %16, align 4
  %386 = load i32, i32* %16, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %383
  br label %561

389:                                              ; preds = %383
  %390 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %391 = icmp ne %struct.renesas_sdhi_of_data* %390, null
  br i1 %391, label %392, label %494

392:                                              ; preds = %389
  %393 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %394 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %393, i32 0, i32 5
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %494

397:                                              ; preds = %392
  %398 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %399 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %398, i32 0, i32 2
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %417, label %406

406:                                              ; preds = %397
  %407 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %408 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %407, i32 0, i32 2
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @MMC_CAP2_HS200_1_8V_SDR, align 4
  %413 = load i32, i32* @MMC_CAP2_HS400_1_8V, align 4
  %414 = or i32 %412, %413
  %415 = and i32 %411, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %494

417:                                              ; preds = %406, %397
  %418 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %419 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %418, i32 0, i32 4
  %420 = load %struct.renesas_sdhi_scc*, %struct.renesas_sdhi_scc** %419, align 8
  store %struct.renesas_sdhi_scc* %420, %struct.renesas_sdhi_scc** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %421

421:                                              ; preds = %460, %417
  %422 = load i32, i32* %17, align 4
  %423 = load %struct.renesas_sdhi_of_data*, %struct.renesas_sdhi_of_data** %8, align 8
  %424 = getelementptr inbounds %struct.renesas_sdhi_of_data, %struct.renesas_sdhi_of_data* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = icmp slt i32 %422, %425
  br i1 %426, label %427, label %463

427:                                              ; preds = %421
  %428 = load %struct.renesas_sdhi_scc*, %struct.renesas_sdhi_scc** %20, align 8
  %429 = load i32, i32* %17, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.renesas_sdhi_scc, %struct.renesas_sdhi_scc* %428, i64 %430
  %432 = getelementptr inbounds %struct.renesas_sdhi_scc, %struct.renesas_sdhi_scc* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %448, label %435

435:                                              ; preds = %427
  %436 = load %struct.renesas_sdhi_scc*, %struct.renesas_sdhi_scc** %20, align 8
  %437 = load i32, i32* %17, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.renesas_sdhi_scc, %struct.renesas_sdhi_scc* %436, i64 %438
  %440 = getelementptr inbounds %struct.renesas_sdhi_scc, %struct.renesas_sdhi_scc* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %443 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %442, i32 0, i32 2
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = icmp eq i64 %441, %446
  br i1 %447, label %448, label %459

448:                                              ; preds = %435, %427
  %449 = load %struct.renesas_sdhi_scc*, %struct.renesas_sdhi_scc** %20, align 8
  %450 = getelementptr inbounds %struct.renesas_sdhi_scc, %struct.renesas_sdhi_scc* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %453 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %452, i32 0, i32 1
  store i32 %451, i32* %453, align 4
  %454 = load %struct.renesas_sdhi_scc*, %struct.renesas_sdhi_scc** %20, align 8
  %455 = getelementptr inbounds %struct.renesas_sdhi_scc, %struct.renesas_sdhi_scc* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %13, align 8
  %458 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %457, i32 0, i32 0
  store i32 %456, i32* %458, align 8
  store i32 1, i32* %21, align 4
  br label %463

459:                                              ; preds = %435
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %17, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %17, align 4
  br label %421

463:                                              ; preds = %448, %421
  %464 = load i32, i32* %21, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %472, label %466

466:                                              ; preds = %463
  %467 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %468 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %467, i32 0, i32 10
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 0
  %471 = call i32 @dev_warn(i32* %470, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %472

472:                                              ; preds = %466, %463
  %473 = load i32, i32* @renesas_sdhi_init_tuning, align 4
  %474 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %475 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %474, i32 0, i32 9
  store i32 %473, i32* %475, align 8
  %476 = load i32, i32* @renesas_sdhi_prepare_tuning, align 4
  %477 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %478 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %477, i32 0, i32 8
  store i32 %476, i32* %478, align 4
  %479 = load i32, i32* @renesas_sdhi_select_tuning, align 4
  %480 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %481 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %480, i32 0, i32 7
  store i32 %479, i32* %481, align 8
  %482 = load i32, i32* @renesas_sdhi_check_scc_error, align 4
  %483 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %484 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %483, i32 0, i32 6
  store i32 %482, i32* %484, align 4
  %485 = load i32, i32* @renesas_sdhi_prepare_hs400_tuning, align 4
  %486 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %487 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %486, i32 0, i32 5
  store i32 %485, i32* %487, align 8
  %488 = load i32, i32* @renesas_sdhi_disable_scc, align 4
  %489 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %490 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %489, i32 0, i32 4
  store i32 %488, i32* %490, align 4
  %491 = load i32, i32* @renesas_sdhi_hs400_complete, align 4
  %492 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %493 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %492, i32 0, i32 3
  store i32 %491, i32* %493, align 8
  br label %494

494:                                              ; preds = %472, %406, %392, %389
  %495 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %496 = call i32 @platform_irq_count(%struct.platform_device* %495)
  store i32 %496, i32* %14, align 4
  %497 = load i32, i32* %14, align 4
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %499, label %501

499:                                              ; preds = %494
  %500 = load i32, i32* %14, align 4
  store i32 %500, i32* %16, align 4
  br label %558

501:                                              ; preds = %494
  %502 = load i32, i32* %14, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %507, label %504

504:                                              ; preds = %501
  %505 = load i32, i32* @ENXIO, align 4
  %506 = sub nsw i32 0, %505
  store i32 %506, i32* %16, align 4
  br label %558

507:                                              ; preds = %501
  store i32 0, i32* %17, align 4
  br label %508

508:                                              ; preds = %534, %507
  %509 = load i32, i32* %17, align 4
  %510 = load i32, i32* %14, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %537

512:                                              ; preds = %508
  %513 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %514 = load i32, i32* %17, align 4
  %515 = call i32 @platform_get_irq(%struct.platform_device* %513, i32 %514)
  store i32 %515, i32* %15, align 4
  %516 = load i32, i32* %15, align 4
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %512
  %519 = load i32, i32* %15, align 4
  store i32 %519, i32* %16, align 4
  br label %558

520:                                              ; preds = %512
  %521 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %522 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %521, i32 0, i32 0
  %523 = load i32, i32* %15, align 4
  %524 = load i32, i32* @tmio_mmc_irq, align 4
  %525 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %526 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %525, i32 0, i32 0
  %527 = call i32 @dev_name(%struct.TYPE_15__* %526)
  %528 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %529 = call i32 @devm_request_irq(%struct.TYPE_15__* %522, i32 %523, i32 %524, i32 0, i32 %527, %struct.tmio_mmc_host* %528)
  store i32 %529, i32* %16, align 4
  %530 = load i32, i32* %16, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %520
  br label %558

533:                                              ; preds = %520
  br label %534

534:                                              ; preds = %533
  %535 = load i32, i32* %17, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %17, align 4
  br label %508

537:                                              ; preds = %508
  %538 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %539 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %538, i32 0, i32 0
  %540 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %541 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %540, i32 0, i32 2
  %542 = load %struct.TYPE_16__*, %struct.TYPE_16__** %541, align 8
  %543 = call i32 @mmc_hostname(%struct.TYPE_16__* %542)
  %544 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %545 = load i32, i32* @IORESOURCE_MEM, align 4
  %546 = call %struct.resource* @platform_get_resource(%struct.platform_device* %544, i32 %545, i32 0)
  %547 = getelementptr inbounds %struct.resource, %struct.resource* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %550 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %549, i32 0, i32 2
  %551 = load %struct.TYPE_16__*, %struct.TYPE_16__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 2
  %553 = load i64, i64* %552, align 8
  %554 = sdiv i64 %553, 1000000
  %555 = trunc i64 %554 to i32
  %556 = call i32 @dev_info(%struct.TYPE_15__* %539, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %543, i64 %548, i32 %555)
  %557 = load i32, i32* %16, align 4
  store i32 %557, i32* %3, align 4
  br label %568

558:                                              ; preds = %532, %518, %504, %499
  %559 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %560 = call i32 @tmio_mmc_host_remove(%struct.tmio_mmc_host* %559)
  br label %561

561:                                              ; preds = %558, %388
  %562 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %563 = call i32 @renesas_sdhi_clk_disable(%struct.tmio_mmc_host* %562)
  br label %564

564:                                              ; preds = %561, %354
  %565 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %12, align 8
  %566 = call i32 @tmio_mmc_host_free(%struct.tmio_mmc_host* %565)
  %567 = load i32, i32* %16, align 4
  store i32 %567, i32* %3, align 4
  br label %568

568:                                              ; preds = %564, %537, %129, %72, %53, %43
  %569 = load i32, i32* %3, align 4
  ret i32 %569
}

declare dso_local %struct.renesas_sdhi_of_data* @of_device_get_match_data(%struct.TYPE_15__*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.renesas_sdhi* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.tmio_mmc_host*) #1

declare dso_local i32 @PTR_ERR(%struct.tmio_mmc_host*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local %struct.tmio_mmc_host* @devm_pinctrl_get(%struct.TYPE_15__*) #1

declare dso_local i8* @pinctrl_lookup_state(%struct.tmio_mmc_host*, i8*) #1

declare dso_local %struct.tmio_mmc_host* @tmio_mmc_host_alloc(%struct.platform_device*, %struct.tmio_mmc_data*) #1

declare dso_local i32 @renesas_sdhi_clk_enable(%struct.tmio_mmc_host*) #1

declare dso_local i32 @renesas_sdhi_clk_disable(%struct.tmio_mmc_host*) #1

declare dso_local i64 @mmc_can_gpio_ro(%struct.TYPE_16__*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_host_probe(%struct.tmio_mmc_host*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.tmio_mmc_host*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*, i32, i64, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_16__*) #1

declare dso_local i32 @tmio_mmc_host_remove(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_host_free(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
