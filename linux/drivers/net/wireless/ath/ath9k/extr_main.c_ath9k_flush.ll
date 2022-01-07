; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }

@ATH_OP_MULTI_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32)* @ath9k_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_flush(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %9, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ath_common* @ath9k_hw_common(i32 %16)
  store %struct.ath_common* %17, %struct.ath_common** %10, align 8
  %18 = call i64 (...) @ath9k_is_chanctx_enabled()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load i32, i32* @ATH_OP_MULTI_CHANNEL, align 4
  %22 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %23 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @__ath9k_flush(%struct.ieee80211_hw* %28, i32 %29, i32 %30, i32 1, i32 1)
  br label %44

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @__ath9k_flush(%struct.ieee80211_hw* %37, i32 %38, i32 %39, i32 1, i32 0)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %33, %27
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__ath9k_flush(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
