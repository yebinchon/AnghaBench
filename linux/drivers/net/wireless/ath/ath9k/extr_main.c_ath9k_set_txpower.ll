; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.ath_hw* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ath_hw = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath_regulatory = type { i32 }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_tpc_vif_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_set_txpower(%struct.ath_softc* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_regulatory*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  store %struct.ath_hw* %10, %struct.ath_hw** %6, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %12 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %11)
  store %struct.ath_regulatory* %12, %struct.ath_regulatory** %7, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %21 = icmp ne %struct.ieee80211_vif* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %26, %22 ], [ -1, %27 ]
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %34 = load i32, i32* @ath9k_tpc_vif_iter, align 4
  %35 = call i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_8__* %32, i32 %33, i32 %34, i32* %5)
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %28
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %46, %45
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 2, %54
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %60, i32 %65, i32 0)
  %67 = load %struct.ath_regulatory*, %struct.ath_regulatory** %7, align 8
  %68 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %75 = call i32 @ath9k_ps_restore(%struct.ath_softc* %74)
  ret void
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
