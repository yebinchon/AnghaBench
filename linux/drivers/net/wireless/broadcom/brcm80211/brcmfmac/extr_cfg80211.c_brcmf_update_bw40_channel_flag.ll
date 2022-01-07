; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_bw40_channel_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_bw40_channel_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.brcmu_chan = type { i64 }

@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_U = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*, %struct.brcmu_chan*)* @brcmf_update_bw40_channel_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_update_bw40_channel_flag(%struct.ieee80211_channel* %0, %struct.brcmu_chan* %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.brcmu_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  store %struct.brcmu_chan* %1, %struct.brcmu_chan** %4, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.brcmu_chan*, %struct.brcmu_chan** %4, align 8
  %12 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BRCMU_CHAN_SB_U, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %50

33:                                               ; preds = %2
  %34 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %33
  br label %50

50:                                               ; preds = %49, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
