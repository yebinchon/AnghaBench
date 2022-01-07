; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_ifp_removed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_ifp_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"P2P: device interface removed\0A\00", align 1
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_p2p_ifp_removed(%struct.brcmf_if* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.brcmf_cfg80211_vif*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @INFO, align 4
  %8 = call i32 @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 0
  %11 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %10, align 8
  store %struct.brcmf_cfg80211_vif* %11, %struct.brcmf_cfg80211_vif** %6, align 8
  %12 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %12, i32 0, i32 0
  %14 = call %struct.brcmf_cfg80211_info* @wdev_to_cfg(i32* %13)
  store %struct.brcmf_cfg80211_info* %14, %struct.brcmf_cfg80211_info** %5, align 8
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (...) @rtnl_lock()
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %6, align 8
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %27, i32 0, i32 0
  %29 = call i32 @cfg80211_unregister_wdev(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 (...) @rtnl_unlock()
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %6, align 8
  %36 = call i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif* %35)
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_cfg80211_info* @wdev_to_cfg(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @cfg80211_unregister_wdev(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
