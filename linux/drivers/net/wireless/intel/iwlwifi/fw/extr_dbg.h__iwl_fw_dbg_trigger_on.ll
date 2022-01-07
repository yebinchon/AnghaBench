; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h__iwl_fw_dbg_trigger_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h__iwl_fw_dbg_trigger_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_dbg_trigger_tlv = type { i32 }
%struct.iwl_fw_runtime = type { i32, i32 }
%struct.wireless_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_fw_dbg_trigger_tlv* (%struct.iwl_fw_runtime*, %struct.wireless_dev*, i32)* @_iwl_fw_dbg_trigger_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_fw_dbg_trigger_tlv* @_iwl_fw_dbg_trigger_on(%struct.iwl_fw_runtime* %0, %struct.wireless_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @iwl_trans_dbg_ini_valid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.iwl_fw_dbg_trigger_tlv* null, %struct.iwl_fw_dbg_trigger_tlv** %4, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @iwl_fw_dbg_trigger_enabled(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store %struct.iwl_fw_dbg_trigger_tlv* null, %struct.iwl_fw_dbg_trigger_tlv** %4, align 8
  br label %37

23:                                               ; preds = %15
  %24 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.iwl_fw_dbg_trigger_tlv* @_iwl_fw_dbg_get_trigger(i32 %26, i32 %27)
  store %struct.iwl_fw_dbg_trigger_tlv* %28, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  %29 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %31 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  %32 = call i32 @iwl_fw_dbg_trigger_check_stop(%struct.iwl_fw_runtime* %29, %struct.wireless_dev* %30, %struct.iwl_fw_dbg_trigger_tlv* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store %struct.iwl_fw_dbg_trigger_tlv* null, %struct.iwl_fw_dbg_trigger_tlv** %4, align 8
  br label %37

35:                                               ; preds = %23
  %36 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  store %struct.iwl_fw_dbg_trigger_tlv* %36, %struct.iwl_fw_dbg_trigger_tlv** %4, align 8
  br label %37

37:                                               ; preds = %35, %34, %22, %14
  %38 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %4, align 8
  ret %struct.iwl_fw_dbg_trigger_tlv* %38
}

declare dso_local i64 @iwl_trans_dbg_ini_valid(i32) #1

declare dso_local i32 @iwl_fw_dbg_trigger_enabled(i32, i32) #1

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @_iwl_fw_dbg_get_trigger(i32, i32) #1

declare dso_local i32 @iwl_fw_dbg_trigger_check_stop(%struct.iwl_fw_runtime*, %struct.wireless_dev*, %struct.iwl_fw_dbg_trigger_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
