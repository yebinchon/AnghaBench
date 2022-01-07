; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i64, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.wcn36xx_vif = type { i32, i32, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_sta = type { i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mac bss info changed vif %p changed 0x%08x\0A\00", align 1
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mac bss changed dtim period %d\0A\00", align 1
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"mac bss changed_bssid %pM\0A\00", align 1
@WCN36XX_HAL_BSS_INVALID_IDX = common dso_local global i8* null, align 8
@WCN36XX_HAL_LINK_PREASSOC_STATE = common dso_local global i32 0, align 4
@WCN36XX_HAL_LINK_IDLE_STATE = common dso_local global i32 0, align 4
@WCN36XX_HAL_ED_NONE = common dso_local global i32 0, align 4
@BSS_CHANGED_SSID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"mac bss changed ssid\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ssid \00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"mac assoc bss %pM vif %pM AID=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"sta %pM is not found\0A\00", align 1
@WCN36XX_HAL_LINK_POSTASSOC_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"disassociated bss %pM vif %pM AID=%d\0A\00", align 1
@BSS_CHANGED_AP_PROBE_RESP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"mac bss changed ap probe resp\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to alloc probereq skb\0A\00", align 1
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"mac bss changed beacon enabled %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to alloc beacon skb\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@WCN36XX_HAL_LINK_IBSS_STATE = common dso_local global i32 0, align 4
@WCN36XX_HAL_LINK_AP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wcn36xx_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wcn36xx*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wcn36xx_vif*, align 8
  %15 = alloca %struct.ieee80211_sta*, align 8
  %16 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.wcn36xx*, %struct.wcn36xx** %18, align 8
  store %struct.wcn36xx* %19, %struct.wcn36xx** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %20)
  store %struct.wcn36xx_vif* %21, %struct.wcn36xx_vif** %14, align 8
  %22 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_vif* %23, i32 %24)
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %4
  %34 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %35 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %33, %4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %44
  %50 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @is_zero_ether_addr(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %49
  %61 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %62 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i8*, i8** @WCN36XX_HAL_BSS_INVALID_IDX, align 8
  %64 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %65 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %67 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @WCN36XX_HAL_LINK_PREASSOC_STATE, align 4
  %74 = call i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %66, i32 %69, i32 %72, i32 %73)
  %75 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %76 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %83 = call i32 @WCN36XX_HW_CHANNEL(%struct.wcn36xx* %82)
  %84 = call i32 @wcn36xx_smd_join(%struct.wcn36xx* %75, i32 %78, i32 %81, i32 %83)
  %85 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %86 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %87 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @wcn36xx_smd_config_bss(%struct.wcn36xx* %85, %struct.ieee80211_vif* %86, %struct.ieee80211_sta* null, i32 %89, i32 0)
  br label %109

91:                                               ; preds = %49
  %92 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %93 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %95 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %96 = call i32 @wcn36xx_smd_delete_bss(%struct.wcn36xx* %94, %struct.ieee80211_vif* %95)
  %97 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %98 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @WCN36XX_HAL_LINK_IDLE_STATE, align 4
  %105 = call i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %97, i32 %100, i32 %103, i32 %104)
  %106 = load i32, i32* @WCN36XX_HAL_ED_NONE, align 4
  %107 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %108 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %91, %60
  br label %110

110:                                              ; preds = %109, %44
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @BSS_CHANGED_SSID, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %117 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %119 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @wcn36xx_dbg_dump(i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %130 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %133 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %136 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %139 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @memcpy(i32* %134, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %115, %110
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %236

147:                                              ; preds = %142
  %148 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %149 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %151 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %212

154:                                              ; preds = %147
  %155 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %156 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %157 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %160 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %161, i32 %164)
  %166 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %167 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %169 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %168, i32 %171)
  store %struct.ieee80211_sta* %172, %struct.ieee80211_sta** %15, align 8
  %173 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %174 = icmp ne %struct.ieee80211_sta* %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %154
  %176 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %177 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  br label %348

180:                                              ; preds = %154
  %181 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %182 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %181)
  store %struct.wcn36xx_sta* %182, %struct.wcn36xx_sta** %16, align 8
  %183 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %184 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %185 = call i32 @WCN36XX_BAND(%struct.wcn36xx* %184)
  %186 = call i32 @wcn36xx_update_allowed_rates(%struct.ieee80211_sta* %183, i32 %185)
  %187 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %188 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %189 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %192 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @WCN36XX_HAL_LINK_POSTASSOC_STATE, align 4
  %195 = call i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %187, i32 %190, i32 %193, i32 %194)
  %196 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %197 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %198 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %199 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %200 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @wcn36xx_smd_config_bss(%struct.wcn36xx* %196, %struct.ieee80211_vif* %197, %struct.ieee80211_sta* %198, i32 %201, i32 1)
  %203 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %204 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %16, align 8
  %207 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  %208 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %209 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %210 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %211 = call i32 @wcn36xx_smd_config_sta(%struct.wcn36xx* %208, %struct.ieee80211_vif* %209, %struct.ieee80211_sta* %210)
  br label %235

212:                                              ; preds = %147
  %213 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %214 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %221 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %213, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %216, i32 %219, i32 %222)
  %224 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %225 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %224, i32 0, i32 1
  store i32 0, i32* %225, align 4
  %226 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %227 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %228 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %231 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @WCN36XX_HAL_LINK_IDLE_STATE, align 4
  %234 = call i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %226, i32 %229, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %212, %180
  br label %236

236:                                              ; preds = %235, %142
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @BSS_CHANGED_AP_PROBE_RESP, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %236
  %242 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %243 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %242, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %244 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %245 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %246 = call %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw* %244, %struct.ieee80211_vif* %245)
  store %struct.sk_buff* %246, %struct.sk_buff** %10, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %248 = icmp ne %struct.sk_buff* %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %241
  %250 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %348

251:                                              ; preds = %241
  %252 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %253 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %254 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %255 = call i32 @wcn36xx_smd_update_proberesp_tmpl(%struct.wcn36xx* %252, %struct.ieee80211_vif* %253, %struct.sk_buff* %254)
  %256 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %257 = call i32 @dev_kfree_skb(%struct.sk_buff* %256)
  br label %258

258:                                              ; preds = %251, %236
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %347

268:                                              ; preds = %263, %258
  %269 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %270 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %271 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %269, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %272)
  %274 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %275 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %333

278:                                              ; preds = %268
  %279 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %280 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %283 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load i8*, i8** @WCN36XX_HAL_BSS_INVALID_IDX, align 8
  %285 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %286 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %288 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %289 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %290 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @wcn36xx_smd_config_bss(%struct.wcn36xx* %287, %struct.ieee80211_vif* %288, %struct.ieee80211_sta* null, i32 %291, i32 0)
  %293 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %294 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %295 = call %struct.sk_buff* @ieee80211_beacon_get_tim(%struct.ieee80211_hw* %293, %struct.ieee80211_vif* %294, i32* %11, i32* %12)
  store %struct.sk_buff* %295, %struct.sk_buff** %10, align 8
  %296 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %297 = icmp ne %struct.sk_buff* %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %278
  %299 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %348

300:                                              ; preds = %278
  %301 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %302 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %303 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %304 = load i32, i32* %11, align 4
  %305 = call i32 @wcn36xx_smd_send_beacon(%struct.wcn36xx* %301, %struct.ieee80211_vif* %302, %struct.sk_buff* %303, i32 %304, i32 0)
  %306 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %307 = call i32 @dev_kfree_skb(%struct.sk_buff* %306)
  %308 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %309 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %319, label %313

313:                                              ; preds = %300
  %314 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %315 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %313, %300
  %320 = load i32, i32* @WCN36XX_HAL_LINK_IBSS_STATE, align 4
  store i32 %320, i32* %13, align 4
  br label %323

321:                                              ; preds = %313
  %322 = load i32, i32* @WCN36XX_HAL_LINK_AP_STATE, align 4
  store i32 %322, i32* %13, align 4
  br label %323

323:                                              ; preds = %321, %319
  %324 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %325 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %326 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %329 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %13, align 4
  %332 = call i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %324, i32 %327, i32 %330, i32 %331)
  br label %346

333:                                              ; preds = %268
  %334 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %335 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %336 = call i32 @wcn36xx_smd_delete_bss(%struct.wcn36xx* %334, %struct.ieee80211_vif* %335)
  %337 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %338 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %339 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %342 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @WCN36XX_HAL_LINK_IDLE_STATE, align 4
  %345 = call i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %337, i32 %340, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %333, %323
  br label %347

347:                                              ; preds = %346, %263
  br label %348

348:                                              ; preds = %347, %298, %249, %175
  %349 = load %struct.wcn36xx*, %struct.wcn36xx** %9, align 8
  %350 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %349, i32 0, i32 0
  %351 = call i32 @mutex_unlock(i32* %350)
  ret void
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx*, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_join(%struct.wcn36xx*, i32, i32, i32) #1

declare dso_local i32 @WCN36XX_HW_CHANNEL(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_config_bss(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_delete_bss(%struct.wcn36xx*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @wcn36xx_update_allowed_rates(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @WCN36XX_BAND(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_config_sta(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_smd_update_proberesp_tmpl(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get_tim(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, i32*) #1

declare dso_local i32 @wcn36xx_smd_send_beacon(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
