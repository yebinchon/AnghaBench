; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, %struct.ath_hw* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.ath_hw = type { i64, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ath_common = type { i32 }

@ATH_OP_INVALID = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Device not present\0A\00", align 1
@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Driver halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @ath9k_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %5, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = call i32 @ath9k_deinit_channel_context(%struct.ath_softc* %15)
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = call i32 @ath9k_rng_stop(%struct.ath_softc* %20)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = call i32 @ath_cancel_work(%struct.ath_softc* %22)
  %24 = load i32, i32* @ATH_OP_INVALID, align 4
  %25 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %26 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %31 = load i32, i32* @ANY, align 4
  %32 = call i32 @ath_dbg(%struct.ath_common* %30, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %156

36:                                               ; preds = %1
  %37 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %38 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %37)
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %48)
  %50 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @synchronize_irq(i32 %55)
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 6
  %59 = call i32 @tasklet_kill(i32* %58)
  %60 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 5
  %62 = call i32 @tasklet_kill(i32* %61)
  %63 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 2
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %36
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %78 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %76, i64 %79, i32 %86)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %90 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ath9k_hw_gpio_request_in(%struct.ath_hw* %88, i64 %91, i32* null)
  br label %93

93:                                               ; preds = %75, %36
  %94 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %95 = call i32 @ath_prepare_reset(%struct.ath_softc* %94)
  %96 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @dev_kfree_skb_any(i32* %105)
  %107 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %108 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %93
  %111 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %112 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %118 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i64 @ath9k_cmn_get_channel(%struct.ieee80211_hw* %116, %struct.ath_hw* %117, i32* %121)
  %123 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %124 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %115, %110
  %126 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %127 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %128 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ath9k_hw_reset(%struct.ath_hw* %126, i64 %129, i32 %132, i32 0)
  %134 = load i32, i32* @ATH_OP_INVALID, align 4
  %135 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %136 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %135, i32 0, i32 0
  %137 = call i32 @set_bit(i32 %134, i32* %136)
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = call i32 @ath9k_hw_phy_disable(%struct.ath_hw* %138)
  %140 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %141 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %140, i32 1)
  %142 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %143 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %142, i32 0, i32 2
  %144 = call i32 @spin_unlock_bh(i32* %143)
  %145 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %146 = call i32 @ath9k_ps_restore(%struct.ath_softc* %145)
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %150, i32 0, i32 1
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %154 = load i32, i32* @CONFIG, align 4
  %155 = call i32 @ath_dbg(%struct.ath_common* %153, i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %125, %29
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_deinit_channel_context(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_rng_stop(%struct.ath_softc*) #1

declare dso_local i32 @ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_gpio_request_in(%struct.ath_hw*, i64, i32*) #1

declare dso_local i32 @ath_prepare_reset(%struct.ath_softc*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @ath9k_cmn_get_channel(%struct.ieee80211_hw*, %struct.ath_hw*, i32*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_phy_disable(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
