; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_low_latency_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_low_latency_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mac_low_latency_cmd = type { i32, i32, i32 }

@IWL_UCODE_TLV_CAPA_DYNAMIC_QUOTA = common dso_local global i32 0, align 4
@LOW_LATENCY_CMD = common dso_local global i32 0, align 4
@MAC_CONF_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to send low latency command\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mac_low_latency_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, %struct.iwl_mac_low_latency_cmd* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, %struct.iwl_mac_low_latency_cmd* %7, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, %struct.iwl_mac_low_latency_cmd* %7, i32 0, i32 2
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @IWL_UCODE_TLV_CAPA_DYNAMIC_QUOTA, align 4
  %18 = call i32 @fw_has_capa(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %37

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, %struct.iwl_mac_low_latency_cmd* %7, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, %struct.iwl_mac_low_latency_cmd* %7, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %29 = load i32, i32* @LOW_LATENCY_CMD, align 4
  %30 = load i32, i32* @MAC_CONF_GROUP, align 4
  %31 = call i32 @iwl_cmd_id(i32 %29, i32 %30, i32 0)
  %32 = call i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %28, i32 %31, i32 0, i32 12, %struct.iwl_mac_low_latency_cmd* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = call i32 @IWL_ERR(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %20, %34, %27
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mac_low_latency_cmd*) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
