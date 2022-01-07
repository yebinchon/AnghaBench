; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_build_scan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_build_scan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_ies = type { i32*, i32, i32, i32* }
%struct.iwl_mvm_scan_params = type { i32, %struct.TYPE_14__, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32*, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_9__, i64, i32, i32, i8*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT = common dso_local global i32 0, align 4
@WFA_TPC_IE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_scan_ies*, %struct.iwl_mvm_scan_params*)* @iwl_mvm_build_scan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_build_scan_probe(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_ies* %2, %struct.iwl_mvm_scan_params* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_ies*, align 8
  %8 = alloca %struct.iwl_mvm_scan_params*, align 8
  %9 = alloca %struct.ieee80211_mgmt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_ies* %2, %struct.ieee80211_scan_ies** %7, align 8
  store %struct.iwl_mvm_scan_params* %3, %struct.iwl_mvm_scan_params** %8, align 8
  %13 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %18, %struct.ieee80211_mgmt** %9, align 8
  %19 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @get_random_mask_addr(i32* %37, i32* %38, i32 %41)
  br label %52

43:                                               ; preds = %30
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* @IEEE80211_STYPE_PROBE_REQ, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eth_broadcast_addr(i32 %59)
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @eth_broadcast_addr(i32 %63)
  %65 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %10, align 8
  %72 = load i32, i32* @WLAN_EID_SSID, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  store i32 0, i32* %75, align 4
  %77 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = call i8* @cpu_to_le16(i32 26)
  %82 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %87 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %94 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = call i32* @iwl_mvm_copy_and_insert_ds_elem(%struct.iwl_mvm* %86, i32 %92, i32 %98, i32* %99)
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = ptrtoint i32* %101 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i8* @cpu_to_le16(i32 %110)
  %112 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i8* %111, i8** %117, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i8* %125, i8** %131, align 8
  %132 = load i32*, i32** %11, align 8
  store i32* %132, i32** %10, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @memcpy(i32* %133, i32 %139, i32 %145)
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = ptrtoint i32* %147 to i64
  %153 = ptrtoint i32* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i8* @cpu_to_le16(i32 %156)
  %158 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %159 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i8* %157, i8** %163, align 8
  %164 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @cpu_to_le16(i32 %169)
  %171 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %172 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i8* %170, i8** %176, align 8
  %177 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %178 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %10, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %188 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %191 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @memcpy(i32* %186, i32 %189, i32 %192)
  %194 = load i32*, i32** %10, align 8
  %195 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %196 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = ptrtoint i32* %194 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = trunc i64 %202 to i32
  %204 = call i8* @cpu_to_le16(i32 %203)
  %205 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %206 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  store i8* %204, i8** %208, align 8
  %209 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %210 = call i64 @iwl_mvm_rrm_scan_needed(%struct.iwl_mvm* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %238

212:                                              ; preds = %52
  %213 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %214 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %213, i32 0, i32 0
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* @IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT, align 4
  %218 = call i32 @fw_has_capa(i32* %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %238, label %220

220:                                              ; preds = %212
  %221 = load i32*, i32** %10, align 8
  %222 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %223 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = call i32 @iwl_mvm_add_tpc_report_ie(i32* %226)
  %228 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %229 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @WFA_TPC_IE_LEN, align 4
  %232 = add nsw i32 %230, %231
  %233 = call i8* @cpu_to_le16(i32 %232)
  %234 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %235 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  store i8* %233, i8** %237, align 8
  br label %247

238:                                              ; preds = %212, %52
  %239 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %240 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i8* @cpu_to_le16(i32 %241)
  %243 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %244 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  store i8* %242, i8** %246, align 8
  br label %247

247:                                              ; preds = %238, %220
  ret void
}

declare dso_local i32 @get_random_mask_addr(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32* @iwl_mvm_copy_and_insert_ds_elem(%struct.iwl_mvm*, i32, i32, i32*) #1

declare dso_local i64 @iwl_mvm_rrm_scan_needed(%struct.iwl_mvm*) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_add_tpc_report_ie(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
