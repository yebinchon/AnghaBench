; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath5k_hw* }
%struct.ieee80211_conf = type { i32, i32, i32, i32 }
%struct.ath5k_hw = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath5k_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  store %struct.ath5k_hw* %11, %struct.ath5k_hw** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  store %struct.ieee80211_conf* %13, %struct.ieee80211_conf** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %23 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %23, i32 0, i32 3
  %25 = call i32 @ath5k_chan_set(%struct.ath5k_hw* %22, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %95

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %49 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %52 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i32 @ath5k_hw_set_txpower_limit(%struct.ath5k_hw* %51, i32 %55)
  br label %57

57:                                               ; preds = %44, %35, %30
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %72 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %85, %62
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw* %82, i32 %83)
  br label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %73

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %92 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %90, i32 %93)
  br label %95

95:                                               ; preds = %89, %28
  %96 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %97 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath5k_chan_set(%struct.ath5k_hw*, i32*) #1

declare dso_local i32 @ath5k_hw_set_txpower_limit(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
