; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath_complete_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath_complete_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i64, i32, %struct.TYPE_2__*, %struct.ath_hw* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.ath_hw = type { i64 }
%struct.ath_common = type { i32 }

@ATH_OP_HW_RESET = common dso_local global i32 0, align 4
@ATH_OP_BEACONS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32)* @ath_complete_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_complete_reset(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 5
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %5, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @ath9k_calculate_summary_state(%struct.ath_softc* %14, %struct.TYPE_2__* %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = call i32 @ath_startrecv(%struct.ath_softc* %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %21, i32 %26, i32 %31, i32* %35)
  %37 = load i32, i32* @ATH_OP_HW_RESET, align 4
  %38 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %39 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %116, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %116

50:                                               ; preds = %47
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i64 @ath9k_hw_get_tsf_offset(i32* %61, i32* null)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %64 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @ath9k_hw_settsf64(%struct.ath_hw* %63, i64 %70)
  br label %72

72:                                               ; preds = %57, %50
  %73 = load i32, i32* @ATH_OP_BEACONS, align 4
  %74 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %75 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %74, i32 0, i32 0
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %111

79:                                               ; preds = %72
  %80 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %87 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %88 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %87, i32 0, i32 0
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 3
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load i32, i32* @PS_BEACON_SYNC, align 4
  %97 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 3
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %110

107:                                              ; preds = %85, %79
  %108 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %109 = call i32 @ath9k_set_beacon(%struct.ath_softc* %108)
  br label %110

110:                                              ; preds = %107, %91
  br label %111

111:                                              ; preds = %110, %78
  %112 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %113 = call i32 @ath_restart_work(%struct.ath_softc* %112)
  %114 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %115 = call i32 @ath_txq_schedule_all(%struct.ath_softc* %114)
  br label %116

116:                                              ; preds = %111, %47, %2
  %117 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %120 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %122 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %121)
  %123 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ieee80211_wake_queues(i32 %125)
  %127 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %128 = call i32 @ath9k_p2p_ps_timer(%struct.ath_softc* %127)
  ret i32 1
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ath_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @ath_startrecv(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @ath9k_hw_get_tsf_offset(i32*, i32*) #1

declare dso_local i32 @ath9k_hw_settsf64(%struct.ath_hw*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_set_beacon(%struct.ath_softc*) #1

declare dso_local i32 @ath_restart_work(%struct.ath_softc*) #1

declare dso_local i32 @ath_txq_schedule_all(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @ath9k_p2p_ps_timer(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
