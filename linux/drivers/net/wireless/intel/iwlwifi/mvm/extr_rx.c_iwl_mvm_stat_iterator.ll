; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_stat_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_stat_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_mvm_stat_data = type { i32, %struct.mvm_statistics_general_v8*, i32, %struct.iwl_mvm* }
%struct.mvm_statistics_general_v8 = type { i32*, i32* }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.mvm_statistics_general = type { i32*, i32* }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"RSSI is 0 - skip signal based decision\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cqm_iterator bt coex high %d\0A\00", align 1
@RSSI_EVENT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cqm_iterator bt coex low %d\0A\00", align 1
@RSSI_EVENT_LOW = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"cqm_iterator cqm low %d\0A\00", align 1
@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cqm_iterator cqm high %d\0A\00", align 1
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_stat_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_stat_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_stat_data*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.iwl_mvm_vif*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mvm_statistics_general*, align 8
  %17 = alloca %struct.mvm_statistics_general_v8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.iwl_mvm_stat_data*
  store %struct.iwl_mvm_stat_data* %19, %struct.iwl_mvm_stat_data** %7, align 8
  %20 = load %struct.iwl_mvm_stat_data*, %struct.iwl_mvm_stat_data** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %20, i32 0, i32 3
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %21, align 8
  store %struct.iwl_mvm* %22, %struct.iwl_mvm** %8, align 8
  %23 = load %struct.iwl_mvm_stat_data*, %struct.iwl_mvm_stat_data** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.iwl_mvm_stat_data*, %struct.iwl_mvm_stat_data** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %13, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %40)
  store %struct.iwl_mvm_vif* %41, %struct.iwl_mvm_vif** %14, align 8
  %42 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %46 = call i64 @iwl_mvm_has_new_rx_stats_api(%struct.iwl_mvm* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %3
  %49 = load %struct.iwl_mvm_stat_data*, %struct.iwl_mvm_stat_data** %7, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %49, i32 0, i32 1
  %51 = load %struct.mvm_statistics_general_v8*, %struct.mvm_statistics_general_v8** %50, align 8
  %52 = bitcast %struct.mvm_statistics_general_v8* %51 to %struct.mvm_statistics_general*
  store %struct.mvm_statistics_general* %52, %struct.mvm_statistics_general** %16, align 8
  %53 = load %struct.mvm_statistics_general*, %struct.mvm_statistics_general** %16, align 8
  %54 = getelementptr inbounds %struct.mvm_statistics_general, %struct.mvm_statistics_general* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.mvm_statistics_general*, %struct.mvm_statistics_general** %16, align 8
  %64 = getelementptr inbounds %struct.mvm_statistics_general, %struct.mvm_statistics_general* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %97

73:                                               ; preds = %3
  %74 = load %struct.iwl_mvm_stat_data*, %struct.iwl_mvm_stat_data** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %74, i32 0, i32 1
  %76 = load %struct.mvm_statistics_general_v8*, %struct.mvm_statistics_general_v8** %75, align 8
  store %struct.mvm_statistics_general_v8* %76, %struct.mvm_statistics_general_v8** %17, align 8
  %77 = load %struct.mvm_statistics_general_v8*, %struct.mvm_statistics_general_v8** %17, align 8
  %78 = getelementptr inbounds %struct.mvm_statistics_general_v8, %struct.mvm_statistics_general_v8* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load %struct.mvm_statistics_general_v8*, %struct.mvm_statistics_general_v8** %17, align 8
  %88 = getelementptr inbounds %struct.mvm_statistics_general_v8, %struct.mvm_statistics_general_v8* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 0, %92
  %94 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %73, %48
  %98 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %263

104:                                              ; preds = %97
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %263

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %116 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_mvm* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %263

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %125, %129
  br i1 %130, label %131, label %195

131:                                              ; preds = %117
  %132 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %136, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %131
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sle i32 %143, %147
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149, %142
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_mvm* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %161 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %162 = load i32, i32* @RSSI_EVENT_HIGH, align 4
  %163 = call i32 @iwl_mvm_bt_rssi_event(%struct.iwl_mvm* %160, %struct.ieee80211_vif* %161, i32 %162)
  br label %194

164:                                              ; preds = %149, %131
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %193

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %172, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178, %171
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  store i32 %182, i32* %185, align 4
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_mvm* %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  %189 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %190 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %191 = load i32, i32* @RSSI_EVENT_LOW, align 4
  %192 = call i32 @iwl_mvm_bt_rssi_event(%struct.iwl_mvm* %189, %struct.ieee80211_vif* %190, i32 %191)
  br label %193

193:                                              ; preds = %181, %178, %164
  br label %194

194:                                              ; preds = %193, %152
  br label %195

195:                                              ; preds = %194, %117
  %196 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %197 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %195
  br label %263

203:                                              ; preds = %195
  %204 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %205 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %236

210:                                              ; preds = %203
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %236

214:                                              ; preds = %210
  %215 = load i32, i32* %10, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %12, align 4
  %221 = sub nsw i32 %219, %220
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %217, %214
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %226 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  store i32 %224, i32* %227, align 8
  %228 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_mvm* %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %229)
  %231 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %232 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @GFP_KERNEL, align 4
  %235 = call i32 @ieee80211_cqm_rssi_notify(%struct.ieee80211_vif* %231, i32 %232, i32 %233, i32 %234)
  br label %263

236:                                              ; preds = %217, %210, %203
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %262

240:                                              ; preds = %236
  %241 = load i32, i32* %10, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %245, %246
  %248 = icmp sgt i32 %244, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %243, %240
  %250 = load i32, i32* %9, align 4
  %251 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %252 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 4
  store i32 %250, i32* %253, align 8
  %254 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %255 = load i32, i32* %9, align 4
  %256 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_mvm* %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  %257 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %258 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call i32 @ieee80211_cqm_rssi_notify(%struct.ieee80211_vif* %257, i32 %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %249, %243, %236
  br label %263

263:                                              ; preds = %103, %110, %114, %202, %262, %223
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i64 @iwl_mvm_has_new_rx_stats_api(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_bt_rssi_event(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @ieee80211_cqm_rssi_notify(%struct.ieee80211_vif*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
