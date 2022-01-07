; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_mgmt_tx_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_mgmt_tx_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_tlv_mgmt_tx_compl_ev_arg = type { i32, i32, i32 }
%struct.mgmt_tx_compl_params = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"failed to parse mgmt comp event: %d\0A\00", align 1
@WMI_SERVICE_TX_DATA_ACK_RSSI = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"wmi tlv evnt mgmt tx completion\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_event_mgmt_tx_compl(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_tlv_mgmt_tx_compl_ev_arg, align 4
  %7 = alloca %struct.mgmt_tx_compl_params, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @ath10k_wmi_pull_mgmt_tx_compl(%struct.ath10k* %9, %struct.sk_buff* %10, %struct.wmi_tlv_mgmt_tx_compl_ev_arg* %6)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ath10k_warn(%struct.ath10k* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = call i32 @memset(%struct.mgmt_tx_compl_params* %7, i32 0, i32 24)
  %21 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_compl_ev_arg* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @__le32_to_cpu(i32 %22)
  %24 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %7, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_compl_ev_arg* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @__le32_to_cpu(i32 %26)
  %28 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %7, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @WMI_SERVICE_TX_DATA_ACK_RSSI, align 4
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @test_bit(i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_compl_ev_arg* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @__le32_to_cpu(i32 %38)
  %40 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %7, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %19
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = call i32 @wmi_process_mgmt_tx_comp(%struct.ath10k* %42, %struct.mgmt_tx_compl_params* %7)
  %44 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %45 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %46 = call i32 @ath10k_dbg(%struct.ath10k* %44, i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ath10k_wmi_pull_mgmt_tx_compl(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_tlv_mgmt_tx_compl_ev_arg*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @memset(%struct.mgmt_tx_compl_params*, i32, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wmi_process_mgmt_tx_comp(%struct.ath10k*, %struct.mgmt_tx_compl_params*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
