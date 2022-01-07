; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_ucode_wait_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_ucode_wait_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_11__, i32, %struct.TYPE_9__*, %struct.iwl_trans*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iwl_trans = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_mvm_alive_data = type { i32, i32 }
%struct.fw_img = type { i32 }

@iwl_mvm_load_ucode_wait_alive.alive_cmd = internal constant [1 x i32] [i32 128], align 4
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@FW_DBG_START_FROM_ALIVE = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_USNIFFER_UNIFIED = common dso_local global i32 0, align 4
@IWL_UCODE_REGULAR_USNIFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_FIRMWARE_RUNNING = common dso_local global i32 0, align 4
@iwl_alive_fn = common dso_local global i32 0, align 4
@MVM_UCODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@FW_DBG_TRIGGER_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"SecBoot CPU1 Status: 0x%x, CPU2 Status: 0x%x\0A\00", align 1
@UMAG_SB_CPU_1_STATUS = common dso_local global i32 0, align 4
@UMAG_SB_CPU_2_STATUS = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@SB_CPU_1_STATUS = common dso_local global i32 0, align 4
@SB_CPU_2_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Loaded ucode is not valid!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@IWL_MVM_DQA_CMD_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_mvm_load_ucode_wait_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca %struct.iwl_mvm_alive_data, align 4
  %8 = alloca %struct.fw_img*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast %struct.iwl_mvm_alive_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IWL_UCODE_INIT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %23 = call i64 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ true, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 5
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* @FW_DBG_START_FROM_ALIVE, align 4
  %36 = call i64 @iwl_fw_dbg_conf_usniffer(%struct.TYPE_10__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 5
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* @IWL_UCODE_TLV_CAPA_USNIFFER_UNIFIED, align 4
  %44 = call i32 @fw_has_capa(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 5
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load i32, i32* @IWL_UCODE_REGULAR_USNIFFER, align 4
  %51 = call %struct.fw_img* @iwl_get_ucode_image(%struct.TYPE_10__* %49, i32 %50)
  store %struct.fw_img* %51, %struct.fw_img** %8, align 8
  br label %58

52:                                               ; preds = %38, %31, %25
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 5
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.fw_img* @iwl_get_ucode_image(%struct.TYPE_10__* %55, i32 %56)
  store %struct.fw_img* %57, %struct.fw_img** %8, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %60 = icmp ne %struct.fw_img* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %196

68:                                               ; preds = %58
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @iwl_fw_set_current_image(%struct.TYPE_11__* %70, i32 %71)
  %73 = load i32, i32* @IWL_MVM_STATUS_FIRMWARE_RUNNING, align 4
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 1
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %77, i32 0, i32 4
  %79 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_mvm_load_ucode_wait_alive.alive_cmd, i64 0, i64 0))
  %80 = load i32, i32* @iwl_alive_fn, align 4
  %81 = call i32 @iwl_init_notification_wait(i32* %78, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_mvm_load_ucode_wait_alive.alive_cmd, i64 0, i64 0), i32 %79, i32 %80, %struct.iwl_mvm_alive_data* %7)
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 3
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %83, align 8
  %85 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @iwl_trans_start_fw(%struct.iwl_trans* %84, %struct.fw_img* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %68
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 0
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @iwl_fw_set_current_image(%struct.TYPE_11__* %92, i32 %93)
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %95, i32 0, i32 4
  %97 = call i32 @iwl_remove_notification(i32* %96, %struct.iwl_notification_wait* %6)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %196

99:                                               ; preds = %68
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %100, i32 0, i32 4
  %102 = load i32, i32* @MVM_UCODE_ALIVE_TIMEOUT, align 4
  %103 = call i32 @iwl_wait_notification(i32* %101, %struct.iwl_notification_wait* %6, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %160

106:                                              ; preds = %99
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 3
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %108, align 8
  store %struct.iwl_trans* %109, %struct.iwl_trans** %12, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %115, i32 0, i32 0
  %117 = load i32, i32* @FW_DBG_TRIGGER_ALIVE_TIMEOUT, align 4
  %118 = call i32 @iwl_fw_dbg_error_collect(%struct.TYPE_11__* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %106
  %120 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %121 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %119
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %129 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %130 = load i32, i32* @UMAG_SB_CPU_1_STATUS, align 4
  %131 = call i32 @iwl_read_umac_prph(%struct.iwl_trans* %129, i32 %130)
  %132 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %133 = load i32, i32* @UMAG_SB_CPU_2_STATUS, align 4
  %134 = call i32 @iwl_read_umac_prph(%struct.iwl_trans* %132, i32 %133)
  %135 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %134)
  br label %154

136:                                              ; preds = %119
  %137 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %138 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %146 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %147 = load i32, i32* @SB_CPU_1_STATUS, align 4
  %148 = call i32 @iwl_read_prph(%struct.iwl_trans* %146, i32 %147)
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %150 = load i32, i32* @SB_CPU_2_STATUS, align 4
  %151 = call i32 @iwl_read_prph(%struct.iwl_trans* %149, i32 %150)
  %152 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %144, %136
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %156 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %155, i32 0, i32 0
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @iwl_fw_set_current_image(%struct.TYPE_11__* %156, i32 %157)
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %196

160:                                              ; preds = %99
  %161 = getelementptr inbounds %struct.iwl_mvm_alive_data, %struct.iwl_mvm_alive_data* %7, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %160
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %166 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %167 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %168 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %167, i32 0, i32 0
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @iwl_fw_set_current_image(%struct.TYPE_11__* %168, i32 %169)
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %196

173:                                              ; preds = %160
  %174 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %175 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %174, i32 0, i32 3
  %176 = load %struct.iwl_trans*, %struct.iwl_trans** %175, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm_alive_data, %struct.iwl_mvm_alive_data* %7, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @iwl_trans_fw_alive(%struct.iwl_trans* %176, i32 %178)
  %180 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %181 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %180, i32 0, i32 2
  %182 = call i32 @memset(%struct.TYPE_9__** %181, i32 0, i32 8)
  %183 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %184 = add nsw i64 %183, 2
  %185 = call i32 @BIT(i64 %184)
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %187 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i64, i64* @IWL_MVM_DQA_CMD_QUEUE, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  store i32 %185, i32* %191, align 4
  %192 = load i32, i32* @IWL_MVM_STATUS_FIRMWARE_RUNNING, align 4
  %193 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %193, i32 0, i32 1
  %195 = call i32 @set_bit(i32 %192, i32* %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %173, %164, %154, %90, %65
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm*) #2

declare dso_local i64 @iwl_fw_dbg_conf_usniffer(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @fw_has_capa(i32*, i32) #2

declare dso_local %struct.fw_img* @iwl_get_ucode_image(%struct.TYPE_10__*, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @iwl_fw_set_current_image(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_mvm_alive_data*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @iwl_trans_start_fw(%struct.iwl_trans*, %struct.fw_img*, i32) #2

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #2

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #2

declare dso_local i32 @iwl_fw_dbg_error_collect(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #2

declare dso_local i32 @iwl_read_umac_prph(%struct.iwl_trans*, i32) #2

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #2

declare dso_local i32 @iwl_trans_fw_alive(%struct.iwl_trans*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_9__**, i32, i32) #2

declare dso_local i32 @BIT(i64) #2

declare dso_local i32 @set_bit(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
