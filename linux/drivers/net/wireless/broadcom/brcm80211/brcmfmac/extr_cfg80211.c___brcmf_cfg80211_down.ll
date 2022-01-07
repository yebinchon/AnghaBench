; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c___brcmf_cfg80211_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c___brcmf_cfg80211_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { i32 }

@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*)* @__brcmf_cfg80211_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__brcmf_cfg80211_down(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %4 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  store %struct.brcmf_cfg80211_info* %8, %struct.brcmf_cfg80211_info** %3, align 8
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call i64 @check_vif_up(%struct.TYPE_5__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %16 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %19 = call i32 @brcmf_link_down(%struct.TYPE_5__* %17, i32 %18)
  %20 = call i32 @brcmf_delay(i32 500)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %23 = call i32 @brcmf_abort_scanning(%struct.brcmf_cfg80211_info* %22)
  %24 = load i32, i32* @BRCMF_VIF_STATUS_READY, align 4
  %25 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %26 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %24, i32* %28)
  ret i32 0
}

declare dso_local i64 @check_vif_up(%struct.TYPE_5__*) #1

declare dso_local i32 @brcmf_link_down(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @brcmf_delay(i32) #1

declare dso_local i32 @brcmf_abort_scanning(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
