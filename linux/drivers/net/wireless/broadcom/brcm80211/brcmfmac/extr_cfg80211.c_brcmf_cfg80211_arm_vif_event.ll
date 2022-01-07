; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_arm_vif_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_arm_vif_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_cfg80211_vif_event }
%struct.brcmf_cfg80211_vif_event = type { i32, i64, %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_vif* %1) #0 {
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %5 = alloca %struct.brcmf_cfg80211_vif_event*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  store %struct.brcmf_cfg80211_vif* %1, %struct.brcmf_cfg80211_vif** %4, align 8
  %6 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %6, i32 0, i32 0
  store %struct.brcmf_cfg80211_vif_event* %7, %struct.brcmf_cfg80211_vif_event** %5, align 8
  %8 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %5, align 8
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %12 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %12, i32 0, i32 2
  store %struct.brcmf_cfg80211_vif* %11, %struct.brcmf_cfg80211_vif** %13, align 8
  %14 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
