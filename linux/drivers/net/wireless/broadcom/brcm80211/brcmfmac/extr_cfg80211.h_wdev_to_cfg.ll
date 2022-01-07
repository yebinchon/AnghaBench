; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.h_wdev_to_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.h_wdev_to_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32 }
%struct.wireless_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_cfg80211_info* (%struct.wireless_dev*)* @wdev_to_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_cfg80211_info* @wdev_to_cfg(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %2, align 8
  %3 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %4 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(i32 %5)
  ret %struct.brcmf_cfg80211_info* %6
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
