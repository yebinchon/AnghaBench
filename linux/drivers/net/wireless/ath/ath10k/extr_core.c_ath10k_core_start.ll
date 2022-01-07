; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, %struct.TYPE_26__, i32, %struct.TYPE_25__, i32, %struct.TYPE_24__, %struct.ath10k_fw_components*, %struct.TYPE_22__*, %struct.TYPE_17__, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.ath10k_fw_components = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@ATH10K_FLAG_CRASH_FLUSH = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_NON_BMI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_SUPPORTS_SKIP_CLOCK_INIT = common dso_local global i32 0, align 4
@hi_skip_clock_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not write to skip_clock_init: %d\0A\00", align 1
@ATH10K_BUS_SDIO = common dso_local global i64 0, align 8
@ath10k_send_suspend_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not init HTC (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WMI attach failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to init htt: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to alloc htt tx: %d\0A\00", align 1
@WMI_SERVICE_RX_FULL_REORDER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to alloc htt rx: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"could not start HIF: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to connect to HTC: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to swap mailbox: %d\0A\00", align 1
@ATH10K_FIRMWARE_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to connect htt (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"could not connect wmi: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to start htc: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"wmi service ready event not received\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"firmware %s booted\0A\00", align 1
@WMI_SERVICE_EXT_RES_CFG_SUPPORT = common dso_local global i32 0, align 4
@WMI_10_4_PEER_STATS = common dso_local global i32 0, align 4
@WMI_10_4_VDEV_STATS = common dso_local global i32 0, align 4
@WMI_SERVICE_BSS_CHANNEL_INFO_64 = common dso_local global i32 0, align 4
@WMI_10_4_BSS_CHANNEL_INFO_64 = common dso_local global i32 0, align 4
@WMI_SERVICE_COEX_GPIO = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_BTCOEX_PARAM = common dso_local global i32 0, align 4
@WMI_10_4_COEX_GPIO_SUPPORT = common dso_local global i32 0, align 4
@WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY = common dso_local global i32 0, align 4
@WMI_10_4_TDLS_EXPLICIT_MODE_ONLY = common dso_local global i32 0, align 4
@WMI_SERVICE_TDLS_UAPSD_BUFFER_STA = common dso_local global i32 0, align 4
@WMI_10_4_TDLS_UAPSD_BUFFER_STA = common dso_local global i32 0, align 4
@WMI_SERVICE_TX_DATA_ACK_RSSI = common dso_local global i32 0, align 4
@WMI_10_4_TX_DATA_ACK_RSSI = common dso_local global i32 0, align 4
@WMI_SERVICE_REPORT_AIRTIME = common dso_local global i32 0, align 4
@WMI_10_4_REPORT_AIRTIME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [46 x i8] c"failed to send ext resource cfg command : %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"could not send WMI init command (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"wmi unified ready event not received\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"compat services failed: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c"failed to set base mac address: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"failed to reset rx filter: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"failed to refill htt rx ring: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"failed to setup htt: %d\0A\00", align 1
@fw_diag_log = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"set traget log mode faileds: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_core_start(%struct.ath10k* %0, i32 %1, %struct.ath10k_fw_components* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_fw_components*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath10k_fw_components* %2, %struct.ath10k_fw_components** %7, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 12
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* @ATH10K_FLAG_CRASH_FLUSH, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 11
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %7, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 7
  store %struct.ath10k_fw_components* %17, %struct.ath10k_fw_components** %19, align 8
  %20 = load i32, i32* @ATH10K_FW_FEATURE_NON_BMI, align 4
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 7
  %23 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %22, align 8
  %24 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_bit(i32 %20, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %89, label %29

29:                                               ; preds = %3
  %30 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %31 = call i32 @ath10k_bmi_start(%struct.ath10k* %30)
  %32 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %33 = call i64 @ath10k_init_configure_target(%struct.ath10k* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %515

38:                                               ; preds = %29
  %39 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %40 = call i32 @ath10k_download_cal_data(%struct.ath10k* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %515

44:                                               ; preds = %38
  %45 = load i32, i32* @ATH10K_FW_FEATURE_SUPPORTS_SKIP_CLOCK_INIT, align 4
  %46 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 7
  %48 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %47, align 8
  %49 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @test_bit(i32 %45, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %56 = load i32, i32* @hi_skip_clock_init, align 4
  %57 = call i32 @ath10k_bmi_write32(%struct.ath10k* %55, i32 %56, i32 1)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %515

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %67 = call i32 @ath10k_download_fw(%struct.ath10k* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %515

71:                                               ; preds = %65
  %72 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %73 = call i32 @ath10k_init_uart(%struct.ath10k* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %515

77:                                               ; preds = %71
  %78 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %79 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATH10K_BUS_SDIO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ath10k_init_sdio(%struct.ath10k* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %77
  br label %89

89:                                               ; preds = %88, %3
  %90 = load i32, i32* @ath10k_send_suspend_complete, align 4
  %91 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %96 = call i32 @ath10k_htc_init(%struct.ath10k* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %515

103:                                              ; preds = %89
  %104 = load i32, i32* @ATH10K_FW_FEATURE_NON_BMI, align 4
  %105 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %106 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %105, i32 0, i32 7
  %107 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %106, align 8
  %108 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @test_bit(i32 %104, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %103
  %114 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %115 = call i32 @ath10k_bmi_done(%struct.ath10k* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %515

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %122 = call i32 @ath10k_wmi_attach(%struct.ath10k* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  br label %515

129:                                              ; preds = %120
  %130 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %131 = call i32 @ath10k_htt_init(%struct.ath10k* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %512

138:                                              ; preds = %129
  %139 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %140 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %139, i32 0, i32 2
  %141 = call i32 @ath10k_htt_tx_start(%struct.TYPE_26__* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %512

148:                                              ; preds = %138
  %149 = load i32, i32* @WMI_SERVICE_RX_FULL_REORDER, align 4
  %150 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %151 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @test_bit(i32 %149, i32 %153)
  %155 = icmp ne i64 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %160 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 8
  %163 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %164 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %163, i32 0, i32 2
  %165 = call i32 @ath10k_htt_rx_alloc(%struct.TYPE_26__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %148
  %169 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  br label %508

172:                                              ; preds = %148
  %173 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %174 = call i32 @ath10k_hif_start(%struct.ath10k* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  br label %504

181:                                              ; preds = %172
  %182 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %183 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %182, i32 0, i32 9
  %184 = call i32 @ath10k_htc_wait_target(%struct.TYPE_17__* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  br label %501

191:                                              ; preds = %181
  %192 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %193 = call i32 @ath10k_hif_swap_mailbox(%struct.ath10k* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %198)
  br label %501

200:                                              ; preds = %191
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %206 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %205, i32 0, i32 2
  %207 = call i32 @ath10k_htt_connect(%struct.TYPE_26__* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %212 = load i32, i32* %8, align 4
  %213 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  br label %501

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %214, %200
  %216 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %217 = call i32 @ath10k_wmi_connect(%struct.ath10k* %216)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %222 = load i32, i32* %8, align 4
  %223 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  br label %501

224:                                              ; preds = %215
  %225 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %226 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %225, i32 0, i32 9
  %227 = call i32 @ath10k_htc_start(%struct.TYPE_17__* %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %232)
  br label %501

234:                                              ; preds = %224
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %234
  %239 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %240 = call i32 @ath10k_wmi_wait_for_service_ready(%struct.ath10k* %239)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %245 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %244, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %501

246:                                              ; preds = %238
  br label %247

247:                                              ; preds = %246, %234
  %248 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %249 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %250 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %251 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %250, i32 0, i32 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ath10k_dbg(%struct.ath10k* %248, i32 %249, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @WMI_SERVICE_EXT_RES_CFG_SUPPORT, align 4
  %259 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %260 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @test_bit(i32 %258, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %371

265:                                              ; preds = %247
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %371

269:                                              ; preds = %265
  store i32 0, i32* %9, align 4
  %270 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %271 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = load i32, i32* @WMI_10_4_PEER_STATS, align 4
  store i32 %274, i32* %9, align 4
  br label %275

275:                                              ; preds = %273, %269
  %276 = load i32, i32* @WMI_10_4_VDEV_STATS, align 4
  %277 = load i32, i32* %9, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* @WMI_SERVICE_BSS_CHANNEL_INFO_64, align 4
  %280 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %281 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %280, i32 0, i32 6
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @test_bit(i32 %279, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %275
  %287 = load i32, i32* @WMI_10_4_BSS_CHANNEL_INFO_64, align 4
  %288 = load i32, i32* %9, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %286, %275
  %291 = load i32, i32* @WMI_SERVICE_COEX_GPIO, align 4
  %292 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %293 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %292, i32 0, i32 6
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @test_bit(i32 %291, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %290
  %299 = load i32, i32* @ATH10K_FW_FEATURE_BTCOEX_PARAM, align 4
  %300 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %301 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %300, i32 0, i32 7
  %302 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %301, align 8
  %303 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @test_bit(i32 %299, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %298
  %309 = load i32, i32* @WMI_10_4_COEX_GPIO_SUPPORT, align 4
  %310 = load i32, i32* %9, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %9, align 4
  br label %312

312:                                              ; preds = %308, %298, %290
  %313 = load i32, i32* @WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY, align 4
  %314 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %315 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %314, i32 0, i32 6
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i64 @test_bit(i32 %313, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %312
  %321 = load i32, i32* @WMI_10_4_TDLS_EXPLICIT_MODE_ONLY, align 4
  %322 = load i32, i32* %9, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %9, align 4
  br label %324

324:                                              ; preds = %320, %312
  %325 = load i32, i32* @WMI_SERVICE_TDLS_UAPSD_BUFFER_STA, align 4
  %326 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %327 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %326, i32 0, i32 6
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i64 @test_bit(i32 %325, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %324
  %333 = load i32, i32* @WMI_10_4_TDLS_UAPSD_BUFFER_STA, align 4
  %334 = load i32, i32* %9, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %332, %324
  %337 = load i32, i32* @WMI_SERVICE_TX_DATA_ACK_RSSI, align 4
  %338 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %339 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %338, i32 0, i32 6
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @test_bit(i32 %337, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %336
  %345 = load i32, i32* @WMI_10_4_TX_DATA_ACK_RSSI, align 4
  %346 = load i32, i32* %9, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %9, align 4
  br label %348

348:                                              ; preds = %344, %336
  %349 = load i32, i32* @WMI_SERVICE_REPORT_AIRTIME, align 4
  %350 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %351 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %350, i32 0, i32 6
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i64 @test_bit(i32 %349, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %348
  %357 = load i32, i32* @WMI_10_4_REPORT_AIRTIME, align 4
  %358 = load i32, i32* %9, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %9, align 4
  br label %360

360:                                              ; preds = %356, %348
  %361 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %362 = load i32, i32* %9, align 4
  %363 = call i32 @ath10k_mac_ext_resource_config(%struct.ath10k* %361, i32 %362)
  store i32 %363, i32* %8, align 4
  %364 = load i32, i32* %8, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %360
  %367 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %368 = load i32, i32* %8, align 4
  %369 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %367, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %368)
  br label %501

370:                                              ; preds = %360
  br label %371

371:                                              ; preds = %370, %265, %247
  %372 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %373 = call i32 @ath10k_wmi_cmd_init(%struct.ath10k* %372)
  store i32 %373, i32* %8, align 4
  %374 = load i32, i32* %8, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %371
  %377 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %378 = load i32, i32* %8, align 4
  %379 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %377, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %378)
  br label %501

380:                                              ; preds = %371
  %381 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %382 = call i32 @ath10k_wmi_wait_for_unified_ready(%struct.ath10k* %381)
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %380
  %386 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %387 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %386, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  br label %501

388:                                              ; preds = %380
  %389 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %390 = call i32 @ath10k_core_compat_services(%struct.ath10k* %389)
  store i32 %390, i32* %8, align 4
  %391 = load i32, i32* %8, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %388
  %394 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %395 = load i32, i32* %8, align 4
  %396 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %394, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %395)
  br label %501

397:                                              ; preds = %388
  %398 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %399 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %400 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @ath10k_wmi_pdev_set_base_macaddr(%struct.ath10k* %398, i32 %401)
  store i32 %402, i32* %8, align 4
  %403 = load i32, i32* %8, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %397
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* @EOPNOTSUPP, align 4
  %408 = sub nsw i32 0, %407
  %409 = icmp ne i32 %406, %408
  br i1 %409, label %410, label %414

410:                                              ; preds = %405
  %411 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %412 = load i32, i32* %8, align 4
  %413 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %411, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %412)
  br label %501

414:                                              ; preds = %405, %397
  %415 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %416 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %415, i32 0, i32 4
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %434

420:                                              ; preds = %414
  %421 = load i32, i32* %6, align 4
  %422 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %423 = icmp eq i32 %421, %422
  br i1 %423, label %424, label %434

424:                                              ; preds = %420
  %425 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %426 = call i32 @ath10k_core_reset_rx_filter(%struct.ath10k* %425)
  store i32 %426, i32* %8, align 4
  %427 = load i32, i32* %8, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %431 = load i32, i32* %8, align 4
  %432 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %430, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %431)
  br label %501

433:                                              ; preds = %424
  br label %434

434:                                              ; preds = %433, %420, %414
  %435 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %436 = call i32 @ath10k_htt_rx_ring_refill(%struct.ath10k* %435)
  store i32 %436, i32* %8, align 4
  %437 = load i32, i32* %8, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %434
  %440 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %441 = load i32, i32* %8, align 4
  %442 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %440, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %441)
  br label %501

443:                                              ; preds = %434
  %444 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %445 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp sge i32 %446, 64
  br i1 %447, label %448, label %451

448:                                              ; preds = %443
  %449 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %450 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %449, i32 0, i32 1
  store i32 -1, i32* %450, align 4
  br label %461

451:                                              ; preds = %443
  %452 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %453 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = zext i32 %454 to i64
  %456 = shl i64 1, %455
  %457 = sub nsw i64 %456, 1
  %458 = trunc i64 %457 to i32
  %459 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %460 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %459, i32 0, i32 1
  store i32 %458, i32* %460, align 4
  br label %461

461:                                              ; preds = %451, %448
  %462 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %463 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %462, i32 0, i32 3
  %464 = call i32 @INIT_LIST_HEAD(i32* %463)
  %465 = load i32, i32* %6, align 4
  %466 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %479

468:                                              ; preds = %461
  %469 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %470 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %469, i32 0, i32 2
  %471 = call i32 @ath10k_htt_setup(%struct.TYPE_26__* %470)
  store i32 %471, i32* %8, align 4
  %472 = load i32, i32* %8, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %468
  %475 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %476 = load i32, i32* %8, align 4
  %477 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %475, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %476)
  br label %501

478:                                              ; preds = %468
  br label %479

479:                                              ; preds = %478, %461
  %480 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %481 = call i32 @ath10k_debug_start(%struct.ath10k* %480)
  store i32 %481, i32* %8, align 4
  %482 = load i32, i32* %8, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %479
  br label %501

485:                                              ; preds = %479
  %486 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %487 = load i32, i32* @fw_diag_log, align 4
  %488 = call i32 @ath10k_hif_set_target_log_mode(%struct.ath10k* %486, i32 %487)
  store i32 %488, i32* %8, align 4
  %489 = load i32, i32* %8, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %500

491:                                              ; preds = %485
  %492 = load i32, i32* %8, align 4
  %493 = load i32, i32* @EOPNOTSUPP, align 4
  %494 = sub nsw i32 0, %493
  %495 = icmp ne i32 %492, %494
  br i1 %495, label %496, label %500

496:                                              ; preds = %491
  %497 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %498 = load i32, i32* %8, align 4
  %499 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %497, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 %498)
  br label %501

500:                                              ; preds = %491, %485
  store i32 0, i32* %4, align 4
  br label %517

501:                                              ; preds = %496, %484, %474, %439, %429, %410, %393, %385, %376, %366, %243, %230, %220, %210, %196, %187
  %502 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %503 = call i32 @ath10k_hif_stop(%struct.ath10k* %502)
  br label %504

504:                                              ; preds = %501, %177
  %505 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %506 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %505, i32 0, i32 2
  %507 = call i32 @ath10k_htt_rx_free(%struct.TYPE_26__* %506)
  br label %508

508:                                              ; preds = %504, %168
  %509 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %510 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %509, i32 0, i32 2
  %511 = call i32 @ath10k_htt_tx_free(%struct.TYPE_26__* %510)
  br label %512

512:                                              ; preds = %508, %144, %134
  %513 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %514 = call i32 @ath10k_wmi_detach(%struct.ath10k* %513)
  br label %515

515:                                              ; preds = %512, %125, %118, %99, %76, %70, %60, %43, %35
  %516 = load i32, i32* %8, align 4
  store i32 %516, i32* %4, align 4
  br label %517

517:                                              ; preds = %515, %500
  %518 = load i32, i32* %4, align 4
  ret i32 %518
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_bmi_start(%struct.ath10k*) #1

declare dso_local i64 @ath10k_init_configure_target(%struct.ath10k*) #1

declare dso_local i32 @ath10k_download_cal_data(%struct.ath10k*) #1

declare dso_local i32 @ath10k_bmi_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_download_fw(%struct.ath10k*) #1

declare dso_local i32 @ath10k_init_uart(%struct.ath10k*) #1

declare dso_local i32 @ath10k_init_sdio(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_htc_init(%struct.ath10k*) #1

declare dso_local i32 @ath10k_bmi_done(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_attach(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_init(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_tx_start(%struct.TYPE_26__*) #1

declare dso_local i32 @ath10k_htt_rx_alloc(%struct.TYPE_26__*) #1

declare dso_local i32 @ath10k_hif_start(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htc_wait_target(%struct.TYPE_17__*) #1

declare dso_local i32 @ath10k_hif_swap_mailbox(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_connect(%struct.TYPE_26__*) #1

declare dso_local i32 @ath10k_wmi_connect(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htc_start(%struct.TYPE_17__*) #1

declare dso_local i32 @ath10k_wmi_wait_for_service_ready(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i64 @ath10k_peer_stats_enabled(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_ext_resource_config(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_wmi_cmd_init(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_wait_for_unified_ready(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_compat_services(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_pdev_set_base_macaddr(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_core_reset_rx_filter(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_rx_ring_refill(%struct.ath10k*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ath10k_htt_setup(%struct.TYPE_26__*) #1

declare dso_local i32 @ath10k_debug_start(%struct.ath10k*) #1

declare dso_local i32 @ath10k_hif_set_target_log_mode(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_hif_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_rx_free(%struct.TYPE_26__*) #1

declare dso_local i32 @ath10k_htt_tx_free(%struct.TYPE_26__*) #1

declare dso_local i32 @ath10k_wmi_detach(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
