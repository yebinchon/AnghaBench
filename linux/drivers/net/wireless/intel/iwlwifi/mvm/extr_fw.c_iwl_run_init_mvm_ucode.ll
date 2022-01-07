; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_run_init_mvm_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_run_init_mvm_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.iwl_mvm = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_10__*, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.iwl_notification_wait = type { i32 }

@iwl_run_init_mvm_ucode.init_complete = internal constant [2 x i32] [i32 128, i32 129], align 4
@iwl_wait_phy_db_entry = common dso_local global i32 0, align 4
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to start INIT ucode: %d\0A\00", align 1
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to read NVM: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Too old NVM version (0x%0x, required = 0x%0x)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"jump over all phy activities due to RF kill\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to run INIT calibrations: %d\0A\00", align 1
@MVM_UCODE_CALIB_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"RFKILL while calibrating.\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = call i64 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = call i32 @iwl_run_unified_mvm_ucode(%struct.iwl_mvm* %12, i32 1)
  store i32 %13, i32* %3, align 4
  br label %227

14:                                               ; preds = %2
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 6
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 2
  %22 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_mvm_ucode.init_complete, i64 0, i64 0))
  %23 = load i32, i32* @iwl_wait_phy_db_entry, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iwl_init_notification_wait(i32* %21, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_mvm_ucode.init_complete, i64 0, i64 0), i32 %22, i32 %23, i32 %26)
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %29 = load i32, i32* @IWL_UCODE_INIT, align 4
  %30 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @IWL_ERR(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %148

37:                                               ; preds = %14
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = call i32 @iwl_mvm_send_bt_init_conf(%struct.iwl_mvm* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %148

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %59 = call i32 @iwl_nvm_init(%struct.iwl_mvm* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @IWL_ERR(%struct.iwl_mvm* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %148

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %74 = call i32 @iwl_mvm_load_nvm_to_nic(%struct.iwl_mvm* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 3
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %80, %87
  %89 = zext i1 %88 to i32
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %95, i32 0, i32 3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @WARN_ONCE(i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %94, i64 %101)
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %104 = call i64 @iwl_mvm_is_radio_hw_killed(%struct.iwl_mvm* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %75
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %108 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_mvm* %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %148

109:                                              ; preds = %75
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %114 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %113)
  %115 = call i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %112, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %148

119:                                              ; preds = %109
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %121 = call i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @IWL_ERR(%struct.iwl_mvm* %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %148

128:                                              ; preds = %119
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %129, i32 0, i32 2
  %131 = load i32, i32* @MVM_UCODE_CALIB_TIMEOUT, align 4
  %132 = call i32 @iwl_wait_notification(i32* %130, %struct.iwl_notification_wait* %6, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  br label %152

136:                                              ; preds = %128
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %138 = call i64 @iwl_mvm_is_radio_hw_killed(%struct.iwl_mvm* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %142 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_mvm* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %147

143:                                              ; preds = %136
  %144 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @IWL_ERR(%struct.iwl_mvm* %144, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %140
  br label %152

148:                                              ; preds = %124, %118, %106, %62, %52, %33
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %149, i32 0, i32 2
  %151 = call i32 @iwl_remove_notification(i32* %150, %struct.iwl_notification_wait* %6)
  br label %152

152:                                              ; preds = %148, %147, %135
  %153 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %225

157:                                              ; preds = %152
  %158 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %159 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %158, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = icmp ne %struct.TYPE_13__* %160, null
  br i1 %161, label %225, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call %struct.TYPE_13__* @kzalloc(i32 12, i32 %163)
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %166 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %165, i32 0, i32 1
  store %struct.TYPE_13__* %164, %struct.TYPE_13__** %166, align 8
  %167 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %168 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = icmp ne %struct.TYPE_13__* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %162
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %227

174:                                              ; preds = %162
  %175 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %176 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %175, i32 0, i32 1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %181 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %180, i32 0, i32 1
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 3
  store i64 %179, i64* %186, align 8
  %187 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %188 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %187, i32 0, i32 1
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %195 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %194, i32 0, i32 1
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %202 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %201, i32 0, i32 1
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = getelementptr i8, i8* %206, i64 1
  %208 = bitcast i8* %207 to %struct.TYPE_11__*
  %209 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %210 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %209, i32 0, i32 1
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %215, align 8
  %216 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %217 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %216, i32 0, i32 1
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  store i32 10, i32* %224, align 4
  br label %225

225:                                              ; preds = %174, %157, %152
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %171, %11
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i64 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_run_unified_mvm_ucode(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_send_bt_init_conf(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_nvm_init(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_load_nvm_to_nic(%struct.iwl_mvm*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64) #1

declare dso_local i64 @iwl_mvm_is_radio_hw_killed(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local %struct.TYPE_13__* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
