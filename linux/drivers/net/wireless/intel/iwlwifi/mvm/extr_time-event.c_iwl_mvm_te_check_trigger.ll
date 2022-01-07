; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_te_check_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_te_check_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_time_event_notif = type { i32, i32 }
%struct.iwl_mvm_time_event_data = type { i32, i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_time_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FW_DBG_TRIGGER_TIME_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Time event %d Action 0x%x received status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_time_event_notif*, %struct.iwl_mvm_time_event_data*)* @iwl_mvm_te_check_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_te_check_trigger(%struct.iwl_mvm* %0, %struct.iwl_time_event_notif* %1, %struct.iwl_mvm_time_event_data* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_time_event_notif*, align 8
  %6 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %7 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %8 = alloca %struct.iwl_fw_dbg_trigger_time_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_time_event_notif* %1, %struct.iwl_time_event_notif** %5, align 8
  store %struct.iwl_mvm_time_event_data* %2, %struct.iwl_mvm_time_event_data** %6, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee80211_vif_to_wdev(i32 %17)
  %19 = load i32, i32* @FW_DBG_TRIGGER_TIME_EVENT, align 4
  %20 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %14, i32 %18, i32 %19)
  store %struct.iwl_fw_dbg_trigger_tlv* %20, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %21 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %22 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %107

24:                                               ; preds = %3
  %25 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.iwl_fw_dbg_trigger_time_event*
  store %struct.iwl_fw_dbg_trigger_time_event* %29, %struct.iwl_fw_dbg_trigger_time_event** %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %104, %24
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.iwl_fw_dbg_trigger_time_event*, %struct.iwl_fw_dbg_trigger_time_event** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_time_event, %struct.iwl_fw_dbg_trigger_time_event* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %30
  %38 = load %struct.iwl_fw_dbg_trigger_time_event*, %struct.iwl_fw_dbg_trigger_time_event** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_time_event, %struct.iwl_fw_dbg_trigger_time_event* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.iwl_fw_dbg_trigger_time_event*, %struct.iwl_fw_dbg_trigger_time_event** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_time_event, %struct.iwl_fw_dbg_trigger_time_event* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.iwl_fw_dbg_trigger_time_event*, %struct.iwl_fw_dbg_trigger_time_event** %8, align 8
  %57 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_time_event, %struct.iwl_fw_dbg_trigger_time_event* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %37
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %5, align 8
  %73 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = and i32 %71, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %79, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %78, %70, %37
  br label %104

88:                                               ; preds = %78
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %89, i32 0, i32 0
  %91 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %92 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %5, align 8
  %100 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = call i32 @iwl_fw_dbg_collect_trig(i32* %90, %struct.iwl_fw_dbg_trigger_tlv* %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %98, i32 %102)
  br label %107

104:                                              ; preds = %87
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %30

107:                                              ; preds = %23, %88, %30
  ret void
}

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
