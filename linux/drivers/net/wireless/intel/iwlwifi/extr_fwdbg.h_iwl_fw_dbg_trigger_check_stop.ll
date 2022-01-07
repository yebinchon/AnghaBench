; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_dbg_trigger_check_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_dbg_trigger_check_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i32, i32 }

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.wireless_dev*, %struct.iwl_fw_dbg_trigger_tlv*)* @iwl_fw_dbg_trigger_check_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_dbg_trigger_check_stop(%struct.iwl_fw_runtime* %0, %struct.wireless_dev* %1, %struct.iwl_fw_dbg_trigger_tlv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store %struct.iwl_fw_dbg_trigger_tlv* %2, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %9 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  %13 = load i32, i32* @USEC_PER_MSEC, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %16 = icmp ne %struct.wireless_dev* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %20 = call i32 @iwl_fw_dbg_trigger_vif_match(%struct.iwl_fw_dbg_trigger_tlv* %18, %struct.wireless_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %42

23:                                               ; preds = %17, %3
  %24 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %25 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @iwl_fw_dbg_no_trig_window(%struct.iwl_fw_runtime* %24, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %34 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %4, align 4
  br label %42

38:                                               ; preds = %23
  %39 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %40 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %41 = call i32 @iwl_fw_dbg_trigger_stop_conf_match(%struct.iwl_fw_runtime* %39, %struct.iwl_fw_dbg_trigger_tlv* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %32, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iwl_fw_dbg_trigger_vif_match(%struct.iwl_fw_dbg_trigger_tlv*, %struct.wireless_dev*) #1

declare dso_local i64 @iwl_fw_dbg_no_trig_window(%struct.iwl_fw_runtime*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_fw_runtime*, i8*, i32) #1

declare dso_local i32 @iwl_fw_dbg_trigger_stop_conf_match(%struct.iwl_fw_runtime*, %struct.iwl_fw_dbg_trigger_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
