; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32, %struct.ath9k_hw_cal_data*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.ath_hw*, %struct.ath9k_channel*)* }
%struct.ath9k_channel = type { i64, i64, i32 }
%struct.ath9k_hw_cal_data = type { i64, i64, i32 }
%struct.ath_common = type { i64 }
%struct.timespec64 = type { i32 }

@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAPRD_PACKET_SENT = common dso_local global i32 0, align 4
@AR_DEF_ANTENNA = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_BASE_RATE_11B = common dso_local global i64 0, align 8
@AR_CFG_LED = common dso_local global i32 0, align 4
@AR_CFG_LED_ASSOC_CTL = common dso_local global i64 0, align 8
@AR_CFG_LED_MODE_SEL = common dso_local global i64 0, align 8
@AR_CFG_LED_BLINK_THRESH_SEL = common dso_local global i64 0, align 8
@AR_CFG_LED_BLINK_SLOW = common dso_local global i64 0, align 8
@AR9271_RESET_POWER_DOWN_CONTROL = common dso_local global i32 0, align 4
@AR9271_RADIO_RF_RST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Chip reset failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR9271_GATE_MAC_CTL = common dso_local global i64 0, align 8
@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_JTAG_DISABLE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RFSILENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ath9k-rfkill\00", align 1
@AR_MAC_PCU_LOGIC_ANALYZER = common dso_local global i32 0, align 4
@AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768 = common dso_local global i32 0, align 4
@AR_AHB_MODE = common dso_local global i32 0, align 4
@AR_AHB_CUSTOM_BURST_EN = common dso_local global i32 0, align 4
@AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_ENABLE_AGGWEP = common dso_local global i32 0, align 4
@AR_STA_ID1_PRESERVE_SEQNUM = common dso_local global i32 0, align 4
@AR_OBS = common dso_local global i32 0, align 4
@AR_RIMT = common dso_local global i32 0, align 4
@AR_RIMT_LAST = common dso_local global i32 0, align 4
@AR_RIMT_FIRST = common dso_local global i32 0, align 4
@AR_TIMT = common dso_local global i32 0, align 4
@AR_TIMT_LAST = common dso_local global i32 0, align 4
@AR_TIMT_FIRST = common dso_local global i32 0, align 4
@TXIQCAL_DONE = common dso_local global i32 0, align 4
@TXCLCAL_DONE = common dso_local global i32 0, align 4
@AR_CFG_SCLK_32KHZ = common dso_local global i64 0, align 8
@HW_PHYRESTART_CLC_WAR = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_LNADIV = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_LNADIV_FORCE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_reset(%struct.ath_hw* %0, %struct.ath9k_channel* %1, %struct.ath9k_hw_cal_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca %struct.ath9k_hw_cal_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.timespec64, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %7, align 8
  store %struct.ath9k_hw_cal_data* %2, %struct.ath9k_hw_cal_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %10, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %19, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %26 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %30 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %31 = call i32 @ar9003_mci_start_reset(%struct.ath_hw* %29, %struct.ath9k_channel* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %518

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %38 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %39 = call i32 @ath9k_hw_setpower(%struct.ath_hw* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %518

44:                                               ; preds = %36
  %45 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 12
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %56 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ath9k_hw_getnf(%struct.ath_hw* %55, i64 %58)
  br label %60

60:                                               ; preds = %54, %49, %44
  %61 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %62 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 11
  store %struct.ath9k_hw_cal_data* %61, %struct.ath9k_hw_cal_data** %63, align 8
  %64 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %65 = icmp ne %struct.ath9k_hw_cal_data* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %68 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %71 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %76 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %79 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74, %66
  %83 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %84 = call i32 @memset(%struct.ath9k_hw_cal_data* %83, i32 0, i32 24)
  %85 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %86 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %87 = call i32 @ath9k_init_nfcal_hist_buffer(%struct.ath_hw* %85, %struct.ath9k_channel* %86)
  br label %97

88:                                               ; preds = %74, %60
  %89 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %90 = icmp ne %struct.ath9k_hw_cal_data* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @PAPRD_PACKET_SENT, align 4
  %93 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %94 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %93, i32 0, i32 2
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %88
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %99 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %100 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %101 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ath9k_hw_getchan_noise(%struct.ath_hw* %98, %struct.ath9k_channel* %99, i32 %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %97
  %109 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %110 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %111 = call i32 @ath9k_hw_do_fastcc(%struct.ath_hw* %109, %struct.ath9k_channel* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %5, align 4
  br label %518

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %97
  %118 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %119 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @ar9003_mci_stop_bt(%struct.ath_hw* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %127 = load i32, i32* @AR_DEF_ANTENNA, align 4
  %128 = call i64 @REG_READ(%struct.ath_hw* %126, i32 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i64 1, i64* %12, align 8
  br label %132

132:                                              ; preds = %131, %125
  %133 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %134 = load i32, i32* @AR_STA_ID1, align 4
  %135 = call i64 @REG_READ(%struct.ath_hw* %133, i32 %134)
  %136 = load i64, i64* @AR_STA_ID1_BASE_RATE_11B, align 8
  %137 = and i64 %135, %136
  store i64 %137, i64* %13, align 8
  %138 = call i32 @ktime_get_raw_ts64(%struct.timespec64* %14)
  %139 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %140 = call i64 @ath9k_hw_gettsf64(%struct.ath_hw* %139)
  store i64 %140, i64* %16, align 8
  %141 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %142 = load i32, i32* @AR_CFG_LED, align 4
  %143 = call i64 @REG_READ(%struct.ath_hw* %141, i32 %142)
  %144 = load i64, i64* @AR_CFG_LED_ASSOC_CTL, align 8
  %145 = load i64, i64* @AR_CFG_LED_MODE_SEL, align 8
  %146 = or i64 %144, %145
  %147 = load i64, i64* @AR_CFG_LED_BLINK_THRESH_SEL, align 8
  %148 = or i64 %146, %147
  %149 = load i64, i64* @AR_CFG_LED_BLINK_SLOW, align 8
  %150 = or i64 %148, %149
  %151 = and i64 %143, %150
  store i64 %151, i64* %11, align 8
  %152 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %153 = call i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw* %152)
  %154 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %155 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  %156 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %157 = call i64 @AR_SREV_9271(%struct.ath_hw* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %132
  %160 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %161 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %166 = load i32, i32* @AR9271_RESET_POWER_DOWN_CONTROL, align 4
  %167 = load i64, i64* @AR9271_RADIO_RF_RST, align 8
  %168 = call i32 @REG_WRITE(%struct.ath_hw* %165, i32 %166, i64 %167)
  %169 = call i32 @udelay(i32 50)
  br label %170

170:                                              ; preds = %164, %159, %132
  %171 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %172 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %173 = call i32 @ath9k_hw_chip_reset(%struct.ath_hw* %171, %struct.ath9k_channel* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %177 = call i32 @ath_err(%struct.ath_common* %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %518

180:                                              ; preds = %170
  %181 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %182 = call i64 @AR_SREV_9271(%struct.ath_hw* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %180
  %185 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %186 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %191 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %190, i32 0, i32 2
  store i32 0, i32* %191, align 8
  %192 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %193 = load i32, i32* @AR9271_RESET_POWER_DOWN_CONTROL, align 4
  %194 = load i64, i64* @AR9271_GATE_MAC_CTL, align 8
  %195 = call i32 @REG_WRITE(%struct.ath_hw* %192, i32 %193, i64 %194)
  %196 = call i32 @udelay(i32 50)
  br label %197

197:                                              ; preds = %189, %184, %180
  %198 = call i64 @ath9k_hw_get_tsf_offset(%struct.timespec64* %14, i32* null)
  store i64 %198, i64* %15, align 8
  %199 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %200 = load i64, i64* %16, align 8
  %201 = load i64, i64* %15, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @ath9k_hw_settsf64(%struct.ath_hw* %199, i64 %202)
  %204 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %205 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %197
  %208 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %209 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %210 = load i32, i32* @AR_GPIO_JTAG_DISABLE, align 4
  %211 = call i32 @REG_SET_BIT(%struct.ath_hw* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %197
  %213 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %214 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %218 = call i32 @ar9002_hw_enable_async_fifo(%struct.ath_hw* %217)
  br label %219

219:                                              ; preds = %216, %212
  %220 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %221 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %222 = call i32 @ath9k_hw_process_ini(%struct.ath_hw* %220, %struct.ath9k_channel* %221)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i32, i32* %17, align 4
  store i32 %226, i32* %5, align 4
  br label %518

227:                                              ; preds = %219
  %228 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %229 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %230 = call i32 @ath9k_hw_set_rfmode(%struct.ath_hw* %228, %struct.ath9k_channel* %229)
  %231 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %232 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %236 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %237 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %236)
  %238 = load i32, i32* %19, align 4
  %239 = call i32 @ar9003_mci_reset(%struct.ath_hw* %235, i32 0, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %234, %227
  %241 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %242 = call i64 @AR_SREV_9100(%struct.ath_hw* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %246 = call i64 @ath9k_hw_gettsf64(%struct.ath_hw* %245)
  %247 = load i64, i64* %16, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = call i64 @ath9k_hw_get_tsf_offset(%struct.timespec64* %14, i32* null)
  store i64 %250, i64* %15, align 8
  %251 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %252 = load i64, i64* %16, align 8
  %253 = load i64, i64* %15, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @ath9k_hw_settsf64(%struct.ath_hw* %251, i64 %254)
  br label %256

256:                                              ; preds = %249, %244, %240
  %257 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %258 = call i32 @ath9k_hw_init_mfp(%struct.ath_hw* %257)
  %259 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %260 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %261 = call i32 @ath9k_hw_set_delta_slope(%struct.ath_hw* %259, %struct.ath9k_channel* %260)
  %262 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %263 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %264 = call i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw* %262, %struct.ath9k_channel* %263)
  %265 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %266 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %265, i32 0, i32 9
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %268, align 8
  %270 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %271 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %272 = call i32 %269(%struct.ath_hw* %270, %struct.ath9k_channel* %271)
  %273 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %274 = load i64, i64* %13, align 8
  %275 = load i64, i64* %12, align 8
  %276 = call i32 @ath9k_hw_reset_opmode(%struct.ath_hw* %273, i64 %274, i64 %275)
  %277 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %278 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %279 = call i32 @ath9k_hw_rf_set_freq(%struct.ath_hw* %277, %struct.ath9k_channel* %278)
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %256
  %283 = load i32, i32* %17, align 4
  store i32 %283, i32* %5, align 4
  br label %518

284:                                              ; preds = %256
  %285 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %286 = call i32 @ath9k_hw_set_clockrate(%struct.ath_hw* %285)
  %287 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %288 = call i32 @ath9k_hw_init_queues(%struct.ath_hw* %287)
  %289 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %290 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %291 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @ath9k_hw_init_interrupt_masks(%struct.ath_hw* %289, i32 %292)
  %294 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %295 = call i32 @ath9k_hw_ani_cache_ini_regs(%struct.ath_hw* %294)
  %296 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %297 = call i32 @ath9k_hw_init_qos(%struct.ath_hw* %296)
  %298 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %299 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @ATH9K_HW_CAP_RFSILENT, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %284
  %306 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %307 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %308 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @ath9k_hw_gpio_request_in(%struct.ath_hw* %306, i32 %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %311

311:                                              ; preds = %305, %284
  %312 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %313 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %312)
  %314 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %315 = call i64 @AR_SREV_9287(%struct.ath_hw* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %335

317:                                              ; preds = %311
  %318 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %319 = call i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %335

321:                                              ; preds = %317
  %322 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %323 = load i32, i32* @AR_MAC_PCU_LOGIC_ANALYZER, align 4
  %324 = load i32, i32* @AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768, align 4
  %325 = call i32 @REG_SET_BIT(%struct.ath_hw* %322, i32 %323, i32 %324)
  %326 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %327 = load i32, i32* @AR_AHB_MODE, align 4
  %328 = load i32, i32* @AR_AHB_CUSTOM_BURST_EN, align 4
  %329 = load i32, i32* @AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL, align 4
  %330 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %326, i32 %327, i32 %328, i32 %329)
  %331 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %332 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %333 = load i32, i32* @AR_PCU_MISC_MODE2_ENABLE_AGGWEP, align 4
  %334 = call i32 @REG_SET_BIT(%struct.ath_hw* %331, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %321, %317, %311
  %336 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %337 = load i32, i32* @AR_STA_ID1, align 4
  %338 = load i32, i32* @AR_STA_ID1_PRESERVE_SEQNUM, align 4
  %339 = call i32 @REG_SET_BIT(%struct.ath_hw* %336, i32 %337, i32 %338)
  %340 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %341 = call i32 @ath9k_hw_set_dma(%struct.ath_hw* %340)
  %342 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %343 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %335
  %346 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %347 = load i32, i32* @AR_OBS, align 4
  %348 = call i32 @REG_WRITE(%struct.ath_hw* %346, i32 %347, i64 8)
  br label %349

349:                                              ; preds = %345, %335
  %350 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %351 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %350)
  %352 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %353 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %349
  %358 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %359 = load i32, i32* @AR_RIMT, align 4
  %360 = load i32, i32* @AR_RIMT_LAST, align 4
  %361 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %362 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %358, i32 %359, i32 %360, i32 %364)
  %366 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %367 = load i32, i32* @AR_RIMT, align 4
  %368 = load i32, i32* @AR_RIMT_FIRST, align 4
  %369 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %370 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %366, i32 %367, i32 %368, i32 %372)
  br label %374

374:                                              ; preds = %357, %349
  %375 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %376 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %374
  %381 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %382 = load i32, i32* @AR_TIMT, align 4
  %383 = load i32, i32* @AR_TIMT_LAST, align 4
  %384 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %381, i32 %382, i32 %383, i32 300)
  %385 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %386 = load i32, i32* @AR_TIMT, align 4
  %387 = load i32, i32* @AR_TIMT_FIRST, align 4
  %388 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %385, i32 %386, i32 %387, i32 750)
  br label %389

389:                                              ; preds = %380, %374
  %390 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %391 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %390)
  %392 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %393 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %394 = call i32 @ath9k_hw_init_bb(%struct.ath_hw* %392, %struct.ath9k_channel* %393)
  %395 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %396 = icmp ne %struct.ath9k_hw_cal_data* %395, null
  br i1 %396, label %397, label %406

397:                                              ; preds = %389
  %398 = load i32, i32* @TXIQCAL_DONE, align 4
  %399 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %400 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %399, i32 0, i32 2
  %401 = call i32 @clear_bit(i32 %398, i32* %400)
  %402 = load i32, i32* @TXCLCAL_DONE, align 4
  %403 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %404 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %403, i32 0, i32 2
  %405 = call i32 @clear_bit(i32 %402, i32* %404)
  br label %406

406:                                              ; preds = %397, %389
  %407 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %408 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %409 = call i32 @ath9k_hw_init_cal(%struct.ath_hw* %407, %struct.ath9k_channel* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %406
  %412 = load i32, i32* @EIO, align 4
  %413 = sub nsw i32 0, %412
  store i32 %413, i32* %5, align 4
  br label %518

414:                                              ; preds = %406
  %415 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %416 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %427

418:                                              ; preds = %414
  %419 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %420 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %421 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %422 = call i64 @ar9003_mci_end_reset(%struct.ath_hw* %419, %struct.ath9k_channel* %420, %struct.ath9k_hw_cal_data* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %418
  %425 = load i32, i32* @EIO, align 4
  %426 = sub nsw i32 0, %425
  store i32 %426, i32* %5, align 4
  br label %518

427:                                              ; preds = %418, %414
  %428 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %429 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %428)
  %430 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %431 = call i32 @ath9k_hw_restore_chainmask(%struct.ath_hw* %430)
  %432 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %433 = load i32, i32* @AR_CFG_LED, align 4
  %434 = load i64, i64* %11, align 8
  %435 = load i64, i64* @AR_CFG_SCLK_32KHZ, align 8
  %436 = or i64 %434, %435
  %437 = call i32 @REG_WRITE(%struct.ath_hw* %432, i32 %433, i64 %436)
  %438 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %439 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %438)
  %440 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %441 = call i32 @ath9k_hw_gen_timer_start_tsf2(%struct.ath_hw* %440)
  %442 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %443 = call i32 @ath9k_hw_init_desc(%struct.ath_hw* %442)
  %444 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %445 = call i64 @ath9k_hw_btcoex_is_enabled(%struct.ath_hw* %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %427
  %448 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %449 = call i32 @ath9k_hw_btcoex_enable(%struct.ath_hw* %448)
  br label %450

450:                                              ; preds = %447, %427
  %451 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %452 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %450
  %455 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %456 = call i32 @ar9003_mci_check_bt(%struct.ath_hw* %455)
  br label %457

457:                                              ; preds = %454, %450
  %458 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %459 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %457
  %462 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %463 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %464 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %462, %struct.ath9k_channel* %463)
  %465 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %466 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %465, i32 1)
  br label %467

467:                                              ; preds = %461, %457
  %468 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %469 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %467
  %472 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %473 = call i32 @ar9003_hw_bb_watchdog_config(%struct.ath_hw* %472)
  br label %474

474:                                              ; preds = %471, %467
  %475 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %476 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %475, i32 0, i32 5
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @HW_PHYRESTART_CLC_WAR, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %474
  %483 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %484 = call i32 @ar9003_hw_disable_phy_restart(%struct.ath_hw* %483)
  br label %485

485:                                              ; preds = %482, %474
  %486 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %487 = call i32 @ath9k_hw_apply_gpio_override(%struct.ath_hw* %486)
  %488 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %489 = call i64 @AR_SREV_9565(%struct.ath_hw* %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %501

491:                                              ; preds = %485
  %492 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %493 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %501

496:                                              ; preds = %491
  %497 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %498 = load i32, i32* @AR_BTCOEX_WL_LNADIV, align 4
  %499 = load i32, i32* @AR_BTCOEX_WL_LNADIV_FORCE_ON, align 4
  %500 = call i32 @REG_SET_BIT(%struct.ath_hw* %497, i32 %498, i32 %499)
  br label %501

501:                                              ; preds = %496, %491, %485
  %502 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %503 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %502, i32 0, i32 4
  %504 = load %struct.TYPE_11__*, %struct.TYPE_11__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %517

509:                                              ; preds = %501
  %510 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %511 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %510)
  %512 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %513 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %512, i32 0, i32 3
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 0
  store i32 %511, i32* %514, align 4
  %515 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %516 = call i32 @ath9k_hw_set_radar_params(%struct.ath_hw* %515)
  br label %517

517:                                              ; preds = %509, %501
  store i32 0, i32* %5, align 4
  br label %518

518:                                              ; preds = %517, %424, %411, %282, %225, %175, %114, %41, %34
  %519 = load i32, i32* %5, align 4
  ret i32 %519
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_start_reset(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_setpower(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_getnf(%struct.ath_hw*, i64) #1

declare dso_local i32 @memset(%struct.ath9k_hw_cal_data*, i32, i32) #1

declare dso_local i32 @ath9k_init_nfcal_hist_buffer(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_getchan_noise(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath9k_hw_do_fastcc(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_stop_bt(%struct.ath_hw*, i32) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ktime_get_raw_ts64(%struct.timespec64*) #1

declare dso_local i64 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_chip_reset(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i64 @ath9k_hw_get_tsf_offset(%struct.timespec64*, i32*) #1

declare dso_local i32 @ath9k_hw_settsf64(%struct.ath_hw*, i64) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_enable_async_fifo(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_process_ini(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_rfmode(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_reset(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_mfp(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_delta_slope(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_reset_opmode(%struct.ath_hw*, i64, i64) #1

declare dso_local i32 @ath9k_hw_rf_set_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_clockrate(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_queues(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_interrupt_masks(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_ani_cache_ini_regs(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_qos(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_gpio_request_in(%struct.ath_hw*, i32, i8*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_dma(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_bb(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_init_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @ar9003_mci_end_reset(%struct.ath_hw*, %struct.ath9k_channel*, %struct.ath9k_hw_cal_data*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_restore_chainmask(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_gen_timer_start_tsf2(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_desc(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_btcoex_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_enable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_check_bt(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_bb_watchdog_config(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_disable_phy_restart(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_apply_gpio_override(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_radar_params(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
