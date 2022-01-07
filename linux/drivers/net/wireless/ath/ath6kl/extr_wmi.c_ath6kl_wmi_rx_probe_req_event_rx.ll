; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_rx_probe_req_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_rx_probe_req_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.ath6kl_vif = type { i64, i32, i32 }
%struct.wmi_p2p_rx_probe_req_event = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"invalid wmi_p2p_rx_probe_req_event: len=%d dlen=%u\0A\00", align 1
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"rx_probe_req: len=%u freq=%u probe_req_report=%d\0A\00", align 1
@AP_NETWORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_rx_probe_req_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_rx_probe_req_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_p2p_rx_probe_req_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %75

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = bitcast i32* %20 to %struct.wmi_p2p_rx_probe_req_event*
  store %struct.wmi_p2p_rx_probe_req_event* %21, %struct.wmi_p2p_rx_probe_req_event** %10, align 8
  %22 = load %struct.wmi_p2p_rx_probe_req_event*, %struct.wmi_p2p_rx_probe_req_event** %10, align 8
  %23 = getelementptr inbounds %struct.wmi_p2p_rx_probe_req_event, %struct.wmi_p2p_rx_probe_req_event* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.wmi_p2p_rx_probe_req_event*, %struct.wmi_p2p_rx_probe_req_event** %10, align 8
  %27 = getelementptr inbounds %struct.wmi_p2p_rx_probe_req_event, %struct.wmi_p2p_rx_probe_req_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.wmi_p2p_rx_probe_req_event*, %struct.wmi_p2p_rx_probe_req_event** %10, align 8
  %35 = getelementptr inbounds %struct.wmi_p2p_rx_probe_req_event, %struct.wmi_p2p_rx_probe_req_event* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = icmp ult i32* %33, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %19
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @ath6kl_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %75

47:                                               ; preds = %19
  %48 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %52 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ath6kl_dbg(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %53)
  %55 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %56 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %47
  %60 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %61 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AP_NETWORK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59, %47
  %66 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %67 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %66, i32 0, i32 1
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.wmi_p2p_rx_probe_req_event*, %struct.wmi_p2p_rx_probe_req_event** %10, align 8
  %70 = getelementptr inbounds %struct.wmi_p2p_rx_probe_req_event, %struct.wmi_p2p_rx_probe_req_event* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @cfg80211_rx_mgmt(i32* %67, i32 %68, i32 0, i32* %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %65, %59
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %41, %16
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_rx_mgmt(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
