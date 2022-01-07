; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_hw* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_hw = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }

@ATH_OP_INVALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_DRAIN_TXQ_ALL_CMDID = common dso_local global i32 0, align 4
@WMI_STOP_RECV_CMDID = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"(%u MHz) -> (%u MHz), HT: %d, HT40: %d fastcc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to reset channel (%u Mhz) reset status %d\0A\00", align 1
@WMI_START_RECV_CMDID = common dso_local global i32 0, align 4
@WMI_SET_MODE_CMDID = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@ATH_OP_SCANNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH9K_HTC_TX_CLEANUP_INTERVAL = common dso_local global i32 0, align 4
@SPECTRAL_CHANSCAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ieee80211_hw*, %struct.ath9k_channel*)* @ath9k_htc_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_set_channel(%struct.ath9k_htc_priv* %0, %struct.ieee80211_hw* %1, %struct.ath9k_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca %struct.ath9k_hw_cal_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %6, align 8
  store %struct.ath9k_channel* %2, %struct.ath9k_channel** %7, align 8
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 6
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  store %struct.ath_hw* %20, %struct.ath_hw** %8, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %21)
  store %struct.ath_common* %22, %struct.ath_common** %9, align 8
  %23 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %24 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.ieee80211_conf* %26, %struct.ieee80211_conf** %10, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  store %struct.ieee80211_channel* %31, %struct.ieee80211_channel** %12, align 8
  %32 = load i32, i32* @ATH_OP_INVALID, align 4
  %33 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %34 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %196

40:                                               ; preds = %3
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %52 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %51)
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %54 = call i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %53)
  %55 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = call i32 @del_timer_sync(i32* %57)
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %60 = call i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv* %59)
  %61 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %62 = call i32 @WMI_CMD(i32 %61)
  %63 = load i32, i32* @WMI_DRAIN_TXQ_ALL_CMDID, align 4
  %64 = call i32 @WMI_CMD(i32 %63)
  %65 = load i32, i32* @WMI_STOP_RECV_CMDID, align 4
  %66 = call i32 @WMI_CMD(i32 %65)
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %68 = call i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv* %67)
  %69 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %70 = load i32, i32* @CONFIG, align 4
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %71, i32 0, i32 6
  %73 = load %struct.ath_hw*, %struct.ath_hw** %72, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %82 = call i32 @conf_is_ht(%struct.ieee80211_conf* %81)
  %83 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %84 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80, i32 %82, i32 %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %40
  br label %93

90:                                               ; preds = %40
  %91 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %92 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %91, i32 0, i32 5
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi %struct.ath9k_hw_cal_data* [ null, %89 ], [ %92, %90 ]
  store %struct.ath9k_hw_cal_data* %94, %struct.ath9k_hw_cal_data** %13, align 8
  %95 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %96 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %97 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @ath9k_hw_reset(%struct.ath_hw* %95, %struct.ath9k_channel* %96, %struct.ath9k_hw_cal_data* %97, i32 %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %104 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %105 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @ath_err(%struct.ath_common* %103, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %192

109:                                              ; preds = %93
  %110 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %111 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %112 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %115 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %118 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %117, i32 0, i32 3
  %119 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %110, i32 %113, i32 %116, i32* %118)
  %120 = load i32, i32* @WMI_START_RECV_CMDID, align 4
  %121 = call i32 @WMI_CMD(i32 %120)
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  br label %192

125:                                              ; preds = %109
  %126 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %127 = call i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv* %126)
  %128 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %129 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %130 = call i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv* %128, %struct.ath9k_channel* %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @cpu_to_be16(i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* @WMI_SET_MODE_CMDID, align 4
  %134 = call i32 @WMI_CMD_BUF(i32 %133, i32* %15)
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %192

138:                                              ; preds = %125
  %139 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %140 = call i32 @WMI_CMD(i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %192

144:                                              ; preds = %138
  %145 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %146 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @htc_start(i32 %147)
  %149 = load i32, i32* @ATH_OP_SCANNING, align 4
  %150 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %151 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %150, i32 0, i32 0
  %152 = call i64 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %144
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %156 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %164 = call i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv* %163)
  br label %165

165:                                              ; preds = %162, %154, %144
  %166 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %167 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i64, i64* @jiffies, align 8
  %170 = load i32, i32* @ATH9K_HTC_TX_CLEANUP_INTERVAL, align 4
  %171 = call i64 @msecs_to_jiffies(i32 %170)
  %172 = add nsw i64 %169, %171
  %173 = call i32 @mod_timer(i32* %168, i64 %172)
  %174 = load i32, i32* @ATH_OP_SCANNING, align 4
  %175 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %176 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %175, i32 0, i32 0
  %177 = call i64 @test_bit(i32 %174, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %165
  %180 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %181 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @SPECTRAL_CHANSCAN, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %188 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %189 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %188, i32 0, i32 0
  %190 = call i32 @ath9k_cmn_spectral_scan_trigger(%struct.ath_common* %187, %struct.TYPE_12__* %189)
  br label %191

191:                                              ; preds = %186, %179, %165
  br label %192

192:                                              ; preds = %191, %143, %137, %124, %102
  %193 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %194 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %193)
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %37
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, %struct.ath9k_hw_cal_data*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv*, %struct.ath9k_channel*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @htc_start(i32) #1

declare dso_local i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath9k_cmn_spectral_scan_trigger(%struct.ath_common*, %struct.TYPE_12__*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
