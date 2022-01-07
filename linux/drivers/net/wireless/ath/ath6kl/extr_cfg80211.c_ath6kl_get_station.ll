; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_get_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_get_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i8* }
%struct.ath6kl = type { i32, i32, i32 }
%struct.ath6kl_vif = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@STATS_UPDATE_PEND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WMI_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_BYTES64 = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BYTES64 = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid rate from stats: %d\0A\00", align 1
@ATH6KL_WAR_INVALID_RATE = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@DTIM_PERIOD_AVAIL = common dso_local global i32 0, align 4
@INFRA_NETWORK = common dso_local global i64 0, align 8
@NL80211_STA_INFO_BSS_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i8**, %struct.station_info*)* @ath6kl_get_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_get_station(%struct.wiphy* %0, %struct.net_device* %1, i8** %2, %struct.station_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.station_info*, align 8
  %10 = alloca %struct.ath6kl*, align 8
  %11 = alloca %struct.ath6kl_vif*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.station_info* %3, %struct.station_info** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.ath6kl* @ath6kl_priv(%struct.net_device* %17)
  store %struct.ath6kl* %18, %struct.ath6kl** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %19)
  store %struct.ath6kl_vif* %20, %struct.ath6kl_vif** %11, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %23 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i64 @memcmp(i8** %21, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %301

31:                                               ; preds = %4
  %32 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 0
  %34 = call i64 @down_interruptible(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %301

39:                                               ; preds = %31
  %40 = load i32, i32* @STATS_UPDATE_PEND, align 4
  %41 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %42 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %41, i32 0, i32 3
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %45 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %48 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ath6kl_wmi_get_stats_cmd(i32 %46, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 0
  %56 = call i32 @up(i32* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %301

59:                                               ; preds = %39
  %60 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %61 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @STATS_UPDATE_PEND, align 4
  %64 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %65 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %64, i32 0, i32 3
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @WMI_TIMEOUT, align 4
  %71 = call i64 @wait_event_interruptible_timeout(i32 %62, i32 %69, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %73 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %72, i32 0, i32 0
  %74 = call i32 @up(i32* %73)
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %301

80:                                               ; preds = %59
  %81 = load i64, i64* %12, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %301

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %89 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %95 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.station_info*, %struct.station_info** %9, align 8
  %99 = getelementptr inbounds %struct.station_info, %struct.station_info* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @NL80211_STA_INFO_RX_BYTES64, align 4
  %101 = call i32 @BIT_ULL(i32 %100)
  %102 = load %struct.station_info*, %struct.station_info** %9, align 8
  %103 = getelementptr inbounds %struct.station_info, %struct.station_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %107 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.station_info*, %struct.station_info** %9, align 8
  %111 = getelementptr inbounds %struct.station_info, %struct.station_info* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @NL80211_STA_INFO_RX_PACKETS, align 4
  %113 = call i32 @BIT_ULL(i32 %112)
  %114 = load %struct.station_info*, %struct.station_info** %9, align 8
  %115 = getelementptr inbounds %struct.station_info, %struct.station_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %93, %87
  %119 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %120 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %118
  %125 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %126 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.station_info*, %struct.station_info** %9, align 8
  %130 = getelementptr inbounds %struct.station_info, %struct.station_info* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @NL80211_STA_INFO_TX_BYTES64, align 4
  %132 = call i32 @BIT_ULL(i32 %131)
  %133 = load %struct.station_info*, %struct.station_info** %9, align 8
  %134 = getelementptr inbounds %struct.station_info, %struct.station_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %138 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.station_info*, %struct.station_info** %9, align 8
  %142 = getelementptr inbounds %struct.station_info, %struct.station_info* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @NL80211_STA_INFO_TX_PACKETS, align 4
  %144 = call i32 @BIT_ULL(i32 %143)
  %145 = load %struct.station_info*, %struct.station_info** %9, align 8
  %146 = getelementptr inbounds %struct.station_info, %struct.station_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %124, %118
  %150 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %151 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.station_info*, %struct.station_info** %9, align 8
  %155 = getelementptr inbounds %struct.station_info, %struct.station_info* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %157 = call i32 @BIT_ULL(i32 %156)
  %158 = load %struct.station_info*, %struct.station_info** %9, align 8
  %159 = getelementptr inbounds %struct.station_info, %struct.station_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %163 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i64 @is_rate_legacy(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %149
  %170 = load i32, i32* %14, align 4
  %171 = sdiv i32 %170, 100
  %172 = load %struct.station_info*, %struct.station_info** %9, align 8
  %173 = getelementptr inbounds %struct.station_info, %struct.station_info* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  br label %254

175:                                              ; preds = %149
  %176 = load i32, i32* %14, align 4
  %177 = call i64 @is_rate_ht20(i32 %176, i8** %16, i32* %13)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %210

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %184 = load %struct.station_info*, %struct.station_info** %9, align 8
  %185 = getelementptr inbounds %struct.station_info, %struct.station_info* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 4
  %189 = load i8*, i8** %16, align 8
  %190 = getelementptr i8, i8* %189, i64 -1
  %191 = load %struct.station_info*, %struct.station_info** %9, align 8
  %192 = getelementptr inbounds %struct.station_info, %struct.station_info* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  store i8* %190, i8** %193, align 8
  br label %199

194:                                              ; preds = %179
  %195 = load i8*, i8** %16, align 8
  %196 = load %struct.station_info*, %struct.station_info** %9, align 8
  %197 = getelementptr inbounds %struct.station_info, %struct.station_info* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  store i8* %195, i8** %198, align 8
  br label %199

199:                                              ; preds = %194, %182
  %200 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %201 = load %struct.station_info*, %struct.station_info** %9, align 8
  %202 = getelementptr inbounds %struct.station_info, %struct.station_info* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* @RATE_INFO_BW_20, align 4
  %207 = load %struct.station_info*, %struct.station_info** %9, align 8
  %208 = getelementptr inbounds %struct.station_info, %struct.station_info* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 8
  br label %253

210:                                              ; preds = %175
  %211 = load i32, i32* %14, align 4
  %212 = call i64 @is_rate_ht40(i32 %211, i8** %16, i32* %13)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %245

214:                                              ; preds = %210
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %219 = load %struct.station_info*, %struct.station_info** %9, align 8
  %220 = getelementptr inbounds %struct.station_info, %struct.station_info* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 4
  %224 = load i8*, i8** %16, align 8
  %225 = getelementptr i8, i8* %224, i64 -1
  %226 = load %struct.station_info*, %struct.station_info** %9, align 8
  %227 = getelementptr inbounds %struct.station_info, %struct.station_info* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  store i8* %225, i8** %228, align 8
  br label %234

229:                                              ; preds = %214
  %230 = load i8*, i8** %16, align 8
  %231 = load %struct.station_info*, %struct.station_info** %9, align 8
  %232 = getelementptr inbounds %struct.station_info, %struct.station_info* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 3
  store i8* %230, i8** %233, align 8
  br label %234

234:                                              ; preds = %229, %217
  %235 = load i32, i32* @RATE_INFO_BW_40, align 4
  %236 = load %struct.station_info*, %struct.station_info** %9, align 8
  %237 = getelementptr inbounds %struct.station_info, %struct.station_info* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 8
  %239 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %240 = load %struct.station_info*, %struct.station_info** %9, align 8
  %241 = getelementptr inbounds %struct.station_info, %struct.station_info* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %239
  store i32 %244, i32* %242, align 4
  br label %252

245:                                              ; preds = %210
  %246 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @ath6kl_dbg(i32 %246, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %247)
  %249 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %250 = load i32, i32* @ATH6KL_WAR_INVALID_RATE, align 4
  %251 = call i32 @ath6kl_debug_war(%struct.ath6kl* %249, i32 %250)
  store i32 0, i32* %5, align 4
  br label %301

252:                                              ; preds = %234
  br label %253

253:                                              ; preds = %252, %199
  br label %254

254:                                              ; preds = %253, %169
  %255 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %256 = call i32 @BIT_ULL(i32 %255)
  %257 = load %struct.station_info*, %struct.station_info** %9, align 8
  %258 = getelementptr inbounds %struct.station_info, %struct.station_info* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i32, i32* @CONNECTED, align 4
  %262 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %263 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %262, i32 0, i32 3
  %264 = call i64 @test_bit(i32 %261, i32* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %300

266:                                              ; preds = %254
  %267 = load i32, i32* @DTIM_PERIOD_AVAIL, align 4
  %268 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %269 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %268, i32 0, i32 3
  %270 = call i64 @test_bit(i32 %267, i32* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %300

272:                                              ; preds = %266
  %273 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %274 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @INFRA_NETWORK, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %300

278:                                              ; preds = %272
  %279 = load i32, i32* @NL80211_STA_INFO_BSS_PARAM, align 4
  %280 = call i32 @BIT_ULL(i32 %279)
  %281 = load %struct.station_info*, %struct.station_info** %9, align 8
  %282 = getelementptr inbounds %struct.station_info, %struct.station_info* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load %struct.station_info*, %struct.station_info** %9, align 8
  %286 = getelementptr inbounds %struct.station_info, %struct.station_info* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 2
  store i64 0, i64* %287, align 8
  %288 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %289 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.station_info*, %struct.station_info** %9, align 8
  %292 = getelementptr inbounds %struct.station_info, %struct.station_info* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  store i32 %290, i32* %293, align 4
  %294 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %295 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.station_info*, %struct.station_info** %9, align 8
  %298 = getelementptr inbounds %struct.station_info, %struct.station_info* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  store i32 %296, i32* %299, align 8
  br label %300

300:                                              ; preds = %278, %272, %266, %254
  store i32 0, i32* %5, align 4
  br label %301

301:                                              ; preds = %300, %245, %83, %77, %53, %36, %28
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @memcmp(i8**, i32, i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_get_stats_cmd(i32, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @is_rate_legacy(i32) #1

declare dso_local i64 @is_rate_ht20(i32, i8**, i32*) #1

declare dso_local i64 @is_rate_ht40(i32, i8**, i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @ath6kl_debug_war(%struct.ath6kl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
