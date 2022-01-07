; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_tx99.c_ath9k_tx99_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_tx99.c_ath9k_tx99_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, %struct.TYPE_2__, %struct.ath_hw*, %struct.ieee80211_hw* }
%struct.TYPE_2__ = type { i32* }
%struct.ath_hw = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_tx_control = type { i32 }

@ATH_OP_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"driver is in invalid state unable to use TX99\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i64 0, align 8
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@XMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to xmit TX99 skb\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"TX99 xmit started using %d ( %ddBm)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_tx99_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_tx99_init(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath_tx_control, align 4
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 5
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hw* %11, %struct.ieee80211_hw** %4, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %5, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %6, align 8
  %17 = load i32, i32* @ATH_OP_INVALID, align 4
  %18 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %19 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %24 = call i32 @ath_err(%struct.ath_common* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %102

27:                                               ; preds = %1
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = call i32 @ath9k_build_tx99_skb(%struct.ath_softc* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %102

39:                                               ; preds = %27
  %40 = call i32 @memset(%struct.ath_tx_control* %7, i32 0, i32 4)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @IEEE80211_AC_VO, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %50 = call i32 @ath_reset(%struct.ath_softc* %49, i32* null)
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %51)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %54 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %53)
  %55 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %56 = call i32 @ath_drain_all_txq(%struct.ath_softc* %55)
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = call i32 @ath_stoprecv(%struct.ath_softc* %57)
  %59 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %61)
  %63 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX_RATE_POWER, align 4
  %67 = add nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %39
  %70 = load i32, i32* @MAX_RATE_POWER, align 4
  %71 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %39
  %74 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %75 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ath9k_hw_tx99_set_txpower(%struct.ath_hw* %74, i32 %77)
  %79 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %80 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ath9k_tx99_send(%struct.ath_softc* %79, i32 %82, %struct.ath_tx_control* %7)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %88 = load i32, i32* @XMIT, align 4
  %89 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %87, i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %102

91:                                               ; preds = %73
  %92 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %93 = load i32, i32* @XMIT, align 4
  %94 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 2
  %101 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %92, i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %91, %86, %36, %22
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_build_tx99_skb(%struct.ath_softc*) #1

declare dso_local i32 @memset(%struct.ath_tx_control*, i32, i32) #1

declare dso_local i32 @ath_reset(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath_drain_all_txq(%struct.ath_softc*) #1

declare dso_local i32 @ath_stoprecv(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath9k_hw_tx99_set_txpower(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_tx99_send(%struct.ath_softc*, i32, %struct.ath_tx_control*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
