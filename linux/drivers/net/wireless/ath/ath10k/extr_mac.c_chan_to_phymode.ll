; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_chan_to_phymode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_chan_to_phymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MODE_UNKNOWN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_OFDM = common dso_local global i32 0, align 4
@MODE_11B = common dso_local global i32 0, align 4
@MODE_11G = common dso_local global i32 0, align 4
@MODE_11NG_HT20 = common dso_local global i32 0, align 4
@MODE_11NG_HT40 = common dso_local global i32 0, align 4
@MODE_11A = common dso_local global i32 0, align 4
@MODE_11NA_HT20 = common dso_local global i32 0, align 4
@MODE_11NA_HT40 = common dso_local global i32 0, align 4
@MODE_11AC_VHT80 = common dso_local global i32 0, align 4
@MODE_11AC_VHT160 = common dso_local global i32 0, align 4
@MODE_11AC_VHT80_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_chan_def*)* @chan_to_phymode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_to_phymode(%struct.cfg80211_chan_def* %0) #0 {
  %2 = alloca %struct.cfg80211_chan_def*, align 8
  %3 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %2, align 8
  %4 = load i32, i32* @MODE_UNKNOWN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %54 [
    i32 137, label %10
    i32 136, label %35
  ]

10:                                               ; preds = %1
  %11 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %12 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %34 [
    i32 132, label %14
    i32 133, label %28
    i32 131, label %30
    i32 130, label %32
    i32 135, label %32
    i32 129, label %32
    i32 128, label %32
    i32 134, label %32
  ]

14:                                               ; preds = %10
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %16 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_CHAN_NO_OFDM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @MODE_11B, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @MODE_11G, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %34

28:                                               ; preds = %10
  %29 = load i32, i32* @MODE_11NG_HT20, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %10
  %31 = load i32, i32* @MODE_11NG_HT40, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %10, %10, %10, %10, %10
  %33 = load i32, i32* @MODE_UNKNOWN, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %10, %32, %30, %28, %27
  br label %55

35:                                               ; preds = %1
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %53 [
    i32 132, label %39
    i32 133, label %41
    i32 131, label %43
    i32 129, label %45
    i32 134, label %47
    i32 128, label %49
    i32 130, label %51
    i32 135, label %51
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @MODE_11A, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %35
  %42 = load i32, i32* @MODE_11NA_HT20, align 4
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %35
  %44 = load i32, i32* @MODE_11NA_HT40, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %35
  %46 = load i32, i32* @MODE_11AC_VHT80, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* @MODE_11AC_VHT160, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @MODE_11AC_VHT80_80, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %35, %35
  %52 = load i32, i32* @MODE_UNKNOWN, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %51, %49, %47, %45, %43, %41, %39
  br label %55

54:                                               ; preds = %1
  br label %55

55:                                               ; preds = %54, %53, %34
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MODE_UNKNOWN, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
