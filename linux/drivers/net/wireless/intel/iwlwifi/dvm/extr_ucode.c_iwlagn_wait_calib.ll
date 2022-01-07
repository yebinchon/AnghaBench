; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwlagn_wait_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwlagn_wait_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32 }
%struct.iwl_rx_packet = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_priv = type { i32 }
%struct.iwl_calib_hdr = type { i32 }

@CALIBRATION_RES_NOTIFICATION = common dso_local global i64 0, align 8
@CALIBRATION_COMPLETE_NOTIFICATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to record calibration data %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet*, i8*)* @iwlagn_wait_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_wait_calib(%struct.iwl_notif_wait_data* %0, %struct.iwl_rx_packet* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_notif_wait_data*, align 8
  %6 = alloca %struct.iwl_rx_packet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.iwl_calib_hdr*, align 8
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %5, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.iwl_priv*
  store %struct.iwl_priv* %11, %struct.iwl_priv** %8, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CALIBRATION_RES_NOTIFICATION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CALIBRATION_COMPLETE_NOTIFICATION, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  store i32 1, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.iwl_calib_hdr*
  store %struct.iwl_calib_hdr* %31, %struct.iwl_calib_hdr** %9, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %33 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %9, align 8
  %34 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %35 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %34)
  %36 = call i64 @iwl_calib_set(%struct.iwl_priv* %32, %struct.iwl_calib_hdr* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %40 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_calib_hdr, %struct.iwl_calib_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IWL_ERR(%struct.iwl_priv* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %27
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @iwl_calib_set(%struct.iwl_priv*, %struct.iwl_calib_hdr*, i32) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
