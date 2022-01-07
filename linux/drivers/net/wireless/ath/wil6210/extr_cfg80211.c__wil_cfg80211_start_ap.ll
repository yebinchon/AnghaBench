; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_beacon_data = type { i32, i32 }
%struct.wil6210_priv = type { i32, i32 }
%struct.wil6210_vif = type { i32, i64, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@WMI_NETTYPE_P2P = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"start_ap: mid=%d, is_go=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"P2P GO must be in PBSS\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@fw_recovery_idle = common dso_local global i32 0, align 4
@WLAN_EID_MOBILITY_DOMAIN = common dso_local global i32 0, align 4
@WMI_FW_CAPABILITY_FT_ROAMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"FW does not support FT roaming\0A\00", align 1
@wil_vif_ft_roam = common dso_local global i32 0, align 4
@WIL_MAX_BUS_REQUEST_KBPS = common dso_local global i32 0, align 4
@WIL_DEFAULT_BUS_REQUEST_KBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i8**, i64, i8*, i32, i8*, i8*, %struct.cfg80211_beacon_data*, i8*, i8*)* @_wil_cfg80211_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wil_cfg80211_start_ap(%struct.wiphy* %0, %struct.net_device* %1, i8** %2, i64 %3, i8* %4, i32 %5, i8* %6, i8* %7, %struct.cfg80211_beacon_data* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.wiphy*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.cfg80211_beacon_data*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.wil6210_priv*, align 8
  %25 = alloca %struct.wil6210_vif*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.wireless_dev*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8**, align 8
  %32 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %13, align 8
  store %struct.net_device* %1, %struct.net_device** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i64 %3, i64* %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store %struct.cfg80211_beacon_data* %8, %struct.cfg80211_beacon_data** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %33 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %34 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %33)
  store %struct.wil6210_priv* %34, %struct.wil6210_priv** %24, align 8
  %35 = load %struct.net_device*, %struct.net_device** %14, align 8
  %36 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %35)
  store %struct.wil6210_vif* %36, %struct.wil6210_vif** %25, align 8
  %37 = load %struct.net_device*, %struct.net_device** %14, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %38, align 8
  store %struct.wireless_dev* %39, %struct.wireless_dev** %27, align 8
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %27, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @wil_iftype_nl2wmi(i64 %42)
  store i8* %43, i8** %28, align 8
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %27, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %29, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %32, align 4
  %52 = load i8*, i8** %23, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %11
  %55 = load i8*, i8** @WMI_NETTYPE_P2P, align 8
  store i8* %55, i8** %28, align 8
  br label %56

56:                                               ; preds = %54, %11
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %58 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %59 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %29, align 8
  %62 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %61)
  %63 = load i8*, i8** %29, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load i8*, i8** %23, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %70 = call i32 @wil_err(%struct.wil6210_priv* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %226

73:                                               ; preds = %65, %56
  %74 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %75 = load i32, i32* @fw_recovery_idle, align 4
  %76 = call i32 @wil_set_recovery_state(%struct.wil6210_priv* %74, i32 %75)
  %77 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %21, align 8
  %78 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %21, align 8
  %81 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8** @_wil_cfg80211_get_proberesp_ies(i32 %79, i32 %82, i64* %30)
  store i8** %83, i8*** %31, align 8
  %84 = load i8**, i8*** %31, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %73
  %87 = load i64, i64* %30, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* @WLAN_EID_MOBILITY_DOMAIN, align 4
  %91 = load i8**, i8*** %31, align 8
  %92 = load i64, i64* %30, align 8
  %93 = call i64 @cfg80211_find_ie(i32 %90, i8** %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %32, align 4
  br label %96

96:                                               ; preds = %95, %89, %86, %73
  %97 = load i32, i32* %32, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i32, i32* @WMI_FW_CAPABILITY_FT_ROAMING, align 4
  %101 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %102 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @test_bit(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %108 = call i32 @wil_err(%struct.wil6210_priv* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %226

111:                                              ; preds = %99
  %112 = load i32, i32* @wil_vif_ft_roam, align 4
  %113 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %114 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @set_bit(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %96
  %118 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %119 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %118, i32 0, i32 0
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %122 = load %struct.net_device*, %struct.net_device** %14, align 8
  %123 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %121, %struct.net_device* %122, i32 1, i32 0)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %117
  %126 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %127 = call i32 @__wil_down(%struct.wil6210_priv* %126)
  %128 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %129 = call i32 @__wil_up(%struct.wil6210_priv* %128)
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %26, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %221

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %117
  %135 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i8**, i8*** %15, align 8
  %138 = call i32 @wmi_set_ssid(%struct.wil6210_vif* %135, i64 %136, i8** %137)
  store i32 %138, i32* %26, align 4
  %139 = load i32, i32* %26, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %221

142:                                              ; preds = %134
  %143 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %144 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %21, align 8
  %145 = call i32 @_wil_cfg80211_set_ies(%struct.wil6210_vif* %143, %struct.cfg80211_beacon_data* %144)
  store i32 %145, i32* %26, align 4
  %146 = load i32, i32* %26, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %221

149:                                              ; preds = %142
  %150 = load i8*, i8** %17, align 8
  %151 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %152 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %151, i32 0, i32 7
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** %19, align 8
  %154 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %155 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %154, i32 0, i32 6
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** %20, align 8
  %157 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %158 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %157, i32 0, i32 5
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** %22, align 8
  %160 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %161 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** %23, align 8
  %163 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %164 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %167 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %169 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i8**, i8*** %15, align 8
  %172 = load i64, i64* %16, align 8
  %173 = call i32 @memcpy(i32 %170, i8** %171, i64 %172)
  %174 = load i64, i64* %16, align 8
  %175 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %176 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load %struct.net_device*, %struct.net_device** %14, align 8
  %178 = call i32 @netif_carrier_on(%struct.net_device* %177)
  %179 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %180 = load %struct.net_device*, %struct.net_device** %14, align 8
  %181 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %179, %struct.net_device* %180, i32 0, i32 1)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %149
  %184 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %185 = load i32, i32* @WIL_MAX_BUS_REQUEST_KBPS, align 4
  %186 = call i32 @wil6210_bus_request(%struct.wil6210_priv* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %149
  %188 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load i8*, i8** %28, align 8
  %191 = load i8*, i8** %19, align 8
  %192 = load i8*, i8** %20, align 8
  %193 = load i8*, i8** %22, align 8
  %194 = load i8*, i8** %29, align 8
  %195 = call i32 @wmi_pcp_start(%struct.wil6210_vif* %188, i32 %189, i8* %190, i8* %191, i8* %192, i8* %193, i8* %194)
  store i32 %195, i32* %26, align 4
  %196 = load i32, i32* %26, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %187
  br label %209

199:                                              ; preds = %187
  %200 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %201 = call i32 @wil_bcast_init(%struct.wil6210_vif* %200)
  store i32 %201, i32* %26, align 4
  %202 = load i32, i32* %26, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %206

205:                                              ; preds = %199
  br label %221

206:                                              ; preds = %204
  %207 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  %208 = call i32 @wmi_pcp_stop(%struct.wil6210_vif* %207)
  br label %209

209:                                              ; preds = %206, %198
  %210 = load %struct.net_device*, %struct.net_device** %14, align 8
  %211 = call i32 @netif_carrier_off(%struct.net_device* %210)
  %212 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %213 = load %struct.net_device*, %struct.net_device** %14, align 8
  %214 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %212, %struct.net_device* %213, i32 0, i32 1)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %209
  %217 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %218 = load i32, i32* @WIL_DEFAULT_BUS_REQUEST_KBPS, align 4
  %219 = call i32 @wil6210_bus_request(%struct.wil6210_priv* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %209
  br label %221

221:                                              ; preds = %220, %205, %148, %141, %132
  %222 = load %struct.wil6210_priv*, %struct.wil6210_priv** %24, align 8
  %223 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %222, i32 0, i32 0
  %224 = call i32 @mutex_unlock(i32* %223)
  %225 = load i32, i32* %26, align 4
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %221, %106, %68
  %227 = load i32, i32* %12, align 4
  ret i32 %227
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i8* @wil_iftype_nl2wmi(i64) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i8*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_set_recovery_state(%struct.wil6210_priv*, i32) #1

declare dso_local i8** @_wil_cfg80211_get_proberesp_ies(i32, i32, i64*) #1

declare dso_local i64 @cfg80211_find_ie(i32, i8**, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_has_other_active_ifaces(%struct.wil6210_priv*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @__wil_down(%struct.wil6210_priv*) #1

declare dso_local i32 @__wil_up(%struct.wil6210_priv*) #1

declare dso_local i32 @wmi_set_ssid(%struct.wil6210_vif*, i64, i8**) #1

declare dso_local i32 @_wil_cfg80211_set_ies(%struct.wil6210_vif*, %struct.cfg80211_beacon_data*) #1

declare dso_local i32 @memcpy(i32, i8**, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @wil6210_bus_request(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wmi_pcp_start(%struct.wil6210_vif*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @wil_bcast_init(%struct.wil6210_vif*) #1

declare dso_local i32 @wmi_pcp_stop(%struct.wil6210_vif*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
