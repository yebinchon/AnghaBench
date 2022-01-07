; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_temp_notif_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_temp_notif_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_dts_measurement_notif_v1 = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Invalid DTS_MEASUREMENT_NOTIFICATION\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DTS_MEASUREMENT_NOTIFICATION - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_rx_packet*)* @iwl_mvm_temp_notif_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_temp_notif_parse(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_dts_measurement_notif_v1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = call i32 @IWL_ERR(%struct.iwl_mvm* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.iwl_dts_measurement_notif_v1*
  store %struct.iwl_dts_measurement_notif_v1* %27, %struct.iwl_dts_measurement_notif_v1** %6, align 8
  %28 = load %struct.iwl_dts_measurement_notif_v1*, %struct.iwl_dts_measurement_notif_v1** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_dts_measurement_notif_v1, %struct.iwl_dts_measurement_notif_v1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
