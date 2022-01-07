; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_chan_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_chan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"channel set, resetting (%u -> %u MHz)\0A\00", align 1
@AR5K_BWMODE_DEFAULT = common dso_local global i32 0, align 4
@AR5K_BWMODE_5MHZ = common dso_local global i32 0, align 4
@AR5K_BWMODE_10MHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_chan_set(%struct.ath5k_hw* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %7 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %6, i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %26
    i32 131, label %30
  ]

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @AR5K_BWMODE_DEFAULT, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @AR5K_BWMODE_5MHZ, align 4
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @AR5K_BWMODE_10MHZ, align 4
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %2
  %35 = call i32 @WARN_ON(i32 1)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %30, %26, %22
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @ath5k_reset(%struct.ath5k_hw* %39, %struct.TYPE_4__* %42, i32 1)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath5k_reset(%struct.ath5k_hw*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
