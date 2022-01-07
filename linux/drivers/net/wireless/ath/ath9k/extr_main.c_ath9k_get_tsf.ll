; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ieee80211_vif = type { i64 }
%struct.ath_vif = type { i32, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_get_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath9k_get_tsf(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_vif*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.ath_vif*
  store %struct.ath_vif* %15, %struct.ath_vif** %6, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %19)
  %21 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp eq %struct.TYPE_2__* %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @ath9k_hw_gettsf64(i32 %31)
  store i64 %32, i64* %7, align 8
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i64 @ath9k_hw_get_tsf_offset(i32* %42, i32* null)
  %44 = add nsw i64 %38, %43
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %33, %28
  %46 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le64_to_cpu(i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %53 = call i32 @ath9k_ps_restore(%struct.ath_softc* %52)
  %54 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %7, align 8
  ret i64 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_hw_gettsf64(i32) #1

declare dso_local i64 @ath9k_hw_get_tsf_offset(i32*, i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
