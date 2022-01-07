; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_run_unified_mvm_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_run_unified_mvm_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32*, i32, %struct.TYPE_5__*, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_nvm_access_complete_cmd = type { i32 }
%struct.iwl_init_extended_cfg_cmd = type { i32 }

@IWL_INIT_NVM = common dso_local global i32 0, align 4
@iwl_run_unified_mvm_ucode.init_complete = internal constant [1 x i32] [i32 128], align 4
@IWL_INIT_PHY = common dso_local global i32 0, align 4
@iwl_wait_init_complete = common dso_local global i32 0, align 4
@IWL_FW_INI_TIME_POINT_EARLY = common dso_local global i32 0, align 4
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to start RT ucode: %d\0A\00", align 1
@IWL_FW_INI_TIME_POINT_AFTER_ALIVE = common dso_local global i32 0, align 4
@SYSTEM_GROUP = common dso_local global i32 0, align 4
@INIT_EXTENDED_CFG_CMD = common dso_local global i32 0, align 4
@CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to run init config command: %d\0A\00", align 1
@IWL_MVM_PARSE_NVM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to read NVM: %d\0A\00", align 1
@REGULATORY_AND_NVM_GROUP = common dso_local global i32 0, align 4
@NVM_ACCESS_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to run complete NVM access: %d\0A\00", align 1
@MVM_UCODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_run_unified_mvm_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_run_unified_mvm_ucode(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca %struct.iwl_nvm_access_complete_cmd, align 4
  %8 = alloca %struct.iwl_init_extended_cfg_cmd, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.iwl_nvm_access_complete_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.iwl_init_extended_cfg_cmd, %struct.iwl_init_extended_cfg_cmd* %8, i32 0, i32 0
  %12 = load i32, i32* @IWL_INIT_NVM, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @IWL_INIT_PHY, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.iwl_init_extended_cfg_cmd, %struct.iwl_init_extended_cfg_cmd* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 8
  %33 = call i32 @lockdep_assert_held(i32* %32)
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 1
  %38 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_run_unified_mvm_ucode.init_complete, i64 0, i64 0))
  %39 = load i32, i32* @iwl_wait_init_complete, align 4
  %40 = call i32 @iwl_init_notification_wait(i32* %37, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_run_unified_mvm_ucode.init_complete, i64 0, i64 0), i32 %38, i32 %39, i32* null)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 7
  %43 = load i32, i32* @IWL_FW_INI_TIME_POINT_EARLY, align 4
  %44 = call i32 @iwl_dbg_tlv_time_point(i32* %42, i32 %43, i32* null)
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %46 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %47 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @IWL_ERR(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %164

54:                                               ; preds = %30
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 7
  %57 = load i32, i32* @IWL_FW_INI_TIME_POINT_AFTER_ALIVE, align 4
  %58 = call i32 @iwl_dbg_tlv_time_point(i32* %56, i32 %57, i32* null)
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %60 = load i32, i32* @SYSTEM_GROUP, align 4
  %61 = load i32, i32* @INIT_EXTENDED_CFG_CMD, align 4
  %62 = call i32 @WIDE_ID(i32 %60, i32 %61)
  %63 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %64 = bitcast %struct.iwl_init_extended_cfg_cmd* %8 to %struct.iwl_nvm_access_complete_cmd*
  %65 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %59, i32 %62, i32 %63, i32 4, %struct.iwl_nvm_access_complete_cmd* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @IWL_ERR(%struct.iwl_mvm* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %164

72:                                               ; preds = %54
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @iwl_read_external_nvm(%struct.TYPE_5__* %80, i64 %83, i32 %86)
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %89 = call i32 @iwl_mvm_load_nvm_to_nic(%struct.iwl_mvm* %88)
  br label %90

90:                                               ; preds = %77, %72
  %91 = load i64, i64* @IWL_MVM_PARSE_NVM, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %98 = call i32 @iwl_nvm_init(%struct.iwl_mvm* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @IWL_ERR(%struct.iwl_mvm* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %164

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %93, %90
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %108 = load i32, i32* @REGULATORY_AND_NVM_GROUP, align 4
  %109 = load i32, i32* @NVM_ACCESS_COMPLETE, align 4
  %110 = call i32 @WIDE_ID(i32 %108, i32 %109)
  %111 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %112 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %107, i32 %110, i32 %111, i32 4, %struct.iwl_nvm_access_complete_cmd* %7)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @IWL_ERR(%struct.iwl_mvm* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %164

119:                                              ; preds = %106
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %120, i32 0, i32 1
  %122 = load i32, i32* @MVM_UCODE_ALIVE_TIMEOUT, align 4
  %123 = call i32 @iwl_wait_notification(i32* %121, %struct.iwl_notification_wait* %6, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %169

128:                                              ; preds = %119
  %129 = load i64, i64* @IWL_MVM_PARSE_NVM, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %161, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %131
  %135 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %136 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %139 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32* @iwl_get_nvm(%struct.TYPE_5__* %137, i32 %140)
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %143 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %142, i32 0, i32 2
  store i32* %141, i32** %143, align 8
  %144 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @IS_ERR(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %134
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %151 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @PTR_ERR(i32* %152)
  store i32 %153, i32* %9, align 4
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %154, i32 0, i32 2
  store i32* null, i32** %155, align 8
  %156 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @IWL_ERR(%struct.iwl_mvm* %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %169

160:                                              ; preds = %134
  br label %161

161:                                              ; preds = %160, %131, %128
  %162 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %163 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  store i32 0, i32* %3, align 4
  br label %169

164:                                              ; preds = %115, %101, %68, %50
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %166 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %165, i32 0, i32 1
  %167 = call i32 @iwl_remove_notification(i32* %166, %struct.iwl_notification_wait* %6)
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %164, %161, %149, %126
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @iwl_dbg_tlv_time_point(i32*, i32, i32*) #2

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_nvm_access_complete_cmd*) #2

declare dso_local i32 @WIDE_ID(i32, i32) #2

declare dso_local i32 @iwl_read_external_nvm(%struct.TYPE_5__*, i64, i32) #2

declare dso_local i32 @iwl_mvm_load_nvm_to_nic(%struct.iwl_mvm*) #2

declare dso_local i32 @iwl_nvm_init(%struct.iwl_mvm*) #2

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #2

declare dso_local i32* @iwl_get_nvm(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
