; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_register_event_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_register_event_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32 }

@BRCMF_E_LINK = common dso_local global i32 0, align 4
@brcmf_notify_connect_status = common dso_local global i32 0, align 4
@BRCMF_E_DEAUTH_IND = common dso_local global i32 0, align 4
@BRCMF_E_DEAUTH = common dso_local global i32 0, align 4
@BRCMF_E_DISASSOC_IND = common dso_local global i32 0, align 4
@BRCMF_E_ASSOC_IND = common dso_local global i32 0, align 4
@BRCMF_E_REASSOC_IND = common dso_local global i32 0, align 4
@BRCMF_E_ROAM = common dso_local global i32 0, align 4
@brcmf_notify_roaming_status = common dso_local global i32 0, align 4
@BRCMF_E_MIC_ERROR = common dso_local global i32 0, align 4
@brcmf_notify_mic_status = common dso_local global i32 0, align 4
@BRCMF_E_SET_SSID = common dso_local global i32 0, align 4
@BRCMF_E_PFN_NET_FOUND = common dso_local global i32 0, align 4
@brcmf_notify_sched_scan_results = common dso_local global i32 0, align 4
@BRCMF_E_IF = common dso_local global i32 0, align 4
@brcmf_notify_vif_event = common dso_local global i32 0, align 4
@BRCMF_E_P2P_PROBEREQ_MSG = common dso_local global i32 0, align 4
@brcmf_p2p_notify_rx_mgmt_p2p_probereq = common dso_local global i32 0, align 4
@BRCMF_E_P2P_DISC_LISTEN_COMPLETE = common dso_local global i32 0, align 4
@brcmf_p2p_notify_listen_complete = common dso_local global i32 0, align 4
@BRCMF_E_ACTION_FRAME_RX = common dso_local global i32 0, align 4
@brcmf_p2p_notify_action_frame_rx = common dso_local global i32 0, align 4
@BRCMF_E_ACTION_FRAME_COMPLETE = common dso_local global i32 0, align 4
@brcmf_p2p_notify_action_tx_complete = common dso_local global i32 0, align 4
@BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE = common dso_local global i32 0, align 4
@BRCMF_E_PSK_SUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_cfg80211_info*)* @brcmf_register_event_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_register_event_handlers(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca %struct.brcmf_cfg80211_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %2, align 8
  %3 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BRCMF_E_LINK, align 4
  %7 = load i32, i32* @brcmf_notify_connect_status, align 4
  %8 = call i32 @brcmf_fweh_register(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BRCMF_E_DEAUTH_IND, align 4
  %13 = load i32, i32* @brcmf_notify_connect_status, align 4
  %14 = call i32 @brcmf_fweh_register(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BRCMF_E_DEAUTH, align 4
  %19 = load i32, i32* @brcmf_notify_connect_status, align 4
  %20 = call i32 @brcmf_fweh_register(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BRCMF_E_DISASSOC_IND, align 4
  %25 = load i32, i32* @brcmf_notify_connect_status, align 4
  %26 = call i32 @brcmf_fweh_register(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BRCMF_E_ASSOC_IND, align 4
  %31 = load i32, i32* @brcmf_notify_connect_status, align 4
  %32 = call i32 @brcmf_fweh_register(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BRCMF_E_REASSOC_IND, align 4
  %37 = load i32, i32* @brcmf_notify_connect_status, align 4
  %38 = call i32 @brcmf_fweh_register(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %40 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BRCMF_E_ROAM, align 4
  %43 = load i32, i32* @brcmf_notify_roaming_status, align 4
  %44 = call i32 @brcmf_fweh_register(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BRCMF_E_MIC_ERROR, align 4
  %49 = load i32, i32* @brcmf_notify_mic_status, align 4
  %50 = call i32 @brcmf_fweh_register(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BRCMF_E_SET_SSID, align 4
  %55 = load i32, i32* @brcmf_notify_connect_status, align 4
  %56 = call i32 @brcmf_fweh_register(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %58 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BRCMF_E_PFN_NET_FOUND, align 4
  %61 = load i32, i32* @brcmf_notify_sched_scan_results, align 4
  %62 = call i32 @brcmf_fweh_register(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BRCMF_E_IF, align 4
  %67 = load i32, i32* @brcmf_notify_vif_event, align 4
  %68 = call i32 @brcmf_fweh_register(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %70 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BRCMF_E_P2P_PROBEREQ_MSG, align 4
  %73 = load i32, i32* @brcmf_p2p_notify_rx_mgmt_p2p_probereq, align 4
  %74 = call i32 @brcmf_fweh_register(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BRCMF_E_P2P_DISC_LISTEN_COMPLETE, align 4
  %79 = load i32, i32* @brcmf_p2p_notify_listen_complete, align 4
  %80 = call i32 @brcmf_fweh_register(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %82 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BRCMF_E_ACTION_FRAME_RX, align 4
  %85 = load i32, i32* @brcmf_p2p_notify_action_frame_rx, align 4
  %86 = call i32 @brcmf_fweh_register(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %88 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BRCMF_E_ACTION_FRAME_COMPLETE, align 4
  %91 = load i32, i32* @brcmf_p2p_notify_action_tx_complete, align 4
  %92 = call i32 @brcmf_fweh_register(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %94 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE, align 4
  %97 = load i32, i32* @brcmf_p2p_notify_action_tx_complete, align 4
  %98 = call i32 @brcmf_fweh_register(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %100 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BRCMF_E_PSK_SUP, align 4
  %103 = load i32, i32* @brcmf_notify_connect_status, align 4
  %104 = call i32 @brcmf_fweh_register(i32 %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @brcmf_fweh_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
