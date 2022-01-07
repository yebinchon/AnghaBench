; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_update_ichannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_update_ichannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_channel = type { i32, %struct.ieee80211_channel*, i32 }
%struct.ieee80211_channel = type { i64, i32 }
%struct.cfg80211_chan_def = type { i32, %struct.ieee80211_channel*, i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CHANNEL_5GHZ = common dso_local global i32 0, align 4
@CHANNEL_QUARTER = common dso_local global i32 0, align 4
@CHANNEL_HALF = common dso_local global i32 0, align 4
@CHANNEL_HT = common dso_local global i32 0, align 4
@CHANNEL_HT40PLUS = common dso_local global i32 0, align 4
@CHANNEL_HT40MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_channel*, %struct.cfg80211_chan_def*)* @ath9k_cmn_update_ichannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_cmn_update_ichannel(%struct.ath9k_channel* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.ath9k_channel*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath9k_channel* %0, %struct.ath9k_channel** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %7 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  store %struct.ieee80211_channel* %9, %struct.ieee80211_channel** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %16, i32 0, i32 1
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %17, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @CHANNEL_5GHZ, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %67 [
    i32 128, label %31
    i32 132, label %35
    i32 130, label %39
    i32 131, label %40
    i32 129, label %44
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @CHANNEL_QUARTER, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %69

35:                                               ; preds = %27
  %36 = load i32, i32* @CHANNEL_HALF, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %69

39:                                               ; preds = %27
  br label %69

40:                                               ; preds = %27
  %41 = load i32, i32* @CHANNEL_HT, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %69

44:                                               ; preds = %27
  %45 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %46 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %48, i32 0, i32 1
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %49, align 8
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* @CHANNEL_HT40PLUS, align 4
  %56 = load i32, i32* @CHANNEL_HT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %44
  %61 = load i32, i32* @CHANNEL_HT40MINUS, align 4
  %62 = load i32, i32* @CHANNEL_HT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %54
  br label %69

67:                                               ; preds = %27
  %68 = call i32 @WARN_ON(i32 1)
  br label %69

69:                                               ; preds = %67, %66, %40, %39, %35, %31
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.ath9k_channel*, %struct.ath9k_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
