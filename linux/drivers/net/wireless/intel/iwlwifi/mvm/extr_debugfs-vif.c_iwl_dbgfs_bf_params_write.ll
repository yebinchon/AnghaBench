; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_bf_params_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_bf_params_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bf_energy_delta=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@IWL_BF_ENERGY_DELTA_MIN = common dso_local global i32 0, align 4
@IWL_BF_ENERGY_DELTA_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_ENERGY_DELTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bf_roaming_energy_delta=\00", align 1
@IWL_BF_ROAMING_ENERGY_DELTA_MIN = common dso_local global i32 0, align 4
@IWL_BF_ROAMING_ENERGY_DELTA_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_ROAMING_ENERGY_DELTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"bf_roaming_state=\00", align 1
@IWL_BF_ROAMING_STATE_MIN = common dso_local global i32 0, align 4
@IWL_BF_ROAMING_STATE_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_ROAMING_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"bf_temp_threshold=\00", align 1
@IWL_BF_TEMP_THRESHOLD_MIN = common dso_local global i32 0, align 4
@IWL_BF_TEMP_THRESHOLD_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_TEMP_THRESHOLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"bf_temp_fast_filter=\00", align 1
@IWL_BF_TEMP_FAST_FILTER_MIN = common dso_local global i32 0, align 4
@IWL_BF_TEMP_FAST_FILTER_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_TEMP_FAST_FILTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"bf_temp_slow_filter=\00", align 1
@IWL_BF_TEMP_SLOW_FILTER_MIN = common dso_local global i32 0, align 4
@IWL_BF_TEMP_SLOW_FILTER_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_TEMP_SLOW_FILTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"bf_enable_beacon_filter=\00", align 1
@MVM_DEBUGFS_BF_ENABLE_BEACON_FILTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"bf_debug_flag=\00", align 1
@MVM_DEBUGFS_BF_DEBUG_FLAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"bf_escape_timer=\00", align 1
@IWL_BF_ESCAPE_TIMER_MIN = common dso_local global i32 0, align 4
@IWL_BF_ESCAPE_TIMER_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BF_ESCAPE_TIMER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"ba_escape_timer=\00", align 1
@IWL_BA_ESCAPE_TIMER_MIN = common dso_local global i32 0, align 4
@IWL_BA_ESCAPE_TIMER_MAX = common dso_local global i32 0, align 4
@MVM_DEBUGFS_BA_ESCAPE_TIMER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"ba_enable_beacon_abort=\00", align 1
@MVM_DEBUGFS_BA_ENABLE_BEACON_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_vif*, i8*, i64, i32*)* @iwl_dbgfs_bf_params_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_bf_params_write(%struct.ieee80211_vif* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %15)
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %10, align 8
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %17, i32 0, i32 0
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %18, align 8
  store %struct.iwl_mvm* %19, %struct.iwl_mvm** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %20, i32 16)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 16
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %335

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @IWL_BF_ENERGY_DELTA_MIN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @IWL_BF_ENERGY_DELTA_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %335

42:                                               ; preds = %35
  %43 = load i32, i32* @MVM_DEBUGFS_BF_ENERGY_DELTA, align 4
  store i32 %43, i32* %12, align 4
  br label %301

44:                                               ; preds = %4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 24)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 24
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %335

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @IWL_BF_ROAMING_ENERGY_DELTA_MIN, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IWL_BF_ROAMING_ENERGY_DELTA_MAX, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56
  %65 = load i64, i64* @EINVAL, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %335

67:                                               ; preds = %60
  %68 = load i32, i32* @MVM_DEBUGFS_BF_ROAMING_ENERGY_DELTA, align 4
  store i32 %68, i32* %12, align 4
  br label %300

69:                                               ; preds = %44
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strncmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 17)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 17
  %76 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, i64* @EINVAL, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %5, align 8
  br label %335

81:                                               ; preds = %73
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @IWL_BF_ROAMING_STATE_MIN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @IWL_BF_ROAMING_STATE_MAX, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %81
  %90 = load i64, i64* @EINVAL, align 8
  %91 = sub i64 0, %90
  store i64 %91, i64* %5, align 8
  br label %335

92:                                               ; preds = %85
  %93 = load i32, i32* @MVM_DEBUGFS_BF_ROAMING_STATE, align 4
  store i32 %93, i32* %12, align 4
  br label %299

94:                                               ; preds = %69
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strncmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %95, i32 18)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 18
  %101 = call i32 @sscanf(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i64, i64* @EINVAL, align 8
  %105 = sub i64 0, %104
  store i64 %105, i64* %5, align 8
  br label %335

106:                                              ; preds = %98
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @IWL_BF_TEMP_THRESHOLD_MIN, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @IWL_BF_TEMP_THRESHOLD_MAX, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %106
  %115 = load i64, i64* @EINVAL, align 8
  %116 = sub i64 0, %115
  store i64 %116, i64* %5, align 8
  br label %335

117:                                              ; preds = %110
  %118 = load i32, i32* @MVM_DEBUGFS_BF_TEMP_THRESHOLD, align 4
  store i32 %118, i32* %12, align 4
  br label %298

119:                                              ; preds = %94
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @strncmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %120, i32 20)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 20
  %126 = call i32 @sscanf(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i64, i64* @EINVAL, align 8
  %130 = sub i64 0, %129
  store i64 %130, i64* %5, align 8
  br label %335

131:                                              ; preds = %123
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @IWL_BF_TEMP_FAST_FILTER_MIN, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @IWL_BF_TEMP_FAST_FILTER_MAX, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135, %131
  %140 = load i64, i64* @EINVAL, align 8
  %141 = sub i64 0, %140
  store i64 %141, i64* %5, align 8
  br label %335

142:                                              ; preds = %135
  %143 = load i32, i32* @MVM_DEBUGFS_BF_TEMP_FAST_FILTER, align 4
  store i32 %143, i32* %12, align 4
  br label %297

144:                                              ; preds = %119
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @strncmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %145, i32 20)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %169, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 20
  %151 = call i32 @sscanf(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i64, i64* @EINVAL, align 8
  %155 = sub i64 0, %154
  store i64 %155, i64* %5, align 8
  br label %335

156:                                              ; preds = %148
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @IWL_BF_TEMP_SLOW_FILTER_MIN, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @IWL_BF_TEMP_SLOW_FILTER_MAX, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160, %156
  %165 = load i64, i64* @EINVAL, align 8
  %166 = sub i64 0, %165
  store i64 %166, i64* %5, align 8
  br label %335

167:                                              ; preds = %160
  %168 = load i32, i32* @MVM_DEBUGFS_BF_TEMP_SLOW_FILTER, align 4
  store i32 %168, i32* %12, align 4
  br label %296

169:                                              ; preds = %144
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %170, i32 24)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %169
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 24
  %176 = call i32 @sscanf(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %177 = icmp ne i32 %176, 1
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i64, i64* @EINVAL, align 8
  %180 = sub i64 0, %179
  store i64 %180, i64* %5, align 8
  br label %335

181:                                              ; preds = %173
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %190

187:                                              ; preds = %184, %181
  %188 = load i64, i64* @EINVAL, align 8
  %189 = sub i64 0, %188
  store i64 %189, i64* %5, align 8
  br label %335

190:                                              ; preds = %184
  %191 = load i32, i32* @MVM_DEBUGFS_BF_ENABLE_BEACON_FILTER, align 4
  store i32 %191, i32* %12, align 4
  br label %295

192:                                              ; preds = %169
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %193, i32 14)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %192
  %197 = load i8*, i8** %7, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 14
  %199 = call i32 @sscanf(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %200 = icmp ne i32 %199, 1
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i64, i64* @EINVAL, align 8
  %203 = sub i64 0, %202
  store i64 %203, i64* %5, align 8
  br label %335

204:                                              ; preds = %196
  %205 = load i32, i32* %13, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %13, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %213

210:                                              ; preds = %207, %204
  %211 = load i64, i64* @EINVAL, align 8
  %212 = sub i64 0, %211
  store i64 %212, i64* %5, align 8
  br label %335

213:                                              ; preds = %207
  %214 = load i32, i32* @MVM_DEBUGFS_BF_DEBUG_FLAG, align 4
  store i32 %214, i32* %12, align 4
  br label %294

215:                                              ; preds = %192
  %216 = load i8*, i8** %7, align 8
  %217 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %216, i32 16)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %240, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %7, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 16
  %222 = call i32 @sscanf(i8* %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %223 = icmp ne i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i64, i64* @EINVAL, align 8
  %226 = sub i64 0, %225
  store i64 %226, i64* %5, align 8
  br label %335

227:                                              ; preds = %219
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @IWL_BF_ESCAPE_TIMER_MIN, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @IWL_BF_ESCAPE_TIMER_MAX, align 4
  %234 = icmp sgt i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231, %227
  %236 = load i64, i64* @EINVAL, align 8
  %237 = sub i64 0, %236
  store i64 %237, i64* %5, align 8
  br label %335

238:                                              ; preds = %231
  %239 = load i32, i32* @MVM_DEBUGFS_BF_ESCAPE_TIMER, align 4
  store i32 %239, i32* %12, align 4
  br label %293

240:                                              ; preds = %215
  %241 = load i8*, i8** %7, align 8
  %242 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %241, i32 16)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %265, label %244

244:                                              ; preds = %240
  %245 = load i8*, i8** %7, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 16
  %247 = call i32 @sscanf(i8* %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i64, i64* @EINVAL, align 8
  %251 = sub i64 0, %250
  store i64 %251, i64* %5, align 8
  br label %335

252:                                              ; preds = %244
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* @IWL_BA_ESCAPE_TIMER_MIN, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* @IWL_BA_ESCAPE_TIMER_MAX, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256, %252
  %261 = load i64, i64* @EINVAL, align 8
  %262 = sub i64 0, %261
  store i64 %262, i64* %5, align 8
  br label %335

263:                                              ; preds = %256
  %264 = load i32, i32* @MVM_DEBUGFS_BA_ESCAPE_TIMER, align 4
  store i32 %264, i32* %12, align 4
  br label %292

265:                                              ; preds = %240
  %266 = load i8*, i8** %7, align 8
  %267 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %266, i32 23)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %288, label %269

269:                                              ; preds = %265
  %270 = load i8*, i8** %7, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 23
  %272 = call i32 @sscanf(i8* %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %273 = icmp ne i32 %272, 1
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load i64, i64* @EINVAL, align 8
  %276 = sub i64 0, %275
  store i64 %276, i64* %5, align 8
  br label %335

277:                                              ; preds = %269
  %278 = load i32, i32* %13, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %13, align 4
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %286

283:                                              ; preds = %280, %277
  %284 = load i64, i64* @EINVAL, align 8
  %285 = sub i64 0, %284
  store i64 %285, i64* %5, align 8
  br label %335

286:                                              ; preds = %280
  %287 = load i32, i32* @MVM_DEBUGFS_BA_ENABLE_BEACON_ABORT, align 4
  store i32 %287, i32* %12, align 4
  br label %291

288:                                              ; preds = %265
  %289 = load i64, i64* @EINVAL, align 8
  %290 = sub i64 0, %289
  store i64 %290, i64* %5, align 8
  br label %335

291:                                              ; preds = %286
  br label %292

292:                                              ; preds = %291, %263
  br label %293

293:                                              ; preds = %292, %238
  br label %294

294:                                              ; preds = %293, %213
  br label %295

295:                                              ; preds = %294, %190
  br label %296

296:                                              ; preds = %295, %167
  br label %297

297:                                              ; preds = %296, %142
  br label %298

298:                                              ; preds = %297, %117
  br label %299

299:                                              ; preds = %298, %92
  br label %300

300:                                              ; preds = %299, %67
  br label %301

301:                                              ; preds = %300, %42
  %302 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %303 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %302, i32 0, i32 0
  %304 = call i32 @mutex_lock(i32* %303)
  %305 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %13, align 4
  %308 = call i32 @iwl_dbgfs_update_bf(%struct.ieee80211_vif* %305, i32 %306, i32 %307)
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @MVM_DEBUGFS_BF_ENABLE_BEACON_FILTER, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %319

312:                                              ; preds = %301
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %312
  %316 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %317 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %318 = call i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm* %316, %struct.ieee80211_vif* %317, i32 0)
  store i32 %318, i32* %14, align 4
  br label %323

319:                                              ; preds = %312, %301
  %320 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %321 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %322 = call i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %320, %struct.ieee80211_vif* %321, i32 0)
  store i32 %322, i32* %14, align 4
  br label %323

323:                                              ; preds = %319, %315
  %324 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %325 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %324, i32 0, i32 0
  %326 = call i32 @mutex_unlock(i32* %325)
  %327 = load i32, i32* %14, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %323
  %330 = sext i32 %327 to i64
  br label %333

331:                                              ; preds = %323
  %332 = load i64, i64* %8, align 8
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i64 [ %330, %329 ], [ %332, %331 ]
  store i64 %334, i64* %5, align 8
  br label %335

335:                                              ; preds = %333, %288, %283, %274, %260, %249, %235, %224, %210, %201, %187, %178, %164, %153, %139, %128, %114, %103, %89, %78, %64, %53, %39, %28
  %336 = load i64, i64* %5, align 8
  ret i64 %336
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_dbgfs_update_bf(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
