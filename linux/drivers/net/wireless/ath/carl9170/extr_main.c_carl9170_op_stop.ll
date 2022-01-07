; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i32 }

@CARL9170_STARTED = common dso_local global i32 0, align 4
@CARL9170_IDLE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_DMA_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @carl9170_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ar9170*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  store %struct.ar9170* %6, %struct.ar9170** %3, align 8
  %7 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %8 = load i32, i32* @CARL9170_STARTED, align 4
  %9 = load i32, i32* @CARL9170_IDLE, align 4
  %10 = call i32 @carl9170_set_state_when(%struct.ar9170* %7, i32 %8, i32 %9)
  %11 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %12 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ieee80211_stop_queues(i32 %13)
  %15 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %19 = call i64 @IS_ACCEPTING_CMD(%struct.ar9170* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %23 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @RCU_INIT_POINTER(i32 %24, i32* null)
  %26 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %27 = call i32 @carl9170_led_set_state(%struct.ar9170* %26, i32 0)
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = load i32, i32* @AR9170_MAC_REG_DMA_TRIGGER, align 4
  %30 = call i32 @carl9170_write_reg(%struct.ar9170* %28, i32 %29, i32 0)
  %31 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %32 = call i32 @carl9170_usb_stop(%struct.ar9170* %31)
  br label %33

33:                                               ; preds = %21, %1
  %34 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %35 = call i32 @carl9170_zap_queues(%struct.ar9170* %34)
  %36 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %37 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %40 = call i32 @carl9170_cancel_worker(%struct.ar9170* %39)
  ret void
}

declare dso_local i32 @carl9170_set_state_when(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ACCEPTING_CMD(%struct.ar9170*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @carl9170_led_set_state(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_usb_stop(%struct.ar9170*) #1

declare dso_local i32 @carl9170_zap_queues(%struct.ar9170*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @carl9170_cancel_worker(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
