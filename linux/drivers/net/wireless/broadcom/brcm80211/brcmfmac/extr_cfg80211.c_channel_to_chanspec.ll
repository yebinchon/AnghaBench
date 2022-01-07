; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_channel_to_chanspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_channel_to_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmu_d11inf = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type opaque
%struct.ieee80211_channel = type { i32 }
%struct.brcmu_chan.0 = type { i32, i32, i32 }

@BRCMU_CHAN_BW_20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_to_chanspec(%struct.brcmu_d11inf* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.brcmu_d11inf*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.brcmu_chan.0, align 4
  store %struct.brcmu_d11inf* %0, %struct.brcmu_d11inf** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ieee80211_frequency_to_channel(i32 %8)
  %10 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @BRCMU_CHAN_BW_20, align 4
  %12 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %3, align 8
  %14 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %13, i32 0, i32 0
  %15 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %14, align 8
  %16 = bitcast %struct.brcmu_chan.0* %5 to %struct.brcmu_chan*
  %17 = call i32 %15(%struct.brcmu_chan* %16)
  %18 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
