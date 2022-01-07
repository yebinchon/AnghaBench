; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_led.c_iwl_mvm_send_led_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_led.c_iwl_mvm_send_led_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_led_cmd = type { i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@LONG_GROUP = common dso_local global i32 0, align 4
@LEDS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"LED command failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32)* @iwl_mvm_send_led_fw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_send_led_fw_cmd(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_led_cmd, align 4
  %6 = alloca %struct.iwl_host_cmd, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %5, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %12 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %14 = ptrtoint %struct.iwl_led_cmd* %5 to i32
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store i32 4, i32* %15, align 4
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %17 = load i32, i32* @LONG_GROUP, align 4
  %18 = load i32, i32* @LEDS_CMD, align 4
  %19 = call i32 @WIDE_ID(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %25, %struct.iwl_host_cmd* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @IWL_WARN(%struct.iwl_mvm* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %23, %29, %24
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
