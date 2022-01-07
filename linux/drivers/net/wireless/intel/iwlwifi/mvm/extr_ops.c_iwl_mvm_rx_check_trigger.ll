; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_check_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_check_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@FW_DBG_TRIGGER_FW_NOTIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CMD 0x%02x.%02x received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_packet*)* @iwl_mvm_rx_check_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_check_trigger(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %6 = alloca %struct.iwl_fw_dbg_trigger_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 0
  %10 = load i32, i32* @FW_DBG_TRIGGER_FW_NOTIF, align 4
  %11 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %9, i32* null, i32 %10)
  store %struct.iwl_fw_dbg_trigger_tlv* %11, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %12 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %13 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_fw_dbg_trigger_cmd*
  store %struct.iwl_fw_dbg_trigger_cmd* %20, %struct.iwl_fw_dbg_trigger_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %81, %15
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.iwl_fw_dbg_trigger_cmd*, %struct.iwl_fw_dbg_trigger_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_cmd, %struct.iwl_fw_dbg_trigger_cmd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %21
  %29 = load %struct.iwl_fw_dbg_trigger_cmd*, %struct.iwl_fw_dbg_trigger_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_cmd, %struct.iwl_fw_dbg_trigger_cmd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %84

39:                                               ; preds = %28
  %40 = load %struct.iwl_fw_dbg_trigger_cmd*, %struct.iwl_fw_dbg_trigger_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_cmd, %struct.iwl_fw_dbg_trigger_cmd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %67, label %53

53:                                               ; preds = %39
  %54 = load %struct.iwl_fw_dbg_trigger_cmd*, %struct.iwl_fw_dbg_trigger_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_cmd, %struct.iwl_fw_dbg_trigger_cmd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53, %39
  br label %81

68:                                               ; preds = %53
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  %71 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %72 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iwl_fw_dbg_collect_trig(i32* %70, %struct.iwl_fw_dbg_trigger_tlv* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %79)
  br label %84

81:                                               ; preds = %67
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %21

84:                                               ; preds = %14, %68, %38, %21
  ret void
}

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
