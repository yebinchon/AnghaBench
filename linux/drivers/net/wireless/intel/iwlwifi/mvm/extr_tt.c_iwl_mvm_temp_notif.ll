; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_temp_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_temp_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.iwl_mvm_thermal_device, i32 }
%struct.iwl_mvm_thermal_device = type { i32*, i64 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_dts_measurement_notif_v2 = type { i32 }

@IWL_MVM_STATUS_HW_CTKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid DTS_MEASUREMENT_NOTIFICATION\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Temp = %d Threshold crossed = %d\0A\00", align 1
@IWL_MAX_DTS_TRIPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_temp_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_dts_measurement_notif_v2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %11, %struct.iwl_rx_packet** %5, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %13 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @IWL_MVM_STATUS_HW_CTKILL, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %23 = call i32 @iwl_mvm_temp_notif_parse(%struct.iwl_mvm* %21, %struct.iwl_rx_packet* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = call i32 @iwl_mvm_is_tt_in_fw(%struct.iwl_mvm* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @iwl_mvm_tt_temp_changed(%struct.iwl_mvm* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %63

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %44 = call i32 @IWL_ERR(%struct.iwl_mvm* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %63

45:                                               ; preds = %35
  %46 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.iwl_dts_measurement_notif_v2*
  store %struct.iwl_dts_measurement_notif_v2* %50, %struct.iwl_dts_measurement_notif_v2** %6, align 8
  %51 = load %struct.iwl_dts_measurement_notif_v2*, %struct.iwl_dts_measurement_notif_v2** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_dts_measurement_notif_v2, %struct.iwl_dts_measurement_notif_v2* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %63

58:                                               ; preds = %45
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %57, %42, %34, %19
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_temp_notif_parse(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @iwl_mvm_is_tt_in_fw(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_tt_temp_changed(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
