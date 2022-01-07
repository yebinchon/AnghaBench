; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_bcn_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_bcn_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_tlv_bcn_tx_status_ev = type { i32, i32 }
%struct.ath10k_vif = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_OFFLOAD_BCN_TX_STATUS_EVENT = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"received bcn tmpl tx status on vdev %i: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_tlv_event_bcn_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_event_bcn_tx_status(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.wmi_tlv_bcn_tx_status_ev*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %12, i32 %15, i32 %18, i32 %19)
  store i8** %20, i8*** %6, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = call i64 @IS_ERR(i8** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i8**, i8*** %6, align 8
  %26 = call i32 @PTR_ERR(i8** %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %88

31:                                               ; preds = %2
  %32 = load i8**, i8*** %6, align 8
  %33 = load i64, i64* @WMI_TLV_TAG_STRUCT_OFFLOAD_BCN_TX_STATUS_EVENT, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.wmi_tlv_bcn_tx_status_ev*
  store %struct.wmi_tlv_bcn_tx_status_ev* %36, %struct.wmi_tlv_bcn_tx_status_ev** %7, align 8
  %37 = load %struct.wmi_tlv_bcn_tx_status_ev*, %struct.wmi_tlv_bcn_tx_status_ev** %7, align 8
  %38 = icmp ne %struct.wmi_tlv_bcn_tx_status_ev* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load i8**, i8*** %6, align 8
  %41 = call i32 @kfree(i8** %40)
  %42 = load i32, i32* @EPROTO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %31
  %45 = load %struct.wmi_tlv_bcn_tx_status_ev*, %struct.wmi_tlv_bcn_tx_status_ev** %7, align 8
  %46 = getelementptr inbounds %struct.wmi_tlv_bcn_tx_status_ev, %struct.wmi_tlv_bcn_tx_status_ev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__le32_to_cpu(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.wmi_tlv_bcn_tx_status_ev*, %struct.wmi_tlv_bcn_tx_status_ev** %7, align 8
  %50 = getelementptr inbounds %struct.wmi_tlv_bcn_tx_status_ev, %struct.wmi_tlv_bcn_tx_status_ev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__le32_to_cpu(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %60 [
    i32 129, label %54
    i32 128, label %55
    i32 131, label %55
    i32 130, label %55
  ]

54:                                               ; preds = %44
  br label %60

55:                                               ; preds = %44, %44, %44
  %56 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %44, %55, %54
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %61, i32 %62)
  store %struct.ath10k_vif* %63, %struct.ath10k_vif** %8, align 8
  %64 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %65 = icmp ne %struct.ath10k_vif* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %68 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %73 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %83 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %82, i32 0, i32 0
  %84 = call i32 @ieee80211_queue_work(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %78, %71, %66, %60
  %86 = load i8**, i8*** %6, align 8
  %87 = call i32 @kfree(i8** %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %39, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k*, i32) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
