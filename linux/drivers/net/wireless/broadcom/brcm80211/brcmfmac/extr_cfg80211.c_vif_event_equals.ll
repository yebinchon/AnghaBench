; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_vif_event_equals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_vif_event_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_vif_event = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_vif_event*, i64)* @vif_event_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vif_event_equals(%struct.brcmf_cfg80211_vif_event* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_cfg80211_vif_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.brcmf_cfg80211_vif_event* %0, %struct.brcmf_cfg80211_vif_event** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %12, i32 0, i32 1
  %14 = call i32 @spin_unlock(i32* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
