; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mac_power_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [77 x i8] c"Sending power table command on mac id 0x%X for power level %d, flags = 0x%X\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Keep alive = %u sec\0A\00", align 1
@POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Disable power management\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Rx timeout = %u usec\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Tx timeout = %u usec\0A\00", align 1
@POWER_FLAGS_SKIP_OVER_DTIM_MSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"DTIM periods to skip = %u\0A\00", align 1
@POWER_FLAGS_LPRX_ENA_MSK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"LP RX RSSI threshold = %u\0A\00", align 1
@POWER_FLAGS_ADVANCE_PM_ENA_MSK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"uAPSD enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Rx timeout (uAPSD) = %u usec\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Tx timeout (uAPSD) = %u usec\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"QNDP TID = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ACs flags = 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Max SP = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mac_power_cmd*)* @iwl_mvm_power_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_power_log(%struct.iwl_mvm* %0, %struct.iwl_mac_power_cmd* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_mac_power_cmd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mac_power_cmd* %1, %struct.iwl_mac_power_cmd** %4, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlmvm_mod_params, i32 0, i32 0), align 4
  %10 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %5, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %109

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %39 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @POWER_FLAGS_SKIP_OVER_DTIM_MSK, align 4
  %48 = call i32 @cpu_to_le16(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %31
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %53 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %31
  %58 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @POWER_FLAGS_LPRX_ENA_MSK, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %67 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @POWER_FLAGS_ADVANCE_PM_ENA_MSK, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %71
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %81 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %83 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %89 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %90 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %95 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %100 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %102)
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %105 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %28, %79, %71
  ret void
}

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
