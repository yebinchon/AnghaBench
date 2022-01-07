; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_scan_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_scan_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i32, i32 }
%struct.brcmf_cfg80211_vif = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_6__, %struct.brcmf_p2p_info }
%struct.TYPE_6__ = type { i32 }
%struct.brcmf_p2p_info = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.brcmf_cfg80211_vif* }
%struct.TYPE_4__ = type { i32 }

@BRCMF_P2P_STATUS_GO_NEG_PHASE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"P2P: GO_NEG_PHASE status cleared\0A\00", align 1
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@brcmf_p2p_run_escan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_scan_prep(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1, %struct.brcmf_cfg80211_vif* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_p2p_info*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %6, align 8
  store %struct.brcmf_cfg80211_vif* %2, %struct.brcmf_cfg80211_vif** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %11)
  store %struct.brcmf_cfg80211_info* %12, %struct.brcmf_cfg80211_info** %8, align 8
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %13, i32 0, i32 1
  store %struct.brcmf_p2p_info* %14, %struct.brcmf_p2p_info** %9, align 8
  %15 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %16 = call i64 @brcmf_p2p_scan_is_p2p_request(%struct.cfg80211_scan_request* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %20 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @brcmf_p2p_find_listen_channel(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %60

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %33 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @BRCMF_P2P_STATUS_GO_NEG_PHASE, align 4
  %36 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %37 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load i32, i32* @INFO, align 4
  %40 = call i32 @brcmf_dbg(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %42 = call i32 @brcmf_p2p_enable_discovery(%struct.brcmf_p2p_info* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %30
  %48 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %49 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %53, align 8
  store %struct.brcmf_cfg80211_vif* %54, %struct.brcmf_cfg80211_vif** %7, align 8
  %55 = load i32, i32* @brcmf_p2p_run_escan, align 4
  %56 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %57 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %47, %3
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %45, %28
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local i64 @brcmf_p2p_scan_is_p2p_request(%struct.cfg80211_scan_request*) #1

declare dso_local i32 @brcmf_p2p_find_listen_channel(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_p2p_enable_discovery(%struct.brcmf_p2p_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
