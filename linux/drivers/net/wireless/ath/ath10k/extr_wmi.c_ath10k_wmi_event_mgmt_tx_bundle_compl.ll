; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_mgmt_tx_bundle_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_mgmt_tx_bundle_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg = type { i32*, i32*, i32 }
%struct.mgmt_tx_compl_params = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [45 x i8] c"failed to parse bundle mgmt compl event: %d\0A\00", align 1
@WMI_SERVICE_TX_DATA_ACK_RSSI = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"wmi tlv event bundle mgmt tx completion\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_event_mgmt_tx_bundle_compl(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, align 8
  %7 = alloca %struct.mgmt_tx_compl_params, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @ath10k_wmi_pull_mgmt_tx_bundle_compl(%struct.ath10k* %11, %struct.sk_buff* %12, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %6)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ath10k_warn(%struct.ath10k* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %6, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @__le32_to_cpu(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %67, %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = call i32 @memset(%struct.mgmt_tx_compl_params* %7, i32 0, i32 24)
  %32 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %6, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__le32_to_cpu(i32 %37)
  %39 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %7, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %6, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @__le32_to_cpu(i32 %45)
  %47 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %7, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @WMI_SERVICE_TX_DATA_ACK_RSSI, align 4
  %49 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @test_bit(i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %30
  %56 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %6, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @__le32_to_cpu(i32 %61)
  %63 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %7, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %55, %30
  %65 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %66 = call i32 @wmi_process_mgmt_tx_comp(%struct.ath10k* %65, %struct.mgmt_tx_compl_params* %7)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %73 = call i32 @ath10k_dbg(%struct.ath10k* %71, i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ath10k_wmi_pull_mgmt_tx_bundle_compl(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.mgmt_tx_compl_params*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wmi_process_mgmt_tx_comp(%struct.ath10k*, %struct.mgmt_tx_compl_params*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
