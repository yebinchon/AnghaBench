; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32 }
%struct.ieee80211_vif = type { i64, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.ieee80211_sta = type { i32*, i64 }
%struct.ieee80211_key_conf = type { i64, i64, i64, i32 }
%struct.ath10k_vif = type { i64, i32, i32, %struct.ieee80211_key_conf**, i64 }
%struct.ath10k_peer = type { %struct.ieee80211_key_conf** }

@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_BIP_GMAC_128 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_BIP_GMAC_256 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_BIP_CMAC_256 = common dso_local global i64 0, align 8
@WMI_MAX_KEY_INDEX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@WMI_VDEV_TYPE_STA = common dso_local global i64 0, align 8
@SET_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to install key for non-existent peer %pM\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@WMI_KEY_PAIRWISE = common dso_local global i32 0, align 4
@WMI_KEY_GROUP = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@WMI_KEY_TX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to install key for vdev %i peer %pM: %d\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"failed to install (ucast) key for vdev %i peer %pM: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"failed to disable (mcast) key for vdev %i peer %pM: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Peer %pM disappeared!\0A\00", align 1
@WMI_PEER_AUTHORIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @ath10k_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.ath10k*, align 8
  %13 = alloca %struct.ath10k_vif*, align 8
  %14 = alloca %struct.ath10k_peer*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.ath10k*, %struct.ath10k** %22, align 8
  store %struct.ath10k* %23, %struct.ath10k** %12, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %28, %struct.ath10k_vif** %13, align 8
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %5
  %41 = phi i1 [ true, %5 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %43 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %44 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %40
  %49 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %50 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WLAN_CIPHER_SUITE_BIP_GMAC_128, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @WLAN_CIPHER_SUITE_BIP_GMAC_256, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WLAN_CIPHER_SUITE_BIP_CMAC_256, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54, %48, %40
  store i32 1, i32* %6, align 4
  br label %389

67:                                               ; preds = %60
  %68 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %69 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %389

73:                                               ; preds = %67
  %74 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WMI_MAX_KEY_INDEX, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %389

82:                                               ; preds = %73
  %83 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %84 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %83, i32 0, i32 0
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %87 = icmp ne %struct.ieee80211_sta* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %15, align 8
  br label %108

92:                                               ; preds = %82
  %93 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %94 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WMI_VDEV_TYPE_STA, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %100 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %15, align 8
  br label %107

103:                                              ; preds = %92
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %105 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %15, align 8
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %88
  %109 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %110 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %113 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @SET_KEY, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %122 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %123 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %122, i32 0, i32 3
  %124 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %123, align 8
  %125 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %126 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %124, i64 %127
  store %struct.ieee80211_key_conf* %121, %struct.ieee80211_key_conf** %128, align 8
  br label %137

129:                                              ; preds = %116
  %130 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %131 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %130, i32 0, i32 3
  %132 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %131, align 8
  %133 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %134 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %132, i64 %135
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %136, align 8
  br label %137

137:                                              ; preds = %129, %120
  br label %138

138:                                              ; preds = %137, %108
  %139 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %140 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %139, i32 0, i32 1
  %141 = call i32 @spin_lock_bh(i32* %140)
  %142 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %143 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %144 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %142, i32 %145, i32* %146)
  store %struct.ath10k_peer* %147, %struct.ath10k_peer** %14, align 8
  %148 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %149 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock_bh(i32* %149)
  %151 = load %struct.ath10k_peer*, %struct.ath10k_peer** %14, align 8
  %152 = icmp ne %struct.ath10k_peer* %151, null
  br i1 %152, label %164, label %153

153:                                              ; preds = %138
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @SET_KEY, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 (%struct.ath10k*, i8*, i32*, ...) @ath10k_warn(%struct.ath10k* %158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %159)
  %161 = load i32, i32* @EOPNOTSUPP, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %17, align 4
  br label %384

163:                                              ; preds = %153
  br label %384

164:                                              ; preds = %138
  %165 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %166 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* @WMI_KEY_PAIRWISE, align 4
  %173 = load i32, i32* %19, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %19, align 4
  br label %179

175:                                              ; preds = %164
  %176 = load i32, i32* @WMI_KEY_GROUP, align 4
  %177 = load i32, i32* %19, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %218

182:                                              ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @DISABLE_KEY, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %188 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %189 = call i32 @ath10k_clear_vdev_key(%struct.ath10k_vif* %187, %struct.ieee80211_key_conf* %188)
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %192 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @SET_KEY, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %202 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %203 = call i32 @ath10k_mac_vif_update_wep_key(%struct.ath10k_vif* %201, %struct.ieee80211_key_conf* %202)
  br label %204

204:                                              ; preds = %200, %196, %190
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @SET_KEY, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %210 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* @WMI_KEY_TX_USAGE, align 4
  %215 = load i32, i32* %19, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %19, align 4
  br label %217

217:                                              ; preds = %213, %208, %204
  br label %218

218:                                              ; preds = %217, %179
  %219 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %220 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32*, i32** %15, align 8
  %223 = load i32, i32* %19, align 4
  %224 = call i32 @ath10k_install_key(%struct.ath10k_vif* %219, %struct.ieee80211_key_conf* %220, i32 %221, i32* %222, i32 %223)
  store i32 %224, i32* %17, align 4
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %218
  %228 = load i32, i32* %17, align 4
  %229 = icmp sgt i32 %228, 0
  %230 = zext i1 %229 to i32
  %231 = call i32 @WARN_ON(i32 %230)
  %232 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %233 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %234 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i32*
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* %17, align 4
  %240 = call i32 (%struct.ath10k*, i8*, i32*, ...) @ath10k_warn(%struct.ath10k* %232, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32* %237, i32* %238, i32 %239)
  br label %384

241:                                              ; preds = %218
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %308

244:                                              ; preds = %241
  %245 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %246 = icmp ne %struct.ieee80211_sta* %245, null
  br i1 %246, label %308, label %247

247:                                              ; preds = %244
  %248 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %249 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %308

253:                                              ; preds = %247
  %254 = load i32, i32* %19, align 4
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* @WMI_KEY_GROUP, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %20, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %20, align 4
  %259 = load i32, i32* @WMI_KEY_PAIRWISE, align 4
  %260 = load i32, i32* %20, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %20, align 4
  %262 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %263 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %264 = load i32, i32* %8, align 4
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %20, align 4
  %267 = call i32 @ath10k_install_key(%struct.ath10k_vif* %262, %struct.ieee80211_key_conf* %263, i32 %264, i32* %265, i32 %266)
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %307

270:                                              ; preds = %253
  %271 = load i32, i32* %17, align 4
  %272 = icmp sgt i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @WARN_ON(i32 %273)
  %275 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %276 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %277 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32*, i32** %15, align 8
  %282 = load i32, i32* %17, align 4
  %283 = call i32 (%struct.ath10k*, i8*, i32*, ...) @ath10k_warn(%struct.ath10k* %275, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32* %280, i32* %281, i32 %282)
  %284 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %285 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %286 = load i32, i32* @DISABLE_KEY, align 4
  %287 = load i32*, i32** %15, align 8
  %288 = load i32, i32* %19, align 4
  %289 = call i32 @ath10k_install_key(%struct.ath10k_vif* %284, %struct.ieee80211_key_conf* %285, i32 %286, i32* %287, i32 %288)
  store i32 %289, i32* %18, align 4
  %290 = load i32, i32* %18, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %270
  %293 = load i32, i32* %18, align 4
  %294 = icmp sgt i32 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i32 @WARN_ON(i32 %295)
  %297 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %298 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %299 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i32*
  %303 = load i32*, i32** %15, align 8
  %304 = load i32, i32* %18, align 4
  %305 = call i32 (%struct.ath10k*, i8*, i32*, ...) @ath10k_warn(%struct.ath10k* %297, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32* %302, i32* %303, i32 %304)
  br label %306

306:                                              ; preds = %292, %270
  br label %384

307:                                              ; preds = %253
  br label %308

308:                                              ; preds = %307, %247, %244, %241
  %309 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %310 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %313 = call i32 @ath10k_set_key_h_def_keyidx(%struct.ath10k* %309, %struct.ath10k_vif* %310, i32 %311, %struct.ieee80211_key_conf* %312)
  %314 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %315 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %314, i32 0, i32 1
  %316 = call i32 @spin_lock_bh(i32* %315)
  %317 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %318 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %319 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %15, align 8
  %322 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %317, i32 %320, i32* %321)
  store %struct.ath10k_peer* %322, %struct.ath10k_peer** %14, align 8
  %323 = load %struct.ath10k_peer*, %struct.ath10k_peer** %14, align 8
  %324 = icmp ne %struct.ath10k_peer* %323, null
  br i1 %324, label %325, label %338

325:                                              ; preds = %308
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @SET_KEY, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %325
  %330 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %331 = load %struct.ath10k_peer*, %struct.ath10k_peer** %14, align 8
  %332 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %331, i32 0, i32 0
  %333 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %332, align 8
  %334 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %335 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %333, i64 %336
  store %struct.ieee80211_key_conf* %330, %struct.ieee80211_key_conf** %337, align 8
  br label %362

338:                                              ; preds = %325, %308
  %339 = load %struct.ath10k_peer*, %struct.ath10k_peer** %14, align 8
  %340 = icmp ne %struct.ath10k_peer* %339, null
  br i1 %340, label %341, label %353

341:                                              ; preds = %338
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* @DISABLE_KEY, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = load %struct.ath10k_peer*, %struct.ath10k_peer** %14, align 8
  %347 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %346, i32 0, i32 0
  %348 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %347, align 8
  %349 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %350 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %348, i64 %351
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %352, align 8
  br label %361

353:                                              ; preds = %341, %338
  %354 = load %struct.ath10k_peer*, %struct.ath10k_peer** %14, align 8
  %355 = icmp eq %struct.ath10k_peer* %354, null
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %358 = load i32*, i32** %15, align 8
  %359 = call i32 (%struct.ath10k*, i8*, i32*, ...) @ath10k_warn(%struct.ath10k* %357, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %358)
  br label %360

360:                                              ; preds = %356, %353
  br label %361

361:                                              ; preds = %360, %345
  br label %362

362:                                              ; preds = %361, %329
  %363 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %364 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %363, i32 0, i32 1
  %365 = call i32 @spin_unlock_bh(i32* %364)
  %366 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %367 = icmp ne %struct.ieee80211_sta* %366, null
  br i1 %367, label %368, label %383

368:                                              ; preds = %362
  %369 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %370 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %368
  %374 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %375 = load %struct.ath10k_vif*, %struct.ath10k_vif** %13, align 8
  %376 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %379 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* @WMI_PEER_AUTHORIZE, align 4
  %382 = call i32 @ath10k_wmi_peer_set_param(%struct.ath10k* %374, i32 %377, i32* %380, i32 %381, i32 1)
  br label %383

383:                                              ; preds = %373, %368, %362
  br label %384

384:                                              ; preds = %383, %306, %227, %163, %157
  %385 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %386 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %385, i32 0, i32 0
  %387 = call i32 @mutex_unlock(i32* %386)
  %388 = load i32, i32* %17, align 4
  store i32 %388, i32* %6, align 4
  br label %389

389:                                              ; preds = %384, %79, %72, %66
  %390 = load i32, i32* %6, align 4
  ret i32 %390
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32*, ...) #1

declare dso_local i32 @ath10k_clear_vdev_key(%struct.ath10k_vif*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath10k_mac_vif_update_wep_key(%struct.ath10k_vif*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath10k_install_key(%struct.ath10k_vif*, %struct.ieee80211_key_conf*, i32, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_set_key_h_def_keyidx(%struct.ath10k*, %struct.ath10k_vif*, i32, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath10k_wmi_peer_set_param(%struct.ath10k*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
