; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.h_wow_reason.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.h_wow_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WOW_REASON_AP_ASSOC_LOST = common dso_local global i32 0, align 4
@WOW_REASON_ASSOC_REQ_RECV = common dso_local global i32 0, align 4
@WOW_REASON_AUTH_REQ_RECV = common dso_local global i32 0, align 4
@WOW_REASON_BEACON_RECV = common dso_local global i32 0, align 4
@WOW_REASON_CLIENT_KICKOUT_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_CSA_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_DEAUTH_RECVD = common dso_local global i32 0, align 4
@WOW_REASON_DEBUG_TEST = common dso_local global i32 0, align 4
@WOW_REASON_DFS_PHYERR_RADADR_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_DISASSOC_RECVD = common dso_local global i32 0, align 4
@WOW_REASON_EAP_REQ = common dso_local global i32 0, align 4
@WOW_REASON_FOURWAY_HS_RECV = common dso_local global i32 0, align 4
@WOW_REASON_GTK_HS_ERR = common dso_local global i32 0, align 4
@WOW_REASON_HOST_AUTO_SHUTDOWN = common dso_local global i32 0, align 4
@WOW_REASON_HTT_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_IOAC_EXTEND_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_IOAC_MAGIC_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_IOAC_SHORT_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_IOAC_TIMER_EVENT = common dso_local global i32 0, align 4
@WOW_REASON_LOW_RSSI = common dso_local global i32 0, align 4
@WOW_REASON_NLOD = common dso_local global i32 0, align 4
@WOW_REASON_P2P_DISC = common dso_local global i32 0, align 4
@WOW_REASON_PATTERN_MATCH_FOUND = common dso_local global i32 0, align 4
@WOW_REASON_PROBE_REQ_WPS_IE_RECV = common dso_local global i32 0, align 4
@WOW_REASON_RA_MATCH = common dso_local global i32 0, align 4
@WOW_REASON_RECV_MAGIC_PATTERN = common dso_local global i32 0, align 4
@WOW_REASON_ROAM_HO = common dso_local global i32 0, align 4
@WOW_REASON_TIMER_INTR_RECV = common dso_local global i32 0, align 4
@WOW_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@WOW_REASON_WLAN_HB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @wow_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wow_reason(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
  ]

4:                                                ; preds = %1
  ret i8* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
