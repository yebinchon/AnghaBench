; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_lmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_lmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_7__*, %struct.iwl_scan_req_lmac* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_scan_req_lmac = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i8*, i32, i8*, i8*, i64, i8*, i32, i64 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_scan_params = type { i32, i32, i32, i64, %struct.TYPE_10__**, %struct.cfg80211_sched_scan_plan*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.iwl_scan_probe_req_v1 = type { i32 }

@IWL_MAX_SCHED_SCAN_PLANS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_FILTER_ACCEPT_GRP = common dso_local global i32 0, align 4
@MAC_FILTER_IN_BEACON = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_EBS = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_CACHE_ADD = common dso_local global i32 0, align 4
@IWL_DENSE_EBS_SCAN_RATIO = common dso_local global i32 0, align 4
@IWL_SPARSE_EBS_SCAN_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_scan_params*)* @iwl_mvm_scan_lmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_lmac(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mvm_scan_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_scan_params*, align 8
  %8 = alloca %struct.iwl_scan_req_lmac*, align 8
  %9 = alloca %struct.iwl_scan_probe_req_v1*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_sched_scan_plan*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.iwl_mvm_scan_params* %2, %struct.iwl_mvm_scan_params** %7, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 2
  %15 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %14, align 8
  store %struct.iwl_scan_req_lmac* %15, %struct.iwl_scan_req_lmac** %8, align 8
  %16 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 %18, %26
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.iwl_scan_probe_req_v1*
  store %struct.iwl_scan_probe_req_v1* %29, %struct.iwl_scan_probe_req_v1** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = call i32 @lockdep_assert_held(i32* %31)
  %33 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %34 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %35 = call i32 @ksize(%struct.iwl_scan_req_lmac* %34)
  %36 = call i32 @memset(%struct.iwl_scan_req_lmac* %33, i32 0, i32 %35)
  %37 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IWL_MAX_SCHED_SCAN_PLANS, align 4
  %41 = icmp sgt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %230

48:                                               ; preds = %3
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %50 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %51 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %52 = call i32 @iwl_mvm_scan_lmac_dwell(%struct.iwl_mvm* %49, %struct.iwl_scan_req_lmac* %50, %struct.iwl_mvm_scan_params* %51)
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %54 = call i32 @iwl_mvm_scan_rx_chain(%struct.iwl_mvm* %53)
  %55 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = call i8* @cpu_to_le32(i32 1)
  %58 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %59 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  %60 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %64 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %63, i32 0, i32 8
  store i64 %62, i64* %64, align 8
  %65 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %74 = call i32 @iwl_mvm_scan_lmac_flags(%struct.iwl_mvm* %71, %struct.iwl_mvm_scan_params* %72, %struct.ieee80211_vif* %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %78, i32 0, i32 4
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %80, i64 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @iwl_mvm_scan_rxon_flags(i32 %84)
  %86 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @MAC_FILTER_ACCEPT_GRP, align 4
  %89 = load i32, i32* @MAC_FILTER_IN_BEACON, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %93 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %95 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %96 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @iwl_mvm_scan_fill_tx_cmd(%struct.iwl_mvm* %94, i32 %97, i32 %100)
  %102 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %103 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %104 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @iwl_scan_build_ssids(%struct.iwl_mvm_scan_params* %102, i32 %105, i32* %10)
  %107 = load i32, i32* %10, align 4
  %108 = shl i32 %107, 1
  store i32 %108, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %150, %48
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %109
  %116 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %117 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %116, i32 0, i32 5
  %118 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %118, i64 %120
  store %struct.cfg80211_sched_scan_plan* %121, %struct.cfg80211_sched_scan_plan** %12, align 8
  %122 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %12, align 8
  %123 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %127 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i8* %125, i8** %132, align 8
  %133 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %12, align 8
  %134 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %137 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 %135, i32* %142, align 8
  %143 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %144 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %143, i32 0, i32 1
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %115
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %109

153:                                              ; preds = %109
  %154 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %155 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %153
  %165 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %166 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 255, i32* %172, align 8
  br label %173

173:                                              ; preds = %164, %153
  %174 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %175 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %176 = call i64 @iwl_mvm_scan_use_ebs(%struct.iwl_mvm* %174, %struct.ieee80211_vif* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %215

178:                                              ; preds = %173
  %179 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS, align 4
  %180 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_CACHE_ADD, align 4
  %183 = or i32 %181, %182
  %184 = call i8* @cpu_to_le16(i32 %183)
  %185 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %186 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i8* %184, i8** %189, align 8
  %190 = load i32, i32* @IWL_DENSE_EBS_SCAN_RATIO, align 4
  %191 = call i8* @cpu_to_le16(i32 %190)
  %192 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %193 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i8* %191, i8** %196, align 8
  %197 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS, align 4
  %198 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_CACHE_ADD, align 4
  %201 = or i32 %199, %200
  %202 = call i8* @cpu_to_le16(i32 %201)
  %203 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %204 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  store i8* %202, i8** %207, align 8
  %208 = load i32, i32* @IWL_SPARSE_EBS_SCAN_RATIO, align 4
  %209 = call i8* @cpu_to_le16(i32 %208)
  %210 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %211 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %210, i32 0, i32 0
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  store i8* %209, i8** %214, align 8
  br label %215

215:                                              ; preds = %178, %173
  %216 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %217 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %218 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %217, i32 0, i32 4
  %219 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %218, align 8
  %220 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %221 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %8, align 8
  %225 = call i32 @iwl_mvm_lmac_scan_cfg_channels(%struct.iwl_mvm* %216, %struct.TYPE_10__** %219, i64 %222, i32 %223, %struct.iwl_scan_req_lmac* %224)
  %226 = load %struct.iwl_scan_probe_req_v1*, %struct.iwl_scan_probe_req_v1** %9, align 8
  %227 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %7, align 8
  %228 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %227, i32 0, i32 2
  %229 = call i32 @iwl_mvm_scan_set_legacy_probe_req(%struct.iwl_scan_probe_req_v1* %226, i32* %228)
  store i32 0, i32* %4, align 4
  br label %230

230:                                              ; preds = %215, %45
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(%struct.iwl_scan_req_lmac*, i32, i32) #1

declare dso_local i32 @ksize(%struct.iwl_scan_req_lmac*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_scan_lmac_dwell(%struct.iwl_mvm*, %struct.iwl_scan_req_lmac*, %struct.iwl_mvm_scan_params*) #1

declare dso_local i32 @iwl_mvm_scan_rx_chain(%struct.iwl_mvm*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_scan_lmac_flags(%struct.iwl_mvm*, %struct.iwl_mvm_scan_params*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_scan_rxon_flags(i32) #1

declare dso_local i32 @iwl_mvm_scan_fill_tx_cmd(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_scan_build_ssids(%struct.iwl_mvm_scan_params*, i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @iwl_mvm_scan_use_ebs(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_lmac_scan_cfg_channels(%struct.iwl_mvm*, %struct.TYPE_10__**, i64, i32, %struct.iwl_scan_req_lmac*) #1

declare dso_local i32 @iwl_mvm_scan_set_legacy_probe_req(%struct.iwl_scan_probe_req_v1*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
