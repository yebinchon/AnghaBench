; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tx_last_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tx_last_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_6__, i32, %struct.ath_hw* }
%struct.TYPE_6__ = type { i32, i32, %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_vif = type { %struct.ath_buf* }
%struct.ath_buf = type { i32, i32 }
%struct.ath_tx_status = type { i32 }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@ATH9K_TXERR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath9k_tx_last_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_tx_last_beacon(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath_vif*, align 8
  %8 = alloca %struct.ath_buf*, align 8
  %9 = alloca %struct.ath_tx_status, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath_softc*, %struct.ath_softc** %13, align 8
  store %struct.ath_softc* %14, %struct.ath_softc** %4, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %5, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %31, i64 0
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %32, align 8
  store %struct.ieee80211_vif* %33, %struct.ieee80211_vif** %6, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = icmp ne %struct.ieee80211_vif* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

37:                                               ; preds = %1
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %107

44:                                               ; preds = %37
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to %struct.ath_vif*
  store %struct.ath_vif* %49, %struct.ath_vif** %7, align 8
  %50 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %55
  %59 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %59, i32 0, i32 1
  %61 = call i32 @tasklet_disable(i32* %60)
  %62 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %63 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %62, i32 0, i32 0
  %64 = load %struct.ath_buf*, %struct.ath_buf** %63, align 8
  store %struct.ath_buf* %64, %struct.ath_buf** %8, align 8
  %65 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %66 = icmp ne %struct.ath_buf* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %69 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %58
  br label %98

73:                                               ; preds = %67
  %74 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %75 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %76 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ath9k_hw_txprocdesc(%struct.ath_hw* %74, i32 %77, %struct.ath_tx_status* %9)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @EINPROGRESS, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %98

84:                                               ; preds = %73
  %85 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ATH9K_TXERR_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %84, %83, %72
  %99 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 1
  %101 = call i32 @tasklet_enable(i32* %100)
  br label %102

102:                                              ; preds = %98, %55, %44
  %103 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %43, %36
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @ath9k_hw_txprocdesc(%struct.ath_hw*, i32, %struct.ath_tx_status*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
