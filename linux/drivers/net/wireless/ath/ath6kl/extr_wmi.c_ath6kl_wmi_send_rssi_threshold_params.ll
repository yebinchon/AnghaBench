; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_send_rssi_threshold_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_send_rssi_threshold_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.wmi_rssi_threshold_params_cmd = type { i32 }
%struct.sk_buff = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD_PARAMS_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.wmi_rssi_threshold_params_cmd*)* @ath6kl_wmi_send_rssi_threshold_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_send_rssi_threshold_params(%struct.wmi* %0, %struct.wmi_rssi_threshold_params_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca %struct.wmi_rssi_threshold_params_cmd*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_rssi_threshold_params_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store %struct.wmi_rssi_threshold_params_cmd* %1, %struct.wmi_rssi_threshold_params_cmd** %5, align 8
  %8 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 4)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.wmi_rssi_threshold_params_cmd*
  store %struct.wmi_rssi_threshold_params_cmd* %18, %struct.wmi_rssi_threshold_params_cmd** %7, align 8
  %19 = load %struct.wmi_rssi_threshold_params_cmd*, %struct.wmi_rssi_threshold_params_cmd** %7, align 8
  %20 = load %struct.wmi_rssi_threshold_params_cmd*, %struct.wmi_rssi_threshold_params_cmd** %5, align 8
  %21 = call i32 @memcpy(%struct.wmi_rssi_threshold_params_cmd* %19, %struct.wmi_rssi_threshold_params_cmd* %20, i32 4)
  %22 = load %struct.wmi*, %struct.wmi** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* @WMI_RSSI_THRESHOLD_PARAMS_CMDID, align 4
  %25 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %26 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %22, i32 0, %struct.sk_buff* %23, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(%struct.wmi_rssi_threshold_params_cmd*, %struct.wmi_rssi_threshold_params_cmd*, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
