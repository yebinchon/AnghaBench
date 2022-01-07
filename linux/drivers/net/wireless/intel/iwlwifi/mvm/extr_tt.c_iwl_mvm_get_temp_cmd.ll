; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_get_temp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_get_temp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_dts_measurement_cmd = type { i32, i32 }
%struct.iwl_ext_dts_measurement_cmd = type { i32, i32 }

@DTS_TRIGGER_CMD_FLAGS_TEMP = common dso_local global i32 0, align 4
@DTS_AUTOMATIC = common dso_local global i32 0, align 4
@CMD_DTS_MEASUREMENT_TRIGGER_WIDE = common dso_local global i32 0, align 4
@PHY_OPS_GROUP = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_EXTENDED_DTS_MEASURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_get_temp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_temp_cmd(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_dts_measurement_cmd, align 4
  %5 = alloca %struct.iwl_ext_dts_measurement_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_dts_measurement_cmd, %struct.iwl_dts_measurement_cmd* %4, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.iwl_dts_measurement_cmd, %struct.iwl_dts_measurement_cmd* %4, i32 0, i32 1
  %9 = load i32, i32* @DTS_TRIGGER_CMD_FLAGS_TEMP, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.iwl_ext_dts_measurement_cmd, %struct.iwl_ext_dts_measurement_cmd* %5, i32 0, i32 0
  %12 = load i32, i32* @DTS_AUTOMATIC, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.iwl_ext_dts_measurement_cmd, %struct.iwl_ext_dts_measurement_cmd* %5, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @CMD_DTS_MEASUREMENT_TRIGGER_WIDE, align 4
  %16 = load i32, i32* @PHY_OPS_GROUP, align 4
  %17 = call i32 @iwl_cmd_id(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @IWL_UCODE_TLV_CAPA_EXTENDED_DTS_MEASURE, align 4
  %23 = call i32 @fw_has_capa(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = bitcast %struct.iwl_dts_measurement_cmd* %4 to %struct.iwl_ext_dts_measurement_cmd*
  %29 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %26, i32 %27, i32 0, i32 8, %struct.iwl_ext_dts_measurement_cmd* %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %31, i32 %32, i32 0, i32 8, %struct.iwl_ext_dts_measurement_cmd* %5)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_ext_dts_measurement_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
