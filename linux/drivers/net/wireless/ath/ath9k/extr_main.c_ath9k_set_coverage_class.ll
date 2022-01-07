; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_coverage_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_coverage_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64)* @ath9k_set_coverage_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_coverage_class(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %6, align 8
  %14 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %15 = call i64 @IS_ENABLED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %38 = call i32 @ath_calcrxfilter(%struct.ath_softc* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %44 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %43)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %46 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %45)
  %47 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %48 = call i32 @ath9k_ps_restore(%struct.ath_softc* %47)
  br label %59

49:                                               ; preds = %18
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %57 = call i32 @ath9k_enable_dynack(%struct.ath_softc* %56)
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %17
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_calcrxfilter(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_enable_dynack(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
