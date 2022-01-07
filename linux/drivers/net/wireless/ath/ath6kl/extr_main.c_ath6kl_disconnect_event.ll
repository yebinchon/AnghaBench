; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_disconnect_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_disconnect_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, i32, i64, i32, %struct.TYPE_9__*, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.ath6kl* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ath6kl = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@AP_NETWORK = common dso_local global i64 0, align 8
@BSS_DISCONNECTED = common dso_local global i64 0, align 8
@WMI_AP_REASON_STA_ROAM = common dso_local global i32 0, align 4
@WMI_AP_REASON_MAX_STA = common dso_local global i32 0, align 4
@NL80211_CONN_FAIL_MAX_CLIENTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WMI_AP_REASON_ACL = common dso_local global i32 0, align 4
@NL80211_CONN_FAIL_BLOCKED_CLIENT = common dso_local global i32 0, align 4
@WMI_READY = common dso_local global i32 0, align 4
@MCAST_AID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"disconnect reason is %d\0A\00", align 1
@DISCONNECT_CMD = common dso_local global i64 0, align 8
@NONE_BSS_FILTER = common dso_local global i32 0, align 4
@CONNECT_PEND = common dso_local global i32 0, align 4
@ASSOC_FAILED = common dso_local global i64 0, align 8
@CSERV_DISCONNECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_disconnect_event(%struct.ath6kl_vif* %0, i64 %1, i64* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.ath6kl_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %15 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %14, i32 0, i32 12
  %16 = load %struct.ath6kl*, %struct.ath6kl** %15, align 8
  store %struct.ath6kl* %16, %struct.ath6kl** %13, align 8
  %17 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %18 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AP_NETWORK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %138

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @BSS_DISCONNECTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @WMI_AP_REASON_STA_ROAM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %32 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %36 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %40 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %45 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %30, %26, %22
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @WMI_AP_REASON_MAX_STA, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %52 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %51, i32 0, i32 5
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* @NL80211_CONN_FAIL_MAX_CLIENTS, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @cfg80211_conn_failed(%struct.TYPE_9__* %53, i64* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @WMI_AP_REASON_ACL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %64 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %63, i32 0, i32 5
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i32, i32* @NL80211_CONN_FAIL_BLOCKED_CLIENT, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @cfg80211_conn_failed(%struct.TYPE_9__* %65, i64* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %58
  %71 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ath6kl_remove_sta(%struct.ath6kl* %71, i64* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %262

77:                                               ; preds = %70
  %78 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %79 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %84 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %83, i32 0, i32 7
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %87 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %86, i32 0, i32 8
  %88 = call i32 @skb_queue_purge(i32* %87)
  %89 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %90 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %89, i32 0, i32 7
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load i32, i32* @WMI_READY, align 4
  %93 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %94 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %93, i32 0, i32 5
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %82
  %98 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %99 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %102 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MCAST_AID, align 4
  %105 = call i32 @ath6kl_wmi_set_pvb_cmd(i32 %100, i32 %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %97, %82
  br label %107

107:                                              ; preds = %106, %77
  %108 = load i64*, i64** %9, align 8
  %109 = call i32 @is_broadcast_ether_addr(i64* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %113 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @cfg80211_del_sta(%struct.TYPE_9__* %114, i64* %115, i32 %116)
  br label %118

118:                                              ; preds = %111, %107
  %119 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %120 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %119, i32 0, i32 5
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64*, i64** %9, align 8
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i64 @memcmp(i32 %123, i64* %124, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %130 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memset(i32 %131, i32 0, i32 4)
  %133 = load i32, i32* @CONNECTED, align 4
  %134 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %135 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %134, i32 0, i32 7
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  br label %137

137:                                              ; preds = %128, %118
  br label %262

138:                                              ; preds = %6
  %139 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i64*, i64** %11, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @ath6kl_cfg80211_disconnect_event(%struct.ath6kl_vif* %139, i64 %140, i64* %141, i64 %142, i64* %143, i32 %144)
  %146 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %147 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %146, i32 0, i32 9
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @aggr_reset_state(i32 %150)
  %152 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %153 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %152, i32 0, i32 8
  %154 = call i32 @del_timer(i32* %153)
  %155 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @ath6kl_dbg(i32 %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %156)
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @DISCONNECT_CMD, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %138
  %162 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %163 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @WMI_READY, align 4
  %168 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %169 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %168, i32 0, i32 5
  %170 = call i64 @test_bit(i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %174 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %177 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @NONE_BSS_FILTER, align 4
  %180 = call i32 @ath6kl_wmi_bssfilter_cmd(i32 %175, i32 %178, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %172, %166, %161
  br label %211

182:                                              ; preds = %138
  %183 = load i32, i32* @CONNECT_PEND, align 4
  %184 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %185 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %184, i32 0, i32 7
  %186 = call i32 @set_bit(i32 %183, i32* %185)
  %187 = load i64, i64* %8, align 8
  %188 = load i64, i64* @ASSOC_FAILED, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 17
  br i1 %192, label %205, label %193

193:                                              ; preds = %190, %182
  %194 = load i64, i64* %8, align 8
  %195 = load i64, i64* @ASSOC_FAILED, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = load i32, i32* %12, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %202 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %210

205:                                              ; preds = %200, %190
  %206 = load i32, i32* @CONNECTED, align 4
  %207 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %208 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %207, i32 0, i32 7
  %209 = call i32 @set_bit(i32 %206, i32* %208)
  br label %262

210:                                              ; preds = %200, %197, %193
  br label %211

211:                                              ; preds = %210, %181
  %212 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %213 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %214 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @ath6kl_check_ch_switch(%struct.ath6kl* %212, i32 %215)
  %217 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %218 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %217, i32 0, i32 6
  %219 = call i32 @spin_lock_bh(i32* %218)
  %220 = load i32, i32* @CONNECTED, align 4
  %221 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %222 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %221, i32 0, i32 7
  %223 = call i32 @clear_bit(i32 %220, i32* %222)
  %224 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %225 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %224, i32 0, i32 5
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = call i32 @netif_carrier_off(%struct.TYPE_9__* %226)
  %228 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %229 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %228, i32 0, i32 6
  %230 = call i32 @spin_unlock_bh(i32* %229)
  %231 = load i64, i64* %8, align 8
  %232 = load i64, i64* @CSERV_DISCONNECT, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %239, label %234

234:                                              ; preds = %211
  %235 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %236 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %242

239:                                              ; preds = %234, %211
  %240 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %241 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %240, i32 0, i32 2
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %239, %234
  %243 = load i64, i64* %8, align 8
  %244 = load i64, i64* @CSERV_DISCONNECT, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %248 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %247, i32 0, i32 2
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %246, %242
  %250 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %251 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %250, i32 0, i32 5
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = call i32 @netif_stop_queue(%struct.TYPE_9__* %252)
  %254 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %255 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @memset(i32 %256, i32 0, i32 4)
  %258 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %259 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  %260 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %261 = call i32 @ath6kl_tx_data_cleanup(%struct.ath6kl* %260)
  br label %262

262:                                              ; preds = %249, %205, %137, %76
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cfg80211_conn_failed(%struct.TYPE_9__*, i64*, i32, i32) #1

declare dso_local i32 @ath6kl_remove_sta(%struct.ath6kl*, i64*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i64*) #1

declare dso_local i32 @cfg80211_del_sta(%struct.TYPE_9__*, i64*, i32) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_cfg80211_disconnect_event(%struct.ath6kl_vif*, i64, i64*, i64, i64*, i32) #1

declare dso_local i32 @aggr_reset_state(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64) #1

declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_check_ch_switch(%struct.ath6kl*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @ath6kl_tx_data_cleanup(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
