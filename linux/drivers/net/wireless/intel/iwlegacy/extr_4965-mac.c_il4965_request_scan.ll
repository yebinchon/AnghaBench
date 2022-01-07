; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_request_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_request_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__, %struct.TYPE_13__, i32*, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.il_scan_cmd*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.il_scan_cmd = type { i32, i32, i32, i8*, %struct.TYPE_20__, i32*, i8*, i32, %struct.TYPE_15__*, i8*, i8*, i32, i32 }
%struct.TYPE_20__ = type { i8*, i8*, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.il_host_cmd = type { i32, %struct.il_scan_cmd*, i32, i32 }
%struct.ieee80211_mgmt = type { i32 }

@CMD_SIZE_HUGE = common dso_local global i32 0, align 4
@C_SCAN = common dso_local global i32 0, align 4
@IL_MAX_SCAN_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fail to allocate memory for scan\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IL_PLCP_QUIET_THRESH = common dso_local global i32 0, align 4
@IL_ACTIVE_QUIET_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Scanning while associated...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"suspend_time 0x%X beacon interval %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Kicking off active scan\0A\00", align 1
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Start passive scan.\0A\00", align 1
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_POS = common dso_local global i32 0, align 4
@CHANNEL_MODE_PURE_40 = common dso_local global i32 0, align 4
@RATE_6M_PLCP = common dso_local global i32 0, align 4
@RATE_1M_PLCP = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid scan band\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IL_GOOD_CRC_TH_DEFAULT = common dso_local global i32 0, align 4
@IL_GOOD_CRC_TH_NEVER = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@S_POWER_PMI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"chain_noise_data.active_chains: %u\0A\00", align 1
@RXON_RX_CHAIN_VALID_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_FORCE_MIMO_SEL_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_FORCE_SEL_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_DRIVER_FORCE_POS = common dso_local global i32 0, align 4
@RXON_FILTER_ACCEPT_GRP_MSK = common dso_local global i32 0, align 4
@RXON_FILTER_BCON_AWARE_MSK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"channel count %d\0A\00", align 1
@S_SCAN_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_request_scan(%struct.il_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.il_host_cmd, align 8
  %7 = alloca %struct.il_scan_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %26 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  store i32 112, i32* %26, align 8
  %27 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 1
  store %struct.il_scan_cmd* null, %struct.il_scan_cmd** %27, align 8
  %28 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 2
  %29 = load i32, i32* @CMD_SIZE_HUGE, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 3
  %31 = load i32, i32* @C_SCAN, align 4
  store i32 %31, i32* %30, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %36 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 9
  %42 = call i32 @lockdep_assert_held(i32* %41)
  %43 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 8
  %45 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %44, align 8
  %46 = icmp ne %struct.il_scan_cmd* %45, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %2
  %48 = load i64, i64* @IL_MAX_SCAN_SIZE, align 8
  %49 = add i64 112, %48
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.il_scan_cmd* @kmalloc(i64 %49, i32 %50)
  %52 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 8
  store %struct.il_scan_cmd* %51, %struct.il_scan_cmd** %53, align 8
  %54 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %55 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %54, i32 0, i32 8
  %56 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %55, align 8
  %57 = icmp ne %struct.il_scan_cmd* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %470

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 8
  %66 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %65, align 8
  store %struct.il_scan_cmd* %66, %struct.il_scan_cmd** %7, align 8
  %67 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %68 = load i64, i64* @IL_MAX_SCAN_SIZE, align 8
  %69 = add i64 112, %68
  %70 = call i32 @memset(%struct.il_scan_cmd* %67, i32 0, i64 %69)
  %71 = load i32, i32* @IL_PLCP_QUIET_THRESH, align 4
  %72 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %72, i32 0, i32 12
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @IL_ACTIVE_QUIET_TIME, align 4
  %75 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 8
  %77 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %78 = call i64 @il_is_any_associated(%struct.il_priv* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %63
  store i32 100, i32* %22, align 4
  store i32 100, i32* %23, align 4
  %81 = call i32 @D_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %20, align 4
  %86 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %86, i32 0, i32 9
  store i8* null, i8** %87, align 8
  %88 = call i8* @cpu_to_le32(i32 204800)
  %89 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %20, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %22, align 4
  store i32 %94, i32* %20, align 4
  br label %95

95:                                               ; preds = %93, %80
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sdiv i32 %96, %97
  %99 = shl i32 %98, 22
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %20, align 4
  %103 = srem i32 %101, %102
  %104 = mul nsw i32 %103, 1024
  %105 = or i32 %100, %104
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %23, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %108, i32 0, i32 9
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %20, align 4
  %112 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %95, %63
  %114 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %115 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %114, i32 0, i32 2
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %206

120:                                              ; preds = %113
  store i32 0, i32* %25, align 4
  %121 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %122

122:                                              ; preds = %202, %120
  %123 = load i32, i32* %24, align 4
  %124 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %125 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %124, i32 0, i32 2
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %123, %128
  br i1 %129, label %130, label %205

130:                                              ; preds = %122
  %131 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %132 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %131, i32 0, i32 2
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %130
  br label %202

143:                                              ; preds = %130
  %144 = load i32, i32* @WLAN_EID_SSID, align 4
  %145 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %145, i32 0, i32 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = load i32, i32* %25, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  store i32 %144, i32* %151, align 8
  %152 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %153 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %152, i32 0, i32 2
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i32, i32* %24, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %162, i32 0, i32 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load i32, i32* %25, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  store i64 %161, i64* %168, align 8
  %169 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %169, i32 0, i32 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load i32, i32* %25, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %178 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %177, i32 0, i32 2
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %188 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %187, i32 0, i32 2
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = load i32, i32* %24, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @memcpy(i32 %176, i32 %186, i64 %196)
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %25, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %25, align 4
  br label %202

202:                                              ; preds = %143, %142
  %203 = load i32, i32* %24, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %24, align 4
  br label %122

205:                                              ; preds = %122
  store i32 1, i32* %15, align 4
  br label %208

206:                                              ; preds = %113
  %207 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %205
  %209 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %210 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 4
  store i32 %209, i32* %212, align 8
  %213 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %214 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 3
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %221 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  store i32 %220, i32* %224, align 8
  %225 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %226 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  switch i32 %227, label %254 [
    i32 129, label %228
    i32 128, label %252
  ]

228:                                              ; preds = %208
  %229 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %230 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %235 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %239 = and i32 %237, %238
  %240 = call i32 @le32_to_cpu(i32 %239)
  %241 = load i32, i32* @RXON_FLG_CHANNEL_MODE_POS, align 4
  %242 = ashr i32 %240, %241
  store i32 %242, i32* %16, align 4
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* @CHANNEL_MODE_PURE_40, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %228
  %247 = load i32, i32* @RATE_6M_PLCP, align 4
  store i32 %247, i32* %14, align 4
  br label %251

248:                                              ; preds = %228
  %249 = load i32, i32* @RATE_1M_PLCP, align 4
  store i32 %249, i32* %14, align 4
  %250 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %248, %246
  br label %258

252:                                              ; preds = %208
  %253 = load i32, i32* @RATE_6M_PLCP, align 4
  store i32 %253, i32* %14, align 4
  br label %258

254:                                              ; preds = %208
  %255 = call i32 @IL_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %256 = load i32, i32* @EIO, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %3, align 4
  br label %470

258:                                              ; preds = %252, %251
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i32, i32* @IL_GOOD_CRC_TH_DEFAULT, align 4
  br label %265

263:                                              ; preds = %258
  %264 = load i32, i32* @IL_GOOD_CRC_TH_NEVER, align 4
  br label %265

265:                                              ; preds = %263, %261
  %266 = phi i32 [ %262, %261 ], [ %264, %263 ]
  %267 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 8
  %269 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %270 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %11, align 4
  %272 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %273 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %272, i32 0, i32 6
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %265
  %283 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %284 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %283, i32 0, i32 6
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %13, align 4
  br label %292

292:                                              ; preds = %282, %265
  %293 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %294 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %295 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %294, i32 0, i32 5
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %11, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @il4965_toggle_tx_ant(%struct.il_priv* %293, i32* %299, i32 %300)
  %302 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %303 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %302, i32 0, i32 5
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @BIT(i32 %308)
  %310 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %311 = shl i32 %309, %310
  %312 = load i32, i32* %8, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %8, align 4
  %316 = or i32 %314, %315
  %317 = call i8* @cpu_to_le32(i32 %316)
  %318 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %319 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 1
  store i8* %317, i8** %320, align 8
  %321 = load i32, i32* @S_POWER_PMI, align 4
  %322 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %323 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %322, i32 0, i32 1
  %324 = call i64 @test_bit(i32 %321, i32* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %345

326:                                              ; preds = %292
  %327 = load i32, i32* %13, align 4
  %328 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %329 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %328, i32 0, i32 4
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %327, %331
  store i32 %332, i32* %17, align 4
  %333 = load i32, i32* %17, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %326
  %336 = load i32, i32* %13, align 4
  store i32 %336, i32* %17, align 4
  br label %337

337:                                              ; preds = %335, %326
  %338 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %339 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %341)
  %343 = load i32, i32* %17, align 4
  %344 = call i32 @il4965_first_antenna(i32 %343)
  store i32 %344, i32* %13, align 4
  br label %345

345:                                              ; preds = %337, %292
  %346 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %347 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @RXON_RX_CHAIN_VALID_POS, align 4
  %351 = shl i32 %349, %350
  %352 = load i32, i32* %10, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* @RXON_RX_CHAIN_FORCE_MIMO_SEL_POS, align 4
  %356 = shl i32 %354, %355
  %357 = load i32, i32* %10, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %10, align 4
  %359 = load i32, i32* %13, align 4
  %360 = load i32, i32* @RXON_RX_CHAIN_FORCE_SEL_POS, align 4
  %361 = shl i32 %359, %360
  %362 = load i32, i32* %10, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %10, align 4
  %364 = load i32, i32* @RXON_RX_CHAIN_DRIVER_FORCE_POS, align 4
  %365 = shl i32 1, %364
  %366 = load i32, i32* %10, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %10, align 4
  %368 = load i32, i32* %10, align 4
  %369 = call i8* @cpu_to_le16(i32 %368)
  %370 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %371 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %370, i32 0, i32 6
  store i8* %369, i8** %371, align 8
  %372 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %373 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %374 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %373, i32 0, i32 5
  %375 = load i32*, i32** %374, align 8
  %376 = bitcast i32* %375 to %struct.ieee80211_mgmt*
  %377 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %378 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %381 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %380, i32 0, i32 2
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %386 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %385, i32 0, i32 2
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i64, i64* @IL_MAX_SCAN_SIZE, align 8
  %391 = sub i64 %390, 112
  %392 = call i32 @il_fill_probe_req(%struct.il_priv* %372, %struct.ieee80211_mgmt* %376, i32 %379, i32 %384, i32 %389, i64 %391)
  store i32 %392, i32* %9, align 4
  %393 = load i32, i32* %9, align 4
  %394 = call i8* @cpu_to_le16(i32 %393)
  %395 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %396 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %395, i32 0, i32 4
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 0
  store i8* %394, i8** %397, align 8
  %398 = load i32, i32* @RXON_FILTER_ACCEPT_GRP_MSK, align 4
  %399 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %400 = or i32 %398, %399
  %401 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %402 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 4
  %405 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %406 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %407 = load i32, i32* %11, align 4
  %408 = load i32, i32* %15, align 4
  %409 = load i32, i32* %12, align 4
  %410 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %411 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %410, i32 0, i32 5
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = bitcast i32* %415 to i8*
  %417 = call i32 @il4965_get_channels_for_scan(%struct.il_priv* %405, %struct.ieee80211_vif* %406, i32 %407, i32 %408, i32 %409, i8* %416)
  %418 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %419 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %418, i32 0, i32 2
  store i32 %417, i32* %419, align 8
  %420 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %421 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %345
  %425 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %426 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %427)
  %429 = load i32, i32* @EIO, align 4
  %430 = sub nsw i32 0, %429
  store i32 %430, i32* %3, align 4
  br label %470

431:                                              ; preds = %345
  %432 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %433 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %432, i32 0, i32 4
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 0
  %435 = load i8*, i8** %434, align 8
  %436 = call i64 @le16_to_cpu(i8* %435)
  %437 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %438 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = sext i32 %439 to i64
  %441 = mul i64 %440, 4
  %442 = add i64 %436, %441
  %443 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = sext i32 %444 to i64
  %446 = add i64 %445, %442
  %447 = trunc i64 %446 to i32
  store i32 %447, i32* %443, align 8
  %448 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %449 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 1
  store %struct.il_scan_cmd* %448, %struct.il_scan_cmd** %449, align 8
  %450 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = call i8* @cpu_to_le16(i32 %451)
  %453 = load %struct.il_scan_cmd*, %struct.il_scan_cmd** %7, align 8
  %454 = getelementptr inbounds %struct.il_scan_cmd, %struct.il_scan_cmd* %453, i32 0, i32 3
  store i8* %452, i8** %454, align 8
  %455 = load i32, i32* @S_SCAN_HW, align 4
  %456 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %457 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %456, i32 0, i32 1
  %458 = call i32 @set_bit(i32 %455, i32* %457)
  %459 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %460 = call i32 @il_send_cmd_sync(%struct.il_priv* %459, %struct.il_host_cmd* %6)
  store i32 %460, i32* %19, align 4
  %461 = load i32, i32* %19, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %468

463:                                              ; preds = %431
  %464 = load i32, i32* @S_SCAN_HW, align 4
  %465 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %466 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %465, i32 0, i32 1
  %467 = call i32 @clear_bit(i32 %464, i32* %466)
  br label %468

468:                                              ; preds = %463, %431
  %469 = load i32, i32* %19, align 4
  store i32 %469, i32* %3, align 4
  br label %470

470:                                              ; preds = %468, %424, %254, %58
  %471 = load i32, i32* %3, align 4
  ret i32 %471
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.il_scan_cmd* @kmalloc(i64, i32) #1

declare dso_local i32 @D_SCAN(i8*, ...) #1

declare dso_local i32 @memset(%struct.il_scan_cmd*, i32, i64) #1

declare dso_local i64 @il_is_any_associated(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @il4965_toggle_tx_ant(%struct.il_priv*, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il4965_first_antenna(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @il_fill_probe_req(%struct.il_priv*, %struct.ieee80211_mgmt*, i32, i32, i32, i64) #1

declare dso_local i32 @il4965_get_channels_for_scan(%struct.il_priv*, %struct.ieee80211_vif*, i32, i32, i32, i8*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_send_cmd_sync(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
