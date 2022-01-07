; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_ct_kill_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_ct_kill_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.ct_kill_notif = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid CT_KILL_NOTIFICATION\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"CT Kill notification temperature = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_ct_kill_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.ct_kill_notif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %8)
  store %struct.iwl_rx_packet* %9, %struct.iwl_rx_packet** %5, align 8
  %10 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %11 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 4
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = call i32 @IWL_ERR(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ct_kill_notif*
  store %struct.ct_kill_notif* %25, %struct.ct_kill_notif** %6, align 8
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = load %struct.ct_kill_notif*, %struct.ct_kill_notif** %6, align 8
  %28 = getelementptr inbounds %struct.ct_kill_notif, %struct.ct_kill_notif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = call i32 @iwl_mvm_enter_ctkill(%struct.iwl_mvm* %31)
  br label %33

33:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_enter_ctkill(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
