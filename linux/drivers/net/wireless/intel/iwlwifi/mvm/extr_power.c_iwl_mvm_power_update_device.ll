; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.iwl_mvm = type { i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_device_power_cmd = type { i32 }

@iwlmvm_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IWL_POWER_SCHEME_CAM = common dso_local global i64 0, align 8
@DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK = common dso_local global i32 0, align 4
@DEVICE_POWER_FLAGS_32K_CLK_VALID_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Sending device power command with flags = 0x%X\0A\00", align 1
@POWER_TABLE_CMD = common dso_local global i32 0, align 4
@IWL_UCODE_WOWLAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_power_update_device(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_device_power_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = bitcast %struct.iwl_device_power_cmd* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %6 = load i64, i64* @IWL_POWER_SCHEME_CAM, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.iwl_device_power_cmd, %struct.iwl_device_power_cmd* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @DEVICE_POWER_FLAGS_32K_CLK_VALID_MSK, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = getelementptr inbounds %struct.iwl_device_power_cmd, %struct.iwl_device_power_cmd* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_device_power_cmd, %struct.iwl_device_power_cmd* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IWL_DEBUG_POWER(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %39 = load i32, i32* @POWER_TABLE_CMD, align 4
  %40 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %38, i32 %39, i32 0, i32 4, %struct.iwl_device_power_cmd* %3)
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_device_power_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
