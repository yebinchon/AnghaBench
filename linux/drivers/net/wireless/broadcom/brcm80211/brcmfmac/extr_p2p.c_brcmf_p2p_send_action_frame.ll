; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_send_action_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_send_action_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_pub*, %struct.brcmf_p2p_info }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_p2p_info = type { i64, i32, i64, i32, i32, i32, i64, %struct.afx_hdl, %struct.TYPE_6__* }
%struct.afx_hdl = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.brcmf_fil_af_params_le = type { i8*, i8*, %struct.brcmf_fil_action_frame_le }
%struct.brcmf_fil_action_frame_le = type { i64*, i32, i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_config_af_params = type { i32, i32, i32 }

@P2P_AF_DWELL_TIME = common dso_local global i32 0, align 4
@DOT11_ACTION_CAT_OFF = common dso_local global i64 0, align 8
@DOT11_ACTION_ACT_OFF = common dso_local global i64 0, align 8
@P2P_PAF_SUBTYPE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"P2P Public action frame, unknown subtype.\0A\00", align 1
@P2PSD_ACTION_ID_GAS_IREQ = common dso_local global i64 0, align 8
@P2PSD_ACTION_ID_GAS_CREQ = common dso_local global i64 0, align 8
@P2P_AF_MED_DWELL_TIME = common dso_local global i32 0, align 4
@P2PSD_ACTION_ID_GAS_IRESP = common dso_local global i64 0, align 8
@P2PSD_ACTION_ID_GAS_CRESP = common dso_local global i64 0, align 8
@P2P_AF_MIN_DWELL_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown action type: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unknown Frame: category 0x%x, action 0x%x\0A\00", align 1
@BRCMF_VIF_STATUS_CONNECTING = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@BRCMF_SCAN_STATUS_BUSY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_SENDING_ACT_FRAME = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@P2P_INVALID_CHANNEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Couldn't find peer's channel.\0A\00", align 1
@P2P_AF_TX_MAX_RETRY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to send Action Frame(retry %d)\0A\00", align 1
@BRCMF_P2P_STATUS_GO_NEG_PHASE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Wait more time! actual af time:%d, calculated extra listen:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_send_action_frame(%struct.brcmf_cfg80211_info* %0, %struct.net_device* %1, %struct.brcmf_fil_af_params_le* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.brcmf_fil_af_params_le*, align 8
  %8 = alloca %struct.brcmf_p2p_info*, align 8
  %9 = alloca %struct.brcmf_if*, align 8
  %10 = alloca %struct.brcmf_fil_action_frame_le*, align 8
  %11 = alloca %struct.brcmf_config_af_params, align 4
  %12 = alloca %struct.afx_hdl*, align 8
  %13 = alloca %struct.brcmf_pub*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.brcmf_fil_af_params_le* %2, %struct.brcmf_fil_af_params_le** %7, align 8
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %22, i32 0, i32 2
  store %struct.brcmf_p2p_info* %23, %struct.brcmf_p2p_info** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %24)
  store %struct.brcmf_if* %25, %struct.brcmf_if** %9, align 8
  %26 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %27 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %26, i32 0, i32 7
  store %struct.afx_hdl* %27, %struct.afx_hdl** %12, align 8
  %28 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %28, i32 0, i32 1
  %30 = load %struct.brcmf_pub*, %struct.brcmf_pub** %29, align 8
  store %struct.brcmf_pub* %30, %struct.brcmf_pub** %13, align 8
  store i32 0, i32* %15, align 4
  %31 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %32 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %31, i32 0, i32 2
  store %struct.brcmf_fil_action_frame_le* %32, %struct.brcmf_fil_action_frame_le** %10, align 8
  %33 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %34 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %38 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @brcmf_p2p_print_actframe(i32 1, i64* %39, i32 %40)
  %42 = load i32, i32* @P2P_AF_DWELL_TIME, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %45 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %47 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @DOT11_ACTION_CAT_OFF, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %16, align 8
  %52 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %53 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @DOT11_ACTION_ACT_OFF, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* @P2P_PAF_SUBTYPE_INVALID, align 8
  %59 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %60 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %62 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 0
  store i32 -1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %67 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @brcmf_p2p_is_pub_action(i64* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %3
  %73 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %74 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %75 = call i64 @brcmf_p2p_pub_af_tx(%struct.brcmf_cfg80211_info* %73, %struct.brcmf_fil_af_params_le* %74, %struct.brcmf_config_af_params* %11)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %79 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72
  br label %140

81:                                               ; preds = %3
  %82 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %83 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i64 @brcmf_p2p_is_gas_action(i64* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %125

88:                                               ; preds = %81
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* @P2PSD_ACTION_ID_GAS_IREQ, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* @P2PSD_ACTION_ID_GAS_CREQ, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92, %88
  %97 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load i64, i64* %17, align 8
  %99 = add nsw i64 %98, 1
  %100 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %101 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @P2P_AF_MED_DWELL_TIME, align 4
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %105 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %124

106:                                              ; preds = %92
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @P2PSD_ACTION_ID_GAS_IRESP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* @P2PSD_ACTION_ID_GAS_CRESP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @P2P_AF_MIN_DWELL_TIME, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %118 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %123

119:                                              ; preds = %110
  %120 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %121 = load i64, i64* %17, align 8
  %122 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  br label %280

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %96
  br label %139

125:                                              ; preds = %81
  %126 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %127 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @brcmf_p2p_is_p2p_action(i64* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %138

133:                                              ; preds = %125
  %134 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %17, align 8
  %137 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %134, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %135, i64 %136)
  store i32 0, i32* %4, align 4
  br label %391

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %124
  br label %140

140:                                              ; preds = %139, %80
  %141 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %142 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %143 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %142, i32 0, i32 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = call i64 @test_bit(i32 %141, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = call i32 @msleep(i32 50)
  br label %154

154:                                              ; preds = %152, %140
  %155 = load i32, i32* @BRCMF_SCAN_STATUS_BUSY, align 4
  %156 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %157 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %156, i32 0, i32 0
  %158 = call i64 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %162 = call i32 @brcmf_abort_scanning(%struct.brcmf_cfg80211_info* %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load %struct.afx_hdl*, %struct.afx_hdl** %12, align 8
  %165 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.brcmf_fil_action_frame_le*, %struct.brcmf_fil_action_frame_le** %10, align 8
  %168 = getelementptr inbounds %struct.brcmf_fil_action_frame_le, %struct.brcmf_fil_action_frame_le* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ETH_ALEN, align 4
  %171 = call i32 @memcpy(i32 %166, i32 %169, i32 %170)
  %172 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %177 = call i32 @brcmf_set_mpc(%struct.brcmf_if* %176, i32 0)
  br label %178

178:                                              ; preds = %175, %163
  %179 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %180 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @P2P_PAF_SUBTYPE_INVALID, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, align 4
  %186 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %187 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %186, i32 0, i32 4
  %188 = call i32 @set_bit(i32 %185, i32* %187)
  br label %189

189:                                              ; preds = %184, %178
  %190 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %191 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* @BRCMF_P2P_STATUS_SENDING_ACT_FRAME, align 4
  %193 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %194 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %193, i32 0, i32 4
  %195 = call i32 @set_bit(i32 %192, i32* %194)
  %196 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %244

199:                                              ; preds = %189
  %200 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %201 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @le32_to_cpu(i8* %202)
  %204 = call i64 @IS_P2P_SOCIAL_CHANNEL(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %244

206:                                              ; preds = %199
  %207 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %208 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %207, i32 0, i32 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %244

218:                                              ; preds = %206
  %219 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %220 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %219, i32 0, i32 7
  store %struct.afx_hdl* %220, %struct.afx_hdl** %12, align 8
  %221 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %222 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @le32_to_cpu(i8* %223)
  %225 = load %struct.afx_hdl*, %struct.afx_hdl** %12, align 8
  %226 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %225, i32 0, i32 2
  store i64 %224, i64* %226, align 8
  %227 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %228 = call i64 @brcmf_p2p_af_searching_channel(%struct.brcmf_p2p_info* %227)
  %229 = load i64, i64* @P2P_INVALID_CHANNEL, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %218
  %232 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %233 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %280

234:                                              ; preds = %218
  %235 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %236 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %237 = call i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info* %235, %struct.brcmf_if* %236, i32 1, i32 1)
  %238 = load %struct.afx_hdl*, %struct.afx_hdl** %12, align 8
  %239 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %243 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %234, %206, %199, %189
  store i64 0, i64* %18, align 8
  br label %245

245:                                              ; preds = %259, %244
  %246 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %247 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %245
  %251 = load i32, i32* %15, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i64, i64* %18, align 8
  %255 = load i64, i64* @P2P_AF_TX_MAX_RETRY, align 8
  %256 = icmp slt i64 %254, %255
  br label %257

257:                                              ; preds = %253, %250, %245
  %258 = phi i1 [ false, %250 ], [ false, %245 ], [ %256, %253 ]
  br i1 %258, label %259, label %268

259:                                              ; preds = %257
  %260 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %261 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %262 = call i32 @brcmf_p2p_tx_action_frame(%struct.brcmf_p2p_info* %260, %struct.brcmf_fil_af_params_le* %261)
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  store i32 %265, i32* %15, align 4
  %266 = load i64, i64* %18, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %18, align 8
  br label %245

268:                                              ; preds = %257
  %269 = load i32, i32* %15, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %273 = load i64, i64* %18, align 8
  %274 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %272, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %273)
  %275 = load i32, i32* @BRCMF_P2P_STATUS_GO_NEG_PHASE, align 4
  %276 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %277 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %276, i32 0, i32 4
  %278 = call i32 @clear_bit(i32 %275, i32* %277)
  br label %279

279:                                              ; preds = %271, %268
  br label %280

280:                                              ; preds = %279, %231, %119
  %281 = load i32, i32* @BRCMF_P2P_STATUS_SENDING_ACT_FRAME, align 4
  %282 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %283 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %282, i32 0, i32 4
  %284 = call i32 @clear_bit(i32 %281, i32* %283)
  %285 = load i32, i32* %15, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %370

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %370

291:                                              ; preds = %287
  %292 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %293 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %370, label %296

296:                                              ; preds = %291
  %297 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, align 4
  %298 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %299 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %298, i32 0, i32 4
  %300 = call i64 @test_bit(i32 %297, i32* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %370

302:                                              ; preds = %296
  %303 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %304 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.afx_hdl*, %struct.afx_hdl** %12, align 8
  %307 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %305, %308
  br i1 %309, label %310, label %370

310:                                              ; preds = %302
  %311 = load i64, i64* @jiffies, align 8
  %312 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %313 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = sub nsw i64 %311, %314
  %316 = call i64 @jiffies_to_msecs(i64 %315)
  store i64 %316, i64* %20, align 8
  %317 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %318 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i64 @le32_to_cpu(i8* %319)
  %321 = load i64, i64* %20, align 8
  %322 = icmp sgt i64 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %310
  %324 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %325 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i64 @le32_to_cpu(i8* %326)
  %328 = load i64, i64* %20, align 8
  %329 = sub nsw i64 %327, %328
  store i64 %329, i64* %19, align 8
  br label %331

330:                                              ; preds = %310
  store i64 0, i64* %19, align 8
  br label %331

331:                                              ; preds = %330, %323
  %332 = load i64, i64* %19, align 8
  %333 = icmp sgt i64 %332, 50
  br i1 %333, label %334, label %369

334:                                              ; preds = %331
  %335 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN, align 4
  %336 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %337 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %336, i32 0, i32 4
  %338 = call i32 @set_bit(i32 %335, i32* %337)
  %339 = load i32, i32* @INFO, align 4
  %340 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %7, align 8
  %341 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = call i64 @le32_to_cpu(i8* %342)
  %344 = load i64, i64* %19, align 8
  %345 = call i32 @brcmf_dbg(i32 %339, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i64 %343, i64 %344)
  %346 = load i64, i64* %19, align 8
  %347 = add nsw i64 %346, 100
  store i64 %347, i64* %19, align 8
  %348 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %349 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %350 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %19, align 8
  %353 = call i32 @brcmf_p2p_discover_listen(%struct.brcmf_p2p_info* %348, i64 %351, i64 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %364, label %355

355:                                              ; preds = %334
  %356 = load i64, i64* %19, align 8
  %357 = add nsw i64 %356, 100
  store i64 %357, i64* %19, align 8
  %358 = load i64, i64* %19, align 8
  %359 = call i64 @msecs_to_jiffies(i64 %358)
  store i64 %359, i64* %21, align 8
  %360 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %361 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %360, i32 0, i32 5
  %362 = load i64, i64* %21, align 8
  %363 = call i32 @wait_for_completion_timeout(i32* %361, i64 %362)
  br label %364

364:                                              ; preds = %355, %334
  %365 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN, align 4
  %366 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %367 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %366, i32 0, i32 4
  %368 = call i32 @clear_bit(i32 %365, i32* %367)
  br label %369

369:                                              ; preds = %364, %331
  br label %370

370:                                              ; preds = %369, %302, %296, %291, %287, %280
  %371 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %372 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %370
  %376 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %377 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %376, i32 0, i32 3
  store i32 0, i32* %377, align 8
  store i32 1, i32* %15, align 4
  br label %378

378:                                              ; preds = %375, %370
  %379 = load i32, i32* @BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, align 4
  %380 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %8, align 8
  %381 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %380, i32 0, i32 4
  %382 = call i32 @clear_bit(i32 %379, i32* %381)
  %383 = getelementptr inbounds %struct.brcmf_config_af_params, %struct.brcmf_config_af_params* %11, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %389

386:                                              ; preds = %378
  %387 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %388 = call i32 @brcmf_set_mpc(%struct.brcmf_if* %387, i32 1)
  br label %389

389:                                              ; preds = %386, %378
  %390 = load i32, i32* %15, align 4
  store i32 %390, i32* %4, align 4
  br label %391

391:                                              ; preds = %389, %133
  %392 = load i32, i32* %4, align 4
  ret i32 %392
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brcmf_p2p_print_actframe(i32, i64*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @brcmf_p2p_is_pub_action(i64*, i32) #1

declare dso_local i64 @brcmf_p2p_pub_af_tx(%struct.brcmf_cfg80211_info*, %struct.brcmf_fil_af_params_le*, %struct.brcmf_config_af_params*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i64 @brcmf_p2p_is_gas_action(i64*, i32) #1

declare dso_local i64 @brcmf_p2p_is_p2p_action(i64*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @brcmf_abort_scanning(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @brcmf_set_mpc(%struct.brcmf_if*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @IS_P2P_SOCIAL_CHANNEL(i64) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i64 @brcmf_p2p_af_searching_channel(%struct.brcmf_p2p_info*) #1

declare dso_local i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_p2p_tx_action_frame(%struct.brcmf_p2p_info*, %struct.brcmf_fil_af_params_le*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @brcmf_p2p_discover_listen(%struct.brcmf_p2p_info*, i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
