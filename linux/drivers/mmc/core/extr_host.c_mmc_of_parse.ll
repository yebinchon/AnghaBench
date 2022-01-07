; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_host.c_mmc_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_host.c_mmc_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.device*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\22bus-width\22 property is missing, assuming 1 bit.\0A\00", align 1
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid \22bus-width\22 value %u!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"cd-inverted\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"cd-debounce-delay-ms\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"broken-cd\00", align 1
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Got CD GPIO\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@MMC_CAP2_CD_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"wp-inverted\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Got WP GPIO\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"disable-wp\00", align 1
@MMC_CAP2_NO_WRITE_PROTECT = common dso_local global i32 0, align 4
@MMC_CAP2_RO_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"cap-sd-highspeed\00", align 1
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"cap-mmc-highspeed\00", align 1
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"sd-uhs-sdr12\00", align 1
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"sd-uhs-sdr25\00", align 1
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"sd-uhs-sdr50\00", align 1
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"sd-uhs-sdr104\00", align 1
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"sd-uhs-ddr50\00", align 1
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"cap-power-off-card\00", align 1
@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"cap-mmc-hw-reset\00", align 1
@MMC_CAP_HW_RESET = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"cap-sdio-irq\00", align 1
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"full-pwr-cycle\00", align 1
@MMC_CAP2_FULL_PWR_CYCLE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"keep-power-in-suspend\00", align 1
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"enable-sdio-wakeup\00", align 1
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"mmc-ddr-3_3v\00", align 1
@MMC_CAP_3_3V_DDR = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"mmc-ddr-1_8v\00", align 1
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"mmc-ddr-1_2v\00", align 1
@MMC_CAP_1_2V_DDR = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [15 x i8] c"mmc-hs200-1_8v\00", align 1
@MMC_CAP2_HS200_1_8V_SDR = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"mmc-hs200-1_2v\00", align 1
@MMC_CAP2_HS200_1_2V_SDR = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [15 x i8] c"mmc-hs400-1_8v\00", align 1
@MMC_CAP2_HS400_1_8V = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"mmc-hs400-1_2v\00", align 1
@MMC_CAP2_HS400_1_2V = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"mmc-hs400-enhanced-strobe\00", align 1
@MMC_CAP2_HS400_ES = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"no-sdio\00", align 1
@MMC_CAP2_NO_SDIO = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"no-sd\00", align 1
@MMC_CAP2_NO_SD = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"no-mmc\00", align 1
@MMC_CAP2_NO_MMC = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [23 x i8] c"fixed-emmc-driver-type\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"can't use fixed driver type, media is removable\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"dsr\00", align 1
@.str.42 = private unnamed_addr constant [60 x i8] c"device tree specified broken value for DSR: 0x%x, ignoring\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"post-power-on-delay-ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_of_parse(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 7
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_fwnode(%struct.device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %476

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i64 @device_property_read_u32(%struct.device* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %5)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 7
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %47 [
    i32 8, label %34
    i32 4, label %40
    i32 1, label %46
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %32, %34
  %41 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %55

46:                                               ; preds = %32
  br label %55

47:                                               ; preds = %32
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %48, i32 0, i32 7
  %50 = load %struct.device*, %struct.device** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %476

55:                                               ; preds = %46, %40
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %57, i32 0, i32 1
  %59 = call i64 @device_property_read_u32(%struct.device* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %58)
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @device_property_read_bool(%struct.device* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %65 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %123

69:                                               ; preds = %55
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @device_property_read_bool(%struct.device* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %71, i32* %9, align 4
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i64 @device_property_read_u32(%struct.device* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 200, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @device_property_read_bool(%struct.device* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %82 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 %88, 1000
  %90 = call i32 @mmc_gpiod_request_cd(%struct.mmc_host* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0, i32 %89, i32* %10)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %94, i32 0, i32 7
  %96 = load %struct.device*, %struct.device** %95, align 8
  %97 = call i32 @dev_info(%struct.device* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %111

98:                                               ; preds = %86
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ENOSYS, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %476

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110, %93
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = xor i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i32, i32* @MMC_CAP2_CD_ACTIVE_HIGH, align 4
  %118 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %119 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %111
  br label %123

123:                                              ; preds = %122, %63
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @device_property_read_bool(%struct.device* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %125, i32* %11, align 4
  %126 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %127 = call i32 @mmc_gpiod_request_ro(%struct.mmc_host* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0, i32* %12)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %123
  %131 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %132 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %131, i32 0, i32 7
  %133 = load %struct.device*, %struct.device** %132, align 8
  %134 = call i32 @dev_info(%struct.device* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %148

135:                                              ; preds = %123
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @ENOENT, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @ENOSYS, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %476

147:                                              ; preds = %140, %135
  br label %148

148:                                              ; preds = %147, %130
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @device_property_read_bool(%struct.device* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* @MMC_CAP2_NO_WRITE_PROTECT, align 4
  %154 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %155 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %148
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = xor i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load i32, i32* @MMC_CAP2_RO_ACTIVE_HIGH, align 4
  %165 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %166 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = call i32 @device_property_read_bool(%struct.device* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %175 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %176 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %169
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = call i32 @device_property_read_bool(%struct.device* %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %185 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %186 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %179
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = call i32 @device_property_read_bool(%struct.device* %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %195 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %196 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %189
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = call i32 @device_property_read_bool(%struct.device* %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %199
  %204 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %205 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %206 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %203, %199
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = call i32 @device_property_read_bool(%struct.device* %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %215 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %216 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %209
  %220 = load %struct.device*, %struct.device** %4, align 8
  %221 = call i32 @device_property_read_bool(%struct.device* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %225 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %226 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %223, %219
  %230 = load %struct.device*, %struct.device** %4, align 8
  %231 = call i32 @device_property_read_bool(%struct.device* %230, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %235 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %236 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %233, %229
  %240 = load %struct.device*, %struct.device** %4, align 8
  %241 = call i32 @device_property_read_bool(%struct.device* %240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %245 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %246 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %243, %239
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = call i32 @device_property_read_bool(%struct.device* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load i32, i32* @MMC_CAP_HW_RESET, align 4
  %255 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %256 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %253, %249
  %260 = load %struct.device*, %struct.device** %4, align 8
  %261 = call i32 @device_property_read_bool(%struct.device* %260, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %265 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %266 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %263, %259
  %270 = load %struct.device*, %struct.device** %4, align 8
  %271 = call i32 @device_property_read_bool(%struct.device* %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %269
  %274 = load i32, i32* @MMC_CAP2_FULL_PWR_CYCLE, align 4
  %275 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %276 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %273, %269
  %280 = load %struct.device*, %struct.device** %4, align 8
  %281 = call i32 @device_property_read_bool(%struct.device* %280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %285 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %286 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %283, %279
  %290 = load %struct.device*, %struct.device** %4, align 8
  %291 = call i32 @device_property_read_bool(%struct.device* %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %289
  %294 = load %struct.device*, %struct.device** %4, align 8
  %295 = call i32 @device_property_read_bool(%struct.device* %294, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %293, %289
  %298 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %299 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %300 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %293
  %304 = load %struct.device*, %struct.device** %4, align 8
  %305 = call i32 @device_property_read_bool(%struct.device* %304, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = load i32, i32* @MMC_CAP_3_3V_DDR, align 4
  %309 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %310 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %307, %303
  %314 = load %struct.device*, %struct.device** %4, align 8
  %315 = call i32 @device_property_read_bool(%struct.device* %314, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %313
  %318 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %319 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %320 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %317, %313
  %324 = load %struct.device*, %struct.device** %4, align 8
  %325 = call i32 @device_property_read_bool(%struct.device* %324, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = load i32, i32* @MMC_CAP_1_2V_DDR, align 4
  %329 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %330 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %328
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %327, %323
  %334 = load %struct.device*, %struct.device** %4, align 8
  %335 = call i32 @device_property_read_bool(%struct.device* %334, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = load i32, i32* @MMC_CAP2_HS200_1_8V_SDR, align 4
  %339 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %340 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 8
  br label %343

343:                                              ; preds = %337, %333
  %344 = load %struct.device*, %struct.device** %4, align 8
  %345 = call i32 @device_property_read_bool(%struct.device* %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %343
  %348 = load i32, i32* @MMC_CAP2_HS200_1_2V_SDR, align 4
  %349 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %350 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 8
  br label %353

353:                                              ; preds = %347, %343
  %354 = load %struct.device*, %struct.device** %4, align 8
  %355 = call i32 @device_property_read_bool(%struct.device* %354, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = load i32, i32* @MMC_CAP2_HS400_1_8V, align 4
  %359 = load i32, i32* @MMC_CAP2_HS200_1_8V_SDR, align 4
  %360 = or i32 %358, %359
  %361 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %362 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 8
  br label %365

365:                                              ; preds = %357, %353
  %366 = load %struct.device*, %struct.device** %4, align 8
  %367 = call i32 @device_property_read_bool(%struct.device* %366, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %365
  %370 = load i32, i32* @MMC_CAP2_HS400_1_2V, align 4
  %371 = load i32, i32* @MMC_CAP2_HS200_1_2V_SDR, align 4
  %372 = or i32 %370, %371
  %373 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %374 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %369, %365
  %378 = load %struct.device*, %struct.device** %4, align 8
  %379 = call i32 @device_property_read_bool(%struct.device* %378, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0))
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %377
  %382 = load i32, i32* @MMC_CAP2_HS400_ES, align 4
  %383 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %384 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 8
  br label %387

387:                                              ; preds = %381, %377
  %388 = load %struct.device*, %struct.device** %4, align 8
  %389 = call i32 @device_property_read_bool(%struct.device* %388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %387
  %392 = load i32, i32* @MMC_CAP2_NO_SDIO, align 4
  %393 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %394 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  br label %397

397:                                              ; preds = %391, %387
  %398 = load %struct.device*, %struct.device** %4, align 8
  %399 = call i32 @device_property_read_bool(%struct.device* %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %397
  %402 = load i32, i32* @MMC_CAP2_NO_SD, align 4
  %403 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %404 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 8
  br label %407

407:                                              ; preds = %401, %397
  %408 = load %struct.device*, %struct.device** %4, align 8
  %409 = call i32 @device_property_read_bool(%struct.device* %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %407
  %412 = load i32, i32* @MMC_CAP2_NO_MMC, align 4
  %413 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %414 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %411, %407
  %418 = load %struct.device*, %struct.device** %4, align 8
  %419 = call i64 @device_property_read_u32(%struct.device* %418, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32* %6)
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %438

421:                                              ; preds = %417
  %422 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %423 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %421
  %429 = load i32, i32* %6, align 4
  %430 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %431 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %430, i32 0, i32 3
  store i32 %429, i32* %431, align 4
  br label %437

432:                                              ; preds = %421
  %433 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %434 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %433, i32 0, i32 7
  %435 = load %struct.device*, %struct.device** %434, align 8
  %436 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %435, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i64 0, i64 0))
  br label %437

437:                                              ; preds = %432, %428
  br label %438

438:                                              ; preds = %437, %417
  %439 = load %struct.device*, %struct.device** %4, align 8
  %440 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %441 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %440, i32 0, i32 5
  %442 = call i64 @device_property_read_u32(%struct.device* %439, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32* %441)
  %443 = icmp ne i64 %442, 0
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i32
  %446 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %447 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %446, i32 0, i32 4
  store i32 %445, i32* %447, align 8
  %448 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %449 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %448, i32 0, i32 4
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %468

452:                                              ; preds = %438
  %453 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %454 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 4
  %456 = and i32 %455, -65536
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %468

458:                                              ; preds = %452
  %459 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %460 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %459, i32 0, i32 7
  %461 = load %struct.device*, %struct.device** %460, align 8
  %462 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %463 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %462, i32 0, i32 5
  %464 = load i32, i32* %463, align 4
  %465 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %461, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.42, i64 0, i64 0), i32 %464)
  %466 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %467 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %466, i32 0, i32 4
  store i32 0, i32* %467, align 8
  br label %468

468:                                              ; preds = %458, %452, %438
  %469 = load %struct.device*, %struct.device** %4, align 8
  %470 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %471 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %470, i32 0, i32 6
  %472 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %471, i32 0, i32 0
  %473 = call i64 @device_property_read_u32(%struct.device* %469, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32* %472)
  %474 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %475 = call i32 @mmc_pwrseq_alloc(%struct.mmc_host* %474)
  store i32 %475, i32* %2, align 4
  br label %476

476:                                              ; preds = %468, %145, %108, %47, %22
  %477 = load i32, i32* %2, align 4
  ret i32 %477
}

declare dso_local i32 @dev_fwnode(%struct.device*) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @mmc_gpiod_request_cd(%struct.mmc_host*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mmc_gpiod_request_ro(%struct.mmc_host*, i8*, i32, i32, i32*) #1

declare dso_local i32 @mmc_pwrseq_alloc(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
