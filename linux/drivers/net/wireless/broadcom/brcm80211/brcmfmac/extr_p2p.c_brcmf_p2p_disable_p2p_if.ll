; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_disable_p2p_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_disable_p2p_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.brcmf_cfg80211_info = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"p2p_ifdis\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_vif*)* @brcmf_p2p_disable_p2p_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_disable_p2p_if(%struct.brcmf_cfg80211_vif* %0) #0 {
  %2 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca i32*, align 8
  store %struct.brcmf_cfg80211_vif* %0, %struct.brcmf_cfg80211_vif** %2, align 8
  %7 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %2, align 8
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %7, i32 0, i32 0
  %9 = call %struct.brcmf_cfg80211_info* @wdev_to_cfg(%struct.TYPE_4__* %8)
  store %struct.brcmf_cfg80211_info* %9, %struct.brcmf_cfg80211_info** %3, align 8
  %10 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %11 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %12)
  store %struct.brcmf_if* %13, %struct.brcmf_if** %5, align 8
  %14 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %2, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %22)
  ret i32 %23
}

declare dso_local %struct.brcmf_cfg80211_info* @wdev_to_cfg(%struct.TYPE_4__*) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
