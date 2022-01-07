; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"stop called\0A\00", align 1
@AR5523_HW_UP = common dso_local global i32 0, align 4
@UATH_LED_LINK = common dso_local global i32 0, align 4
@UATH_LED_OFF = common dso_local global i32 0, align 4
@UATH_LED_ACTIVITY = common dso_local global i32 0, align 4
@WDCMSG_TARGET_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @ar5523_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ar5523*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  store %struct.ar5523* %6, %struct.ar5523** %3, align 8
  %7 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %8 = call i32 @ar5523_dbg(%struct.ar5523* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %10 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %9, i32 0, i32 5
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %13 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @AR5523_HW_UP, align 4
  %16 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %17 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %16, i32 0, i32 4
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %20 = load i32, i32* @UATH_LED_LINK, align 4
  %21 = load i32, i32* @UATH_LED_OFF, align 4
  %22 = call i32 @ar5523_set_ledsteady(%struct.ar5523* %19, i32 %20, i32 %21)
  %23 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %24 = load i32, i32* @UATH_LED_ACTIVITY, align 4
  %25 = load i32, i32* @UATH_LED_OFF, align 4
  %26 = call i32 @ar5523_set_ledsteady(%struct.ar5523* %23, i32 %24, i32 %25)
  %27 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %28 = load i32, i32* @WDCMSG_TARGET_STOP, align 4
  %29 = call i32 @ar5523_cmd_write(%struct.ar5523* %27, i32 %28, i32* null, i32 0, i32 0)
  %30 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %31 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %30, i32 0, i32 3
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %34 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %33, i32 0, i32 2
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %37 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %36, i32 0, i32 1
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %40 = call i32 @ar5523_cancel_rx_bufs(%struct.ar5523* %39)
  %41 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %42 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ar5523_set_ledsteady(%struct.ar5523*, i32, i32) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, i32*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ar5523_cancel_rx_bufs(%struct.ar5523*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
