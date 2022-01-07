; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_reg_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_reg_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.ath_hw* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.ath_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ath_regulatory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @ath9k_reg_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_reg_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_regulatory*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %10 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %9)
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %6, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  store %struct.ath_hw* %16, %struct.ath_hw** %7, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %18 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %17)
  store %struct.ath_regulatory* %18, %struct.ath_regulatory** %8, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %20 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %21 = load %struct.ath_regulatory*, %struct.ath_regulatory** %8, align 8
  %22 = call i32 @ath_reg_notifier_apply(%struct.wiphy* %19, %struct.regulatory_request* %20, %struct.ath_regulatory* %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %31, align 8
  %33 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %37 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %32(%struct.TYPE_8__* %35, i32 %38)
  br label %40

40:                                               ; preds = %27, %2
  %41 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %86

46:                                               ; preds = %40
  %47 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 2, %53
  %55 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %60 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %62 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %61, i32 %66, i32 0)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %69 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %80 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %68, i32 %73, i32 %78, i32* %82)
  %84 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %85 = call i32 @ath9k_ps_restore(%struct.ath_softc* %84)
  br label %86

86:                                               ; preds = %46, %45
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i32 @ath_reg_notifier_apply(%struct.wiphy*, %struct.regulatory_request*, %struct.ath_regulatory*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
