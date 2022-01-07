; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_tt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_tt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, %struct.iwl_mvm_tt_mgmt }
%struct.iwl_mvm_tt_mgmt = type { i32, i64, i64, i32, %struct.iwl_tt_params }
%struct.iwl_tt_params = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"NIC temperature: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Enable dynamic SMPS\0A\00", align 1
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_tt_smps_iterator = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Disable dynamic SMPS\0A\00", align 1
@TT_TX_BACKOFF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Due to high temperature thermal throttling initiated\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Temperature is back to normal thermal throttling stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_tt_handler(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_tt_params*, align 8
  %4 = alloca %struct.iwl_mvm_tt_mgmt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %10, i32 0, i32 4
  store %struct.iwl_tt_params* %11, %struct.iwl_tt_params** %3, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 2
  store %struct.iwl_mvm_tt_mgmt* %13, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TEMP(%struct.iwl_mvm* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %34 = call i32 @iwl_mvm_enter_ctkill(%struct.iwl_mvm* %33)
  br label %229

35:                                               ; preds = %26, %1
  %36 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %48 = call i32 @iwl_mvm_exit_ctkill(%struct.iwl_mvm* %47)
  br label %229

49:                                               ; preds = %40, %35
  %50 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %49
  %55 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %62 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %67 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TEMP(%struct.iwl_mvm* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %74 = load i32, i32* @iwl_mvm_tt_smps_iterator, align 4
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %76 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %72, i32 %73, i32 %74, %struct.iwl_mvm* %75)
  store i32 1, i32* %6, align 4
  br label %101

77:                                               ; preds = %59, %54
  %78 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %85 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %90 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TEMP(%struct.iwl_mvm* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %97 = load i32, i32* @iwl_mvm_tt_smps_iterator, align 4
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %99 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %95, i32 %96, i32 %97, %struct.iwl_mvm* %98)
  br label %100

100:                                              ; preds = %88, %82, %77
  br label %101

101:                                              ; preds = %100, %65
  br label %102

102:                                              ; preds = %101, %49
  %103 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %104 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %110 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %115 = call i32 @iwl_mvm_tt_tx_protection(%struct.iwl_mvm* %114, i32 1)
  store i32 1, i32* %6, align 4
  br label %126

116:                                              ; preds = %107
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %119 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %124 = call i32 @iwl_mvm_tt_tx_protection(%struct.iwl_mvm* %123, i32 0)
  br label %125

125:                                              ; preds = %122, %116
  br label %126

126:                                              ; preds = %125, %113
  br label %127

127:                                              ; preds = %126, %102
  %128 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %129 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %127
  %133 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %165, %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @TT_TX_BACKOFF_SIZE, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %136
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %143 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %142, i32 0, i32 6
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %141, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %168

152:                                              ; preds = %140
  %153 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %157 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %156, i32 0, i32 6
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @max(i64 %155, i32 %163)
  store i64 %164, i64* %8, align 8
  br label %165

165:                                              ; preds = %152
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %136

168:                                              ; preds = %151, %136
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %171 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 1, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %168
  %176 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @iwl_mvm_tt_tx_backoff(%struct.iwl_mvm* %182, i64 %183)
  br label %185

185:                                              ; preds = %181, %175
  br label %186

186:                                              ; preds = %185, %127
  %187 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %188 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %196 = call i32 @IWL_WARN(%struct.iwl_mvm* %195, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %197 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %198 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %197, i32 0, i32 3
  store i32 1, i32* %198, align 8
  br label %229

199:                                              ; preds = %191, %186
  %200 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %201 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %228

204:                                              ; preds = %199
  %205 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %206 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %228, label %209

209:                                              ; preds = %204
  %210 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %211 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %214 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %209
  %218 = load i64, i64* %5, align 8
  %219 = load %struct.iwl_tt_params*, %struct.iwl_tt_params** %3, align 8
  %220 = getelementptr inbounds %struct.iwl_tt_params, %struct.iwl_tt_params* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = icmp sle i64 %218, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %225 = call i32 @IWL_WARN(%struct.iwl_mvm* %224, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %4, align 8
  %227 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %226, i32 0, i32 3
  store i32 0, i32* %227, align 8
  br label %228

228:                                              ; preds = %223, %217, %209, %204, %199
  br label %229

229:                                              ; preds = %32, %46, %228, %194
  ret void
}

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_enter_ctkill(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_exit_ctkill(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_tt_tx_protection(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @iwl_mvm_tt_tx_backoff(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
