; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_deinit_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_deinit_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@WL_P2P_DISC_ST_SCAN = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"p2p_disc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*)* @brcmf_p2p_deinit_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_deinit_discovery(%struct.brcmf_p2p_info* %0) #0 {
  %2 = alloca %struct.brcmf_p2p_info*, align 8
  %3 = alloca %struct.brcmf_cfg80211_vif*, align 8
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %2, align 8
  %4 = load i32, i32* @TRACE, align 4
  %5 = call i32 @brcmf_dbg(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  store %struct.brcmf_cfg80211_vif* %12, %struct.brcmf_cfg80211_vif** %3, align 8
  %13 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WL_P2P_DISC_ST_SCAN, align 4
  %17 = call i32 @brcmf_p2p_set_discover_state(i32 %15, i32 %16, i32 0, i32 0)
  %18 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %19 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %23, align 8
  store %struct.brcmf_cfg80211_vif* %24, %struct.brcmf_cfg80211_vif** %3, align 8
  %25 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @brcmf_fil_iovar_int_set(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  ret i32 0
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_p2p_set_discover_state(i32, i32, i32, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
