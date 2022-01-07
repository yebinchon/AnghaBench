; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_scale_perform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_scale_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i64, i32, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, %struct.iwl_rate_scale_data*, i32 }
%struct.rs_rate = type { i32, i8* }
%struct.iwl_rate_scale_data = type { i64, i64, i32, i32 }
%struct.iwl_mvm_sta = type { i32 }

@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@IWL_INVALID_VALUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"Aggregation changed: prev %d current %d. Update expected TPT table\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Current Rate is not valid\0A\00", align 1
@LQ_NONE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"tbl->expected_tpt is NULL\0A\00", align 1
@IWL_MVM_RS_RATE_MIN_FAILURE_TH = common dso_local global i64 0, align 8
@IWL_MVM_RS_RATE_MIN_SUCCESS_TH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: Test Window: succ %d total %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"SWITCHING TO NEW TABLE SR: %d cur-tpt %d old-tpt %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"GOING BACK TO THE OLD TABLE: SR %d cur-tpt %d old-tpt %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"%s: cur_tpt %d SR %d low %d high %d low_tpt %d high_tpt %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"BT Coex forbids MIMO. Search for new config\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"At the bottom rate. Can't decrease\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"At the top rate. Can't increase\0A\00", align 1
@RS_STATE_STAY_IN_COLUMN = common dso_local global i32 0, align 4
@IWL_MVM_RS_80_20_FAR_RANGE_TWEAK = common dso_local global i64 0, align 8
@RS_STATE_SEARCH_CYCLE_STARTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [71 x i8] c"Start Search: update_lq %d done_search %d rs_state %d win->counter %d\0A\00", align 1
@RS_COLUMN_INVALID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [79 x i8] c"No more columns to explore in search cycle. Go to RS_STATE_SEARCH_CYCLE_ENDED\0A\00", align 1
@RS_STATE_SEARCH_CYCLE_ENDED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Switch to SEARCH TABLE:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, i32, i32)* @rs_rate_scale_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_rate_scale_perform(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_rate_scale_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.iwl_scale_tbl_info*, align 8
  %23 = alloca %struct.iwl_scale_tbl_info*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.iwl_mvm_sta*, align 8
  %30 = alloca %struct.rs_rate*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %33 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %34, i32* %12, align 4
  store %struct.iwl_rate_scale_data* null, %struct.iwl_rate_scale_data** %14, align 8
  %35 = load i8*, i8** @IWL_INVALID_VALUE, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i8*, i8** @IWL_INVALID_VALUE, align 8
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %16, align 4
  %39 = load i8*, i8** @IWL_INVALID_VALUE, align 8
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %17, align 4
  store i32 129, i32* %19, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %41 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %28, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %45 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %44)
  store %struct.iwl_mvm_sta* %45, %struct.iwl_mvm_sta** %29, align 8
  %46 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %29, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %57 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %5
  %61 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %24, align 8
  br label %69

64:                                               ; preds = %5
  %65 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %66 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @rs_search_tbl(i64 %67)
  store i64 %68, i64* %24, align 8
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %71 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %70, i32 0, i32 4
  %72 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %71, align 8
  %73 = load i64, i64* %24, align 8
  %74 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %72, i64 %73
  store %struct.iwl_scale_tbl_info* %74, %struct.iwl_scale_tbl_info** %22, align 8
  %75 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %76 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %75, i32 0, i32 0
  store %struct.rs_rate* %76, %struct.rs_rate** %30, align 8
  %77 = load i64, i64* %28, align 8
  %78 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %79 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %69
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %84 = load i64, i64* %28, align 8
  %85 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %86 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %83, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %84, i64 %87)
  %89 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %90 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %91 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %89, %struct.iwl_scale_tbl_info* %90)
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %93 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %94 = call i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm* %92, %struct.iwl_scale_tbl_info* %93)
  br label %95

95:                                               ; preds = %82, %69
  %96 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %97 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %13, align 4
  %99 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %100 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %101 = call i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %99, %struct.rs_rate* %100)
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = load i32, i32* %20, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %95
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %109 = call i32 @IWL_ERR(%struct.iwl_mvm* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %111 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %107
  %115 = load i8*, i8** @LQ_NONE, align 8
  %116 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %117 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %119 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  %120 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %121 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %120, i32 0, i32 4
  %122 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %121, align 8
  %123 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %124 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %122, i64 %125
  store %struct.iwl_scale_tbl_info* %126, %struct.iwl_scale_tbl_info** %22, align 8
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %128 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %129 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %130 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %131 = call i32 @rs_update_rate_tbl(%struct.iwl_mvm* %127, %struct.ieee80211_sta* %128, %struct.iwl_lq_sta* %129, %struct.iwl_scale_tbl_info* %130)
  br label %132

132:                                              ; preds = %114, %107
  br label %511

133:                                              ; preds = %95
  %134 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %135 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %140 = call i32 @IWL_ERR(%struct.iwl_mvm* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %511

141:                                              ; preds = %133
  %142 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %143 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %142, i32 0, i32 1
  %144 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %144, i64 %146
  store %struct.iwl_rate_scale_data* %147, %struct.iwl_rate_scale_data** %14, align 8
  %148 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %149 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %152 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  store i64 %154, i64* %18, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* @IWL_MVM_RS_RATE_MIN_FAILURE_TH, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %141
  %159 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %160 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IWL_MVM_RS_RATE_MIN_SUCCESS_TH, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %166 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %167 = call i32 @rs_pretty_rate(%struct.rs_rate* %166)
  %168 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %169 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %172 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %167, i64 %170, i64 %173)
  %175 = load i8*, i8** @IWL_INVALID_VALUE, align 8
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %178 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %180 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %179, i32 0)
  br label %511

181:                                              ; preds = %158, %141
  %182 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %183 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %245

186:                                              ; preds = %181
  %187 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %188 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %191 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = icmp sgt i32 %189, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %186
  %195 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %196 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %197 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %200 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %203 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %195, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %201, i32 %204)
  %206 = load i64, i64* %24, align 8
  %207 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %208 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %210 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %15, align 4
  br label %242

212:                                              ; preds = %186
  %213 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %214 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %215 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %218 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %221 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %213, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %216, i32 %219, i32 %222)
  %224 = load i8*, i8** @LQ_NONE, align 8
  %225 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %226 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  %227 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %228 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %24, align 8
  %230 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %231 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %230, i32 0, i32 4
  %232 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %231, align 8
  %233 = load i64, i64* %24, align 8
  %234 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %232, i64 %233
  store %struct.iwl_scale_tbl_info* %234, %struct.iwl_scale_tbl_info** %22, align 8
  %235 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %236 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %13, align 4
  %239 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %240 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %15, align 4
  store i64 1, i64* %21, align 8
  br label %242

242:                                              ; preds = %212, %194
  %243 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %244 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %243, i32 0, i32 1
  store i32 0, i32* %244, align 8
  store i64 1, i64* %25, align 8
  br label %359

245:                                              ; preds = %181
  %246 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %20, align 4
  %249 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %250 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @rs_get_adjacent_rate(%struct.iwl_mvm* %246, i32 %247, i32 %248, i8* %251)
  store i32 %252, i32* %26, align 4
  %253 = load i32, i32* %26, align 4
  %254 = and i32 %253, 255
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %26, align 4
  %256 = ashr i32 %255, 8
  %257 = and i32 %256, 255
  store i32 %257, i32* %12, align 4
  %258 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %259 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %27, align 4
  %261 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %262 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %15, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @IWL_RATE_INVALID, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %245
  %268 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %269 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %268, i32 0, i32 1
  %270 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %270, i64 %272
  %274 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %16, align 4
  br label %276

276:                                              ; preds = %267, %245
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @IWL_RATE_INVALID, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %282 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %281, i32 0, i32 1
  %283 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %283, i64 %285
  %287 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %17, align 4
  br label %289

289:                                              ; preds = %280, %276
  %290 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %291 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %292 = call i32 @rs_pretty_rate(%struct.rs_rate* %291)
  %293 = load i32, i32* %15, align 4
  %294 = load i32, i32* %27, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %17, align 4
  %299 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %290, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298)
  %300 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %301 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %302 = load i32, i32* %27, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %17, align 4
  %308 = call i32 @rs_get_rate_action(%struct.iwl_mvm* %300, %struct.iwl_scale_tbl_info* %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307)
  store i32 %308, i32* %19, align 4
  %309 = load %struct.rs_rate*, %struct.rs_rate** %30, align 8
  %310 = call i64 @is_mimo(%struct.rs_rate* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %289
  %313 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %314 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %315 = call i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm* %313, %struct.ieee80211_sta* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %312
  %318 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %319 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %318, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %320 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %321 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %320, i32 1)
  br label %359

322:                                              ; preds = %312, %289
  %323 = load i32, i32* %19, align 4
  switch i32 %323, label %357 [
    i32 130, label %324
    i32 128, label %334
    i32 129, label %344
  ]

324:                                              ; preds = %322
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* @IWL_RATE_INVALID, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  store i64 1, i64* %21, align 8
  %329 = load i32, i32* %11, align 4
  store i32 %329, i32* %13, align 4
  br label %333

330:                                              ; preds = %324
  %331 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %332 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %331, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %333

333:                                              ; preds = %330, %328
  br label %358

334:                                              ; preds = %322
  %335 = load i32, i32* %12, align 4
  %336 = load i32, i32* @IWL_RATE_INVALID, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %340

338:                                              ; preds = %334
  store i64 1, i64* %21, align 8
  %339 = load i32, i32* %12, align 4
  store i32 %339, i32* %13, align 4
  br label %343

340:                                              ; preds = %334
  %341 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %342 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %341, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %343

343:                                              ; preds = %340, %338
  br label %358

344:                                              ; preds = %322
  %345 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %346 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @RS_STATE_STAY_IN_COLUMN, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %344
  %351 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %352 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %353 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %354 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %355 = call i64 @rs_tpc_perform(%struct.iwl_mvm* %351, %struct.ieee80211_sta* %352, %struct.iwl_lq_sta* %353, %struct.iwl_scale_tbl_info* %354)
  store i64 %355, i64* %21, align 8
  br label %356

356:                                              ; preds = %350, %344
  br label %358

357:                                              ; preds = %322
  br label %358

358:                                              ; preds = %357, %356, %343, %333
  br label %359

359:                                              ; preds = %358, %317, %242
  %360 = load i64, i64* %21, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %387

362:                                              ; preds = %359
  %363 = load i32, i32* %13, align 4
  %364 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %365 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %365, i32 0, i32 0
  store i32 %363, i32* %366, align 8
  %367 = load i64, i64* @IWL_MVM_RS_80_20_FAR_RANGE_TWEAK, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %362
  %370 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %371 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %372 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %373 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %374 = load i32, i32* %19, align 4
  %375 = call i32 @rs_tweak_rate_tbl(%struct.iwl_mvm* %370, %struct.ieee80211_sta* %371, %struct.iwl_lq_sta* %372, %struct.iwl_scale_tbl_info* %373, i32 %374)
  br label %376

376:                                              ; preds = %369, %362
  %377 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %378 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %379 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %380 = load i32, i32* %19, align 4
  %381 = call i32 @rs_set_amsdu_len(%struct.iwl_mvm* %377, %struct.ieee80211_sta* %378, %struct.iwl_scale_tbl_info* %379, i32 %380)
  %382 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %383 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %384 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %385 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %386 = call i32 @rs_update_rate_tbl(%struct.iwl_mvm* %382, %struct.ieee80211_sta* %383, %struct.iwl_lq_sta* %384, %struct.iwl_scale_tbl_info* %385)
  br label %387

387:                                              ; preds = %376, %359
  %388 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %389 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %388, i32 0)
  %390 = load i64, i64* %21, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %478, label %392

392:                                              ; preds = %387
  %393 = load i64, i64* %25, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %478, label %395

395:                                              ; preds = %392
  %396 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %397 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @RS_STATE_SEARCH_CYCLE_STARTED, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %478

401:                                              ; preds = %395
  %402 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %403 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %478

406:                                              ; preds = %401
  %407 = load i32, i32* %15, align 4
  %408 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %409 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %408, i32 0, i32 3
  store i32 %407, i32* %409, align 8
  %410 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %411 = load i64, i64* %21, align 8
  %412 = load i64, i64* %25, align 8
  %413 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %414 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %417 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %410, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i64 %411, i64 %412, i32 %415, i64 %418)
  %420 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %421 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %422 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %423 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %424 = call i32 @rs_get_next_column(%struct.iwl_mvm* %420, %struct.iwl_lq_sta* %421, %struct.ieee80211_sta* %422, %struct.iwl_scale_tbl_info* %423)
  store i32 %424, i32* %31, align 4
  %425 = load i32, i32* %31, align 4
  %426 = load i32, i32* @RS_COLUMN_INVALID, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %428, label %440

428:                                              ; preds = %406
  %429 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %430 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %431 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %432 = load i32, i32* %31, align 4
  %433 = call i32 @rs_switch_to_column(%struct.iwl_mvm* %429, %struct.iwl_lq_sta* %430, %struct.ieee80211_sta* %431, i32 %432)
  store i32 %433, i32* %32, align 4
  %434 = load i32, i32* %32, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %428
  %437 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %438 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %437, i32 0, i32 1
  store i32 1, i32* %438, align 8
  br label %439

439:                                              ; preds = %436, %428
  br label %446

440:                                              ; preds = %406
  %441 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %442 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %441, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0))
  %443 = load i32, i32* @RS_STATE_SEARCH_CYCLE_ENDED, align 4
  %444 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %445 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %444, i32 0, i32 5
  store i32 %443, i32* %445, align 8
  br label %446

446:                                              ; preds = %440, %439
  %447 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %448 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %476

451:                                              ; preds = %446
  %452 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %453 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %452, i32 0, i32 4
  %454 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %453, align 8
  %455 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %456 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %455, i32 0, i32 2
  %457 = load i64, i64* %456, align 8
  %458 = call i64 @rs_search_tbl(i64 %457)
  %459 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %454, i64 %458
  store %struct.iwl_scale_tbl_info* %459, %struct.iwl_scale_tbl_info** %22, align 8
  %460 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %461 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %462 = call i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm* %460, %struct.iwl_scale_tbl_info* %461)
  %463 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %464 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  store i32 %466, i32* %13, align 4
  %467 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %468 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %469 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %468, i32 0, i32 0
  %470 = call i32 @rs_dump_rate(%struct.iwl_mvm* %467, %struct.rs_rate* %469, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %471 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %472 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %473 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %474 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %475 = call i32 @rs_update_rate_tbl(%struct.iwl_mvm* %471, %struct.ieee80211_sta* %472, %struct.iwl_lq_sta* %473, %struct.iwl_scale_tbl_info* %474)
  br label %477

476:                                              ; preds = %446
  store i64 1, i64* %25, align 8
  br label %477

477:                                              ; preds = %476, %451
  br label %478

478:                                              ; preds = %477, %401, %395, %392, %387
  %479 = load i32, i32* %10, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %478
  %482 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %483 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %29, align 8
  %484 = load i32, i32* %9, align 4
  %485 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %486 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %487 = call i32 @rs_tl_turn_on_agg(%struct.iwl_mvm* %482, %struct.iwl_mvm_sta* %483, i32 %484, %struct.iwl_lq_sta* %485, %struct.ieee80211_sta* %486)
  br label %488

488:                                              ; preds = %481, %478
  %489 = load i64, i64* %25, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %511

491:                                              ; preds = %488
  %492 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %493 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @RS_STATE_SEARCH_CYCLE_ENDED, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %511

497:                                              ; preds = %491
  %498 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %499 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %498, i32 0, i32 4
  %500 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %499, align 8
  %501 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %502 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %501, i32 0, i32 2
  %503 = load i64, i64* %502, align 8
  %504 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %500, i64 %503
  store %struct.iwl_scale_tbl_info* %504, %struct.iwl_scale_tbl_info** %23, align 8
  %505 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %506 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %507 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %506, i32 0, i32 0
  %508 = call i32 @is_legacy(%struct.rs_rate* %507)
  %509 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %510 = call i32 @rs_set_stay_in_table(%struct.iwl_mvm* %505, i32 %508, %struct.iwl_lq_sta* %509)
  br label %511

511:                                              ; preds = %132, %138, %164, %497, %491, %488
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @rs_search_tbl(i64) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_get_supported_rates(%struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @rs_update_rate_tbl(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_pretty_rate(%struct.rs_rate*) #1

declare dso_local i32 @rs_stay_in_table(%struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @rs_get_adjacent_rate(%struct.iwl_mvm*, i32, i32, i8*) #1

declare dso_local i32 @rs_get_rate_action(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @is_mimo(%struct.rs_rate*) #1

declare dso_local i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

declare dso_local i64 @rs_tpc_perform(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_tweak_rate_tbl(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_amsdu_len(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_get_next_column(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_switch_to_column(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_dump_rate(%struct.iwl_mvm*, %struct.rs_rate*, i8*) #1

declare dso_local i32 @rs_tl_turn_on_agg(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32, %struct.iwl_lq_sta*, %struct.ieee80211_sta*) #1

declare dso_local i32 @rs_set_stay_in_table(%struct.iwl_mvm*, i32, %struct.iwl_lq_sta*) #1

declare dso_local i32 @is_legacy(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
