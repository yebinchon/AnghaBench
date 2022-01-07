; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_connect_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_connect_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.net_device* }
%struct.TYPE_7__ = type { i32, %struct.brcmf_cfg80211_profile }
%struct.brcmf_cfg80211_profile = type { i32 }
%struct.TYPE_6__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.brcmf_event_msg = type { i64, i64, i32 }
%struct.ieee80211_channel = type { i32 }

@BRCMF_E_DEAUTH = common dso_local global i64 0, align 8
@BRCMF_E_DEAUTH_IND = common dso_local global i64 0, align 8
@BRCMF_E_DISASSOC_IND = common dso_local global i64 0, align 8
@BRCMF_E_LINK = common dso_local global i64 0, align 8
@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Linkup\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_CONNECTING = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Linkdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_event_msg*, i8*)* @brcmf_notify_connect_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_notify_connect_status(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_event_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.brcmf_cfg80211_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %15, align 8
  store %struct.brcmf_cfg80211_info* %16, %struct.brcmf_cfg80211_info** %7, align 8
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store %struct.brcmf_cfg80211_profile* %23, %struct.brcmf_cfg80211_profile** %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %25 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BRCMF_E_DEAUTH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %52, label %29

29:                                               ; preds = %3
  %30 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %31 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BRCMF_E_DEAUTH_IND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %52, label %35

35:                                               ; preds = %29
  %36 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %37 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BRCMF_E_DISASSOC_IND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %43 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BRCMF_E_LINK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %49 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47, %35, %29, %3
  %53 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %54 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %57 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %60 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @brcmf_proto_delete_peer(%struct.TYPE_6__* %55, i32 %58, i32* %62)
  br label %64

64:                                               ; preds = %52, %47, %41
  %65 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %66 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i64 @brcmf_is_apmode(%struct.TYPE_7__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @brcmf_notify_connect_status_ap(%struct.brcmf_cfg80211_info* %71, %struct.net_device* %72, %struct.brcmf_event_msg* %73, i8* %74)
  store i32 %75, i32* %11, align 4
  br label %205

76:                                               ; preds = %64
  %77 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %78 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %81 = call i64 @brcmf_is_linkup(%struct.TYPE_7__* %79, %struct.brcmf_event_msg* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %140

83:                                               ; preds = %76
  %84 = load i32, i32* @CONN, align 4
  %85 = call i32 @brcmf_dbg(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %87 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call i64 @brcmf_is_ibssmode(%struct.TYPE_7__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %132

91:                                               ; preds = %83
  %92 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %93 = load %struct.net_device*, %struct.net_device** %8, align 8
  %94 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %95 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @brcmf_inform_ibss(%struct.brcmf_cfg80211_info* %92, %struct.net_device* %93, i64 %96)
  %98 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %99 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %102 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %100, i32 %103)
  store %struct.ieee80211_channel* %104, %struct.ieee80211_channel** %10, align 8
  %105 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %9, align 8
  %106 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %109 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32 %107, i64 %110, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %8, align 8
  %114 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %115 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i32 @cfg80211_ibss_joined(%struct.net_device* %113, i64 %116, %struct.ieee80211_channel* %117, i32 %118)
  %120 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %121 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %122 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32 @clear_bit(i32 %120, i32* %124)
  %126 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %127 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %128 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = call i32 @set_bit(i32 %126, i32* %130)
  br label %137

132:                                              ; preds = %83
  %133 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %134 = load %struct.net_device*, %struct.net_device** %8, align 8
  %135 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %136 = call i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info* %133, %struct.net_device* %134, %struct.brcmf_event_msg* %135, i32 1)
  br label %137

137:                                              ; preds = %132, %91
  %138 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %139 = call i32 @brcmf_net_setcarrier(%struct.brcmf_if* %138, i32 1)
  br label %204

140:                                              ; preds = %76
  %141 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %142 = call i64 @brcmf_is_linkdown(%struct.brcmf_event_msg* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %140
  %145 = load i32, i32* @CONN, align 4
  %146 = call i32 @brcmf_dbg(i32 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %148 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = call i64 @brcmf_is_ibssmode(%struct.TYPE_7__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %144
  %153 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %154 = load %struct.net_device*, %struct.net_device** %8, align 8
  %155 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %156 = call i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info* %153, %struct.net_device* %154, %struct.brcmf_event_msg* %155, i32 0)
  %157 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %158 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %161 = call i32 @brcmf_map_fw_linkdown_reason(%struct.brcmf_event_msg* %160)
  %162 = call i32 @brcmf_link_down(%struct.TYPE_7__* %159, i32 %161)
  %163 = load %struct.net_device*, %struct.net_device** %8, align 8
  %164 = call i32 @ndev_to_prof(%struct.net_device* %163)
  %165 = call i32 @brcmf_init_prof(i32 %164)
  %166 = load %struct.net_device*, %struct.net_device** %8, align 8
  %167 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %168 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %167)
  %169 = icmp ne %struct.net_device* %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %152
  %171 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %172 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %171, i32 0, i32 0
  %173 = call i32 @complete(i32* %172)
  br label %174

174:                                              ; preds = %170, %152
  %175 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %176 = call i32 @brcmf_net_setcarrier(%struct.brcmf_if* %175, i32 0)
  br label %177

177:                                              ; preds = %174, %144
  br label %203

178:                                              ; preds = %140
  %179 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %180 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %181 = call i64 @brcmf_is_nonetwork(%struct.brcmf_cfg80211_info* %179, %struct.brcmf_event_msg* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %178
  %184 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %185 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = call i64 @brcmf_is_ibssmode(%struct.TYPE_7__* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %191 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %192 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = call i32 @clear_bit(i32 %190, i32* %194)
  br label %201

196:                                              ; preds = %183
  %197 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %198 = load %struct.net_device*, %struct.net_device** %8, align 8
  %199 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %200 = call i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info* %197, %struct.net_device* %198, %struct.brcmf_event_msg* %199, i32 0)
  br label %201

201:                                              ; preds = %196, %189
  br label %202

202:                                              ; preds = %201, %178
  br label %203

203:                                              ; preds = %202, %177
  br label %204

204:                                              ; preds = %203, %137
  br label %205

205:                                              ; preds = %204, %70
  %206 = load i32, i32* %11, align 4
  ret i32 %206
}

declare dso_local i32 @brcmf_proto_delete_peer(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @brcmf_is_apmode(%struct.TYPE_7__*) #1

declare dso_local i32 @brcmf_notify_connect_status_ap(%struct.brcmf_cfg80211_info*, %struct.net_device*, %struct.brcmf_event_msg*, i8*) #1

declare dso_local i64 @brcmf_is_linkup(%struct.TYPE_7__*, %struct.brcmf_event_msg*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @brcmf_is_ibssmode(%struct.TYPE_7__*) #1

declare dso_local i32 @brcmf_inform_ibss(%struct.brcmf_cfg80211_info*, %struct.net_device*, i64) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @cfg80211_ibss_joined(%struct.net_device*, i64, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info*, %struct.net_device*, %struct.brcmf_event_msg*, i32) #1

declare dso_local i32 @brcmf_net_setcarrier(%struct.brcmf_if*, i32) #1

declare dso_local i64 @brcmf_is_linkdown(%struct.brcmf_event_msg*) #1

declare dso_local i32 @brcmf_link_down(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @brcmf_map_fw_linkdown_reason(%struct.brcmf_event_msg*) #1

declare dso_local i32 @brcmf_init_prof(i32) #1

declare dso_local i32 @ndev_to_prof(%struct.net_device*) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @brcmf_is_nonetwork(%struct.brcmf_cfg80211_info*, %struct.brcmf_event_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
