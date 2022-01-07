; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_key_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_key_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.brcmf_if = type { %struct.brcmf_pub*, %struct.TYPE_3__* }
%struct.brcmf_pub = type { i32 }
%struct.TYPE_3__ = type { %struct.brcmf_cfg80211_profile }
%struct.brcmf_cfg80211_profile = type { i64 }
%struct.brcmf_tlv = type { i64 }

@BRCMF_PROFILE_FWSUP_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"wpa_auth\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not get wpa_auth (%d)\0A\00", align 1
@WPA_AUTH_PSK = common dso_local global i32 0, align 4
@WPA_AUTH_UNSPECIFIED = common dso_local global i32 0, align 4
@BRCMF_PROFILE_FWSUP_1X = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid cipher group (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WPA2_AUTH_PSK = common dso_local global i32 0, align 4
@WPA2_AUTH_UNSPECIFIED = common dso_local global i32 0, align 4
@WPA2_AUTH_1X_SHA256 = common dso_local global i32 0, align 4
@WPA2_AUTH_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA2_AUTH_FT = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"using 1X offload\0A\00", align 1
@BRCMF_FEAT_MFP = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@TLV_HDR_LEN = common dso_local global i64 0, align 8
@WPA_IE_VERSION_LEN = common dso_local global i64 0, align 8
@WPA_IE_MIN_OUI_LEN = common dso_local global i32 0, align 4
@WPA_IE_SUITE_COUNT_LEN = common dso_local global i64 0, align 8
@BRCMF_MFP_NONE = common dso_local global i64 0, align 8
@RSN_CAP_MFPR_MASK = common dso_local global i32 0, align 4
@BRCMF_MFP_REQUIRED = common dso_local global i64 0, align 8
@RSN_CAP_MFPC_MASK = common dso_local global i32 0, align 4
@BRCMF_MFP_CAPABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"mfp\00", align 1
@CONN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"setting wpa_auth to %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"could not set wpa_auth (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cfg80211_connect_params*)* @brcmf_set_key_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_set_key_mgmt(%struct.net_device* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.brcmf_tlv*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %18)
  store %struct.brcmf_if* %19, %struct.brcmf_if** %6, align 8
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %21 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.brcmf_cfg80211_profile* %23, %struct.brcmf_cfg80211_profile** %7, align 8
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %24, i32 0, i32 0
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %25, align 8
  store %struct.brcmf_pub* %26, %struct.brcmf_pub** %8, align 8
  %27 = load i64, i64* @BRCMF_PROFILE_FWSUP_NONE, align 8
  %28 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %302

36:                                               ; preds = %2
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %37)
  %39 = call i32 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @bphy_err(%struct.brcmf_pub* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %302

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @WPA_AUTH_PSK, align 4
  %50 = load i32, i32* @WPA_AUTH_UNSPECIFIED, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %47
  %55 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %56 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %74 [
    i32 133, label %61
    i32 129, label %72
  ]

61:                                               ; preds = %54
  %62 = load i32, i32* @WPA_AUTH_UNSPECIFIED, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %64 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* @BRCMF_PROFILE_FWSUP_1X, align 8
  %69 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %70 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  br label %83

72:                                               ; preds = %54
  %73 = load i32, i32* @WPA_AUTH_PSK, align 4
  store i32 %73, i32* %9, align 4
  br label %83

74:                                               ; preds = %54
  %75 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %76 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %77 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bphy_err(%struct.brcmf_pub* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %302

83:                                               ; preds = %72, %71
  br label %152

84:                                               ; preds = %47
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @WPA2_AUTH_PSK, align 4
  %87 = load i32, i32* @WPA2_AUTH_UNSPECIFIED, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %151

91:                                               ; preds = %84
  %92 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %93 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %141 [
    i32 133, label %98
    i32 132, label %109
    i32 128, label %120
    i32 129, label %122
    i32 131, label %124
    i32 130, label %137
  ]

98:                                               ; preds = %91
  %99 = load i32, i32* @WPA2_AUTH_UNSPECIFIED, align 4
  store i32 %99, i32* %9, align 4
  %100 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %101 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i64, i64* @BRCMF_PROFILE_FWSUP_1X, align 8
  %106 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %107 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %98
  br label %150

109:                                              ; preds = %91
  %110 = load i32, i32* @WPA2_AUTH_1X_SHA256, align 4
  store i32 %110, i32* %9, align 4
  %111 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %112 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i64, i64* @BRCMF_PROFILE_FWSUP_1X, align 8
  %117 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %118 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %109
  br label %150

120:                                              ; preds = %91
  %121 = load i32, i32* @WPA2_AUTH_PSK_SHA256, align 4
  store i32 %121, i32* %9, align 4
  br label %150

122:                                              ; preds = %91
  %123 = load i32, i32* @WPA2_AUTH_PSK, align 4
  store i32 %123, i32* %9, align 4
  br label %150

124:                                              ; preds = %91
  %125 = load i32, i32* @WPA2_AUTH_UNSPECIFIED, align 4
  %126 = load i32, i32* @WPA2_AUTH_FT, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %129 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i64, i64* @BRCMF_PROFILE_FWSUP_1X, align 8
  %134 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %135 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %124
  br label %150

137:                                              ; preds = %91
  %138 = load i32, i32* @WPA2_AUTH_PSK, align 4
  %139 = load i32, i32* @WPA2_AUTH_FT, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %9, align 4
  br label %150

141:                                              ; preds = %91
  %142 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %143 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %144 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @bphy_err(%struct.brcmf_pub* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %302

150:                                              ; preds = %137, %136, %122, %120, %119, %108
  br label %151

151:                                              ; preds = %150, %84
  br label %152

152:                                              ; preds = %151, %83
  %153 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %154 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BRCMF_PROFILE_FWSUP_1X, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* @INFO, align 4
  %160 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %152
  %162 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %163 = load i32, i32* @BRCMF_FEAT_MFP, align 4
  %164 = call i32 @brcmf_feat_is_enabled(%struct.brcmf_if* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  br label %285

167:                                              ; preds = %161
  %168 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %169 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32*
  %172 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %173 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @WLAN_EID_RSN, align 4
  %176 = call %struct.brcmf_tlv* @brcmf_parse_tlvs(i32* %171, i32 %174, i32 %175)
  store %struct.brcmf_tlv* %176, %struct.brcmf_tlv** %11, align 8
  %177 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %11, align 8
  %178 = icmp ne %struct.brcmf_tlv* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %167
  br label %285

180:                                              ; preds = %167
  %181 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %11, align 8
  %182 = bitcast %struct.brcmf_tlv* %181 to i32*
  store i32* %182, i32** %12, align 8
  %183 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %11, align 8
  %184 = getelementptr inbounds %struct.brcmf_tlv, %struct.brcmf_tlv* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TLV_HDR_LEN, align 8
  %187 = add nsw i64 %185, %186
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* @TLV_HDR_LEN, align 8
  %189 = load i64, i64* @WPA_IE_VERSION_LEN, align 8
  %190 = add nsw i64 %188, %189
  %191 = load i32, i32* @WPA_IE_MIN_OUI_LEN, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  store i64 %193, i64* %14, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* @WPA_IE_SUITE_COUNT_LEN, align 8
  %196 = add nsw i64 %194, %195
  %197 = load i64, i64* %13, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %180
  br label %285

200:                                              ; preds = %180
  %201 = load i32*, i32** %12, align 8
  %202 = load i64, i64* %14, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %12, align 8
  %206 = load i64, i64* %14, align 8
  %207 = add nsw i64 %206, 1
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 8
  %211 = add nsw i32 %204, %210
  store i32 %211, i32* %17, align 4
  %212 = load i64, i64* @WPA_IE_SUITE_COUNT_LEN, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* @WPA_IE_MIN_OUI_LEN, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %212, %216
  %218 = load i64, i64* %14, align 8
  %219 = add nsw i64 %218, %217
  store i64 %219, i64* %14, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load i64, i64* @WPA_IE_SUITE_COUNT_LEN, align 8
  %222 = add nsw i64 %220, %221
  %223 = load i64, i64* %13, align 8
  %224 = icmp sge i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %200
  br label %285

226:                                              ; preds = %200
  %227 = load i32*, i32** %12, align 8
  %228 = load i64, i64* %14, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %12, align 8
  %232 = load i64, i64* %14, align 8
  %233 = add nsw i64 %232, 1
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 8
  %237 = add nsw i32 %230, %236
  store i32 %237, i32* %17, align 4
  %238 = load i64, i64* @WPA_IE_SUITE_COUNT_LEN, align 8
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* @WPA_IE_MIN_OUI_LEN, align 4
  %241 = mul nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %238, %242
  %244 = load i64, i64* %14, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %14, align 8
  %246 = load i64, i64* %14, align 8
  %247 = load i64, i64* @WPA_IE_SUITE_COUNT_LEN, align 8
  %248 = add nsw i64 %246, %247
  %249 = load i64, i64* %13, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %226
  br label %285

252:                                              ; preds = %226
  %253 = load i64, i64* @BRCMF_MFP_NONE, align 8
  store i64 %253, i64* %16, align 8
  %254 = load i32*, i32** %12, align 8
  %255 = load i64, i64* %14, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %12, align 8
  %259 = load i64, i64* %14, align 8
  %260 = add nsw i64 %259, 1
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 8
  %264 = add nsw i32 %257, %263
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* @RSN_CAP_MFPR_MASK, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %252
  %270 = load i64, i64* @BRCMF_MFP_REQUIRED, align 8
  store i64 %270, i64* %16, align 8
  br label %279

271:                                              ; preds = %252
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* @RSN_CAP_MFPC_MASK, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i64, i64* @BRCMF_MFP_CAPABLE, align 8
  store i64 %277, i64* %16, align 8
  br label %278

278:                                              ; preds = %276, %271
  br label %279

279:                                              ; preds = %278, %269
  %280 = load %struct.net_device*, %struct.net_device** %4, align 8
  %281 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %280)
  %282 = load i64, i64* %16, align 8
  %283 = trunc i64 %282 to i32
  %284 = call i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %281, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %279, %251, %225, %199, %179, %166
  %286 = load i32, i32* @CONN, align 4
  %287 = load i32, i32* %9, align 4
  %288 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %286, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %287)
  %289 = load %struct.net_device*, %struct.net_device** %4, align 8
  %290 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %289)
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %291)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %285
  %296 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @bphy_err(%struct.brcmf_pub* %296, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %297)
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %3, align 4
  br label %302

300:                                              ; preds = %285
  %301 = load i32, i32* %10, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %300, %295, %141, %74, %42, %35
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if*, i8*, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_feat_is_enabled(%struct.brcmf_if*, i32) #1

declare dso_local %struct.brcmf_tlv* @brcmf_parse_tlvs(i32*, i32, i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
