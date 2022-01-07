; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c___ath9k_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c___ath9k_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AH_UNPLUGGED = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Device has been unplugged!\0A\00", align 1
@ATH_OP_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Device not present\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@CHAN_CTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Flush timeout: %d\0A\00", align 1
@ATH_HW_CHECK_POLL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ath9k_flush(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath_softc*, align 8
  %12 = alloca %struct.ath_hw*, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.ath_softc*, %struct.ath_softc** %17, align 8
  store %struct.ath_softc* %18, %struct.ath_softc** %11, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 5
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %12, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %13, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AH_UNPLUGGED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %35 = load i32, i32* @ANY, align 4
  %36 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %34, i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %112

37:                                               ; preds = %5
  %38 = load i32, i32* @ATH_OP_INVALID, align 4
  %39 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %40 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %45 = load i32, i32* @ANY, align 4
  %46 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %44, i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %112

47:                                               ; preds = %37
  %48 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 3
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @HZ, align 4
  %55 = sdiv i32 %54, 5
  store i32 %55, i32* %14, align 4
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %64 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %67 = load i32, i32* @CHAN_CTX, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @jiffies_to_msecs(i32 %68)
  %70 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %66, i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ath9k_has_tx_pending(%struct.ath_softc* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @wait_event_timeout(i32 %73, i32 %79, i32 %80)
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %89 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %88)
  %90 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %91 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %90, i32 0, i32 1
  %92 = call i32 @spin_lock_bh(i32* %91)
  %93 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %94 = call i32 @ath_drain_all_txq(%struct.ath_softc* %93)
  store i32 %94, i32* %15, align 4
  %95 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock_bh(i32* %96)
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %102 = call i32 @ath_reset(%struct.ath_softc* %101, i32* null)
  br label %103

103:                                              ; preds = %100, %87
  %104 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %105 = call i32 @ath9k_ps_restore(%struct.ath_softc* %104)
  br label %106

106:                                              ; preds = %103, %84
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %108 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %109 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %108, i32 0, i32 0
  %110 = load i32, i32* @ATH_HW_CHECK_POLL_INT, align 4
  %111 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %107, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %43, %33
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @ath9k_has_tx_pending(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath_drain_all_txq(%struct.ath_softc*) #1

declare dso_local i32 @ath_reset(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
