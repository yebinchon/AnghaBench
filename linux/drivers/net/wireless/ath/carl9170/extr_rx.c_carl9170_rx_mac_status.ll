; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_mac_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_mac_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_2__*, %struct.ieee80211_channel*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ar9170_rx_head = type { i32* }
%struct.ar9170_rx_macstatus = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32, i32 }

@AR9170_RX_ERROR_WRONG_RA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR9170_RX_ERROR_PLCP = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@AR9170_RX_ERROR_FCS = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@AR9170_RX_ENC_SOFTWARE = common dso_local global i32 0, align 4
@AR9170_ENC_ALG_NONE = common dso_local global i32 0, align 4
@AR9170_ENC_ALG_TKIP = common dso_local global i32 0, align 4
@AR9170_RX_ERROR_MMIC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@AR9170_RX_ERROR_DECRYPT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"received frame with suspicious error code (%#x).\0A\00", align 1
@AR9170_RX_STATUS_MODULATION = common dso_local global i32 0, align 4
@AR9170_RX_STATUS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid plcp cck rate (%x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid plcp ofdm rate (%x).\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.ar9170_rx_head*, %struct.ar9170_rx_macstatus*, %struct.ieee80211_rx_status*)* @carl9170_rx_mac_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_rx_mac_status(%struct.ar9170* %0, %struct.ar9170_rx_head* %1, %struct.ar9170_rx_macstatus* %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca %struct.ar9170_rx_head*, align 8
  %8 = alloca %struct.ar9170_rx_macstatus*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store %struct.ar9170_rx_head* %1, %struct.ar9170_rx_head** %7, align 8
  store %struct.ar9170_rx_macstatus* %2, %struct.ar9170_rx_macstatus** %8, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  %13 = call i32 @BUILD_BUG_ON(i32 1)
  %14 = call i32 @BUILD_BUG_ON(i32 1)
  %15 = load %struct.ar9170_rx_macstatus*, %struct.ar9170_rx_macstatus** %8, align 8
  %16 = getelementptr inbounds %struct.ar9170_rx_macstatus, %struct.ar9170_rx_macstatus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @AR9170_RX_ERROR_WRONG_RA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %24 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %330

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @AR9170_RX_ERROR_PLCP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FIF_PLCPFAIL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %330

46:                                               ; preds = %36
  %47 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %48 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %31
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @AR9170_RX_ERROR_FCS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %59 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %63 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FIF_FCSFAIL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %330

71:                                               ; preds = %57
  %72 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %73 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %52
  %78 = load %struct.ar9170_rx_macstatus*, %struct.ar9170_rx_macstatus** %8, align 8
  %79 = call i32 @ar9170_get_decrypt_type(%struct.ar9170_rx_macstatus* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @AR9170_RX_ENC_SOFTWARE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %109, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @AR9170_ENC_ALG_NONE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @AR9170_ENC_ALG_TKIP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @AR9170_RX_ERROR_MMIC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %99 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92, %88
  %104 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %84, %77
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @AR9170_RX_ERROR_DECRYPT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %116 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @ENODATA, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %330

122:                                              ; preds = %114, %109
  %123 = load i32, i32* @AR9170_RX_ERROR_MMIC, align 4
  %124 = load i32, i32* @AR9170_RX_ERROR_FCS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @AR9170_RX_ERROR_WRONG_RA, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @AR9170_RX_ERROR_DECRYPT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @AR9170_RX_ERROR_PLCP, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %122
  %139 = call i64 (...) @net_ratelimit()
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %143 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @wiphy_dbg(i32 %146, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %141, %138
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %330

152:                                              ; preds = %122
  %153 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %154 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %153, i32 0, i32 2
  %155 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %154, align 8
  store %struct.ieee80211_channel* %155, %struct.ieee80211_channel** %10, align 8
  %156 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %157 = icmp ne %struct.ieee80211_channel* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %160 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %163 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  %164 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %165 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %168 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %158, %152
  %170 = load %struct.ar9170_rx_macstatus*, %struct.ar9170_rx_macstatus** %8, align 8
  %171 = getelementptr inbounds %struct.ar9170_rx_macstatus, %struct.ar9170_rx_macstatus* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AR9170_RX_STATUS_MODULATION, align 4
  %174 = and i32 %172, %173
  switch i32 %174, label %325 [
    i32 139, label %175
    i32 138, label %225
    i32 136, label %225
    i32 137, label %286
  ]

175:                                              ; preds = %169
  %176 = load %struct.ar9170_rx_macstatus*, %struct.ar9170_rx_macstatus** %8, align 8
  %177 = getelementptr inbounds %struct.ar9170_rx_macstatus, %struct.ar9170_rx_macstatus* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AR9170_RX_STATUS_SHORT_PREAMBLE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %184 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %185 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %175
  %189 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %190 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  switch i32 %193, label %206 [
    i32 142, label %194
    i32 141, label %197
    i32 140, label %200
    i32 143, label %203
  ]

194:                                              ; preds = %188
  %195 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %196 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %195, i32 0, i32 0
  store i32 0, i32* %196, align 4
  br label %224

197:                                              ; preds = %188
  %198 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %199 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %198, i32 0, i32 0
  store i32 1, i32* %199, align 4
  br label %224

200:                                              ; preds = %188
  %201 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %202 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %201, i32 0, i32 0
  store i32 2, i32* %202, align 4
  br label %224

203:                                              ; preds = %188
  %204 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %205 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %204, i32 0, i32 0
  store i32 3, i32* %205, align 4
  br label %224

206:                                              ; preds = %188
  %207 = call i64 (...) @net_ratelimit()
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %211 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %216 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @wiphy_err(i32 %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %209, %206
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %330

224:                                              ; preds = %203, %200, %197, %194
  br label %329

225:                                              ; preds = %169, %169
  %226 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %227 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 15
  switch i32 %231, label %256 [
    i32 129, label %232
    i32 128, label %235
    i32 135, label %238
    i32 134, label %241
    i32 133, label %244
    i32 132, label %247
    i32 131, label %250
    i32 130, label %253
  ]

232:                                              ; preds = %225
  %233 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %234 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %233, i32 0, i32 0
  store i32 0, i32* %234, align 4
  br label %274

235:                                              ; preds = %225
  %236 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %237 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %236, i32 0, i32 0
  store i32 1, i32* %237, align 4
  br label %274

238:                                              ; preds = %225
  %239 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %240 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %239, i32 0, i32 0
  store i32 2, i32* %240, align 4
  br label %274

241:                                              ; preds = %225
  %242 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %243 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %242, i32 0, i32 0
  store i32 3, i32* %243, align 4
  br label %274

244:                                              ; preds = %225
  %245 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %246 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %245, i32 0, i32 0
  store i32 4, i32* %246, align 4
  br label %274

247:                                              ; preds = %225
  %248 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %249 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %248, i32 0, i32 0
  store i32 5, i32* %249, align 4
  br label %274

250:                                              ; preds = %225
  %251 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %252 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %251, i32 0, i32 0
  store i32 6, i32* %252, align 4
  br label %274

253:                                              ; preds = %225
  %254 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %255 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %254, i32 0, i32 0
  store i32 7, i32* %255, align 4
  br label %274

256:                                              ; preds = %225
  %257 = call i64 (...) @net_ratelimit()
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %256
  %260 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %261 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %260, i32 0, i32 1
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %266 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @wiphy_err(i32 %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %259, %256
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %5, align 4
  br label %330

274:                                              ; preds = %253, %250, %247, %244, %241, %238, %235, %232
  %275 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %276 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %282 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 4
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %280, %274
  br label %329

286:                                              ; preds = %169
  %287 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %288 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 3
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, 128
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %286
  %295 = load i32, i32* @RATE_INFO_BW_40, align 4
  %296 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %297 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %286
  %299 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %300 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 6
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 128
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %298
  %307 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %308 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %309 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %306, %298
  %313 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %314 = getelementptr inbounds %struct.ar9170_rx_head, %struct.ar9170_rx_head* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 3
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 127
  %319 = call i32 @clamp(i32 %318, i32 0, i32 75)
  %320 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %321 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* @RX_ENC_HT, align 4
  %323 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %324 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  br label %329

325:                                              ; preds = %169
  %326 = call i32 (...) @BUG()
  %327 = load i32, i32* @ENOSYS, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %5, align 4
  br label %330

329:                                              ; preds = %312, %285, %224
  store i32 0, i32* %5, align 4
  br label %330

330:                                              ; preds = %329, %325, %271, %221, %149, %119, %68, %43, %27
  %331 = load i32, i32* %5, align 4
  ret i32 %331
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ar9170_get_decrypt_type(%struct.ar9170_rx_macstatus*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_dbg(i32, i8*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
