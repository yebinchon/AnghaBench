; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_hwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_hwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"config called\0A\00", align 1
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Do channel switch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ar5523_hwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_hwconfig(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar5523*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.ar5523*, %struct.ar5523** %7, align 8
  store %struct.ar5523* %8, %struct.ar5523** %5, align 8
  %9 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %10 = call i32 @ar5523_dbg(%struct.ar5523* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %12 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %20 = call i32 @ar5523_dbg(%struct.ar5523* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %22 = call i32 @ar5523_flush_tx(%struct.ar5523* %21)
  %23 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %24 = call i32 @ar5523_switch_chan(%struct.ar5523* %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %27 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret i32 0
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar5523_flush_tx(%struct.ar5523*) #1

declare dso_local i32 @ar5523_switch_chan(%struct.ar5523*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
