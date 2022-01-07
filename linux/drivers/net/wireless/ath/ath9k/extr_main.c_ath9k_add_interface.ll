; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.TYPE_2__*, %struct.ieee80211_vif*, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { %struct.TYPE_2__*, i32, %struct.ieee80211_vif*, %struct.ath_node }
%struct.ath_node = type { i32, %struct.ieee80211_vif*, i32*, %struct.ath_softc* }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Attach a VIF of type: %d\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_VIF_GET_NOA_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath_vif*, align 8
  %10 = alloca %struct.ath_node*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %6, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 3
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  store %struct.ath_hw* %16, %struct.ath_hw** %7, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %8, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.ath_vif*
  store %struct.ath_vif* %23, %struct.ath_vif** %9, align 8
  %24 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %25 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %24, i32 0, i32 3
  store %struct.ath_node* %25, %struct.ath_node** %10, align 8
  %26 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %133

45:                                               ; preds = %32
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %47 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 2
  store %struct.ieee80211_vif* %46, %struct.ieee80211_vif** %48, align 8
  br label %49

49:                                               ; preds = %45, %2
  %50 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %51 = load i32, i32* @CONFIG, align 4
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ath_dbg(%struct.ath_common* %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %49
  %68 = call i64 (...) @ath9k_is_chanctx_enabled()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @IEEE80211_VIF_GET_NOA_UPDATE, align 4
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %67, %49
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @ath9k_uses_beacons(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %85 = call i32 @ath9k_beacon_assign_slot(%struct.ath_softc* %83, %struct.ieee80211_vif* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %88 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %89 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %88, i32 0, i32 2
  store %struct.ieee80211_vif* %87, %struct.ieee80211_vif** %89, align 8
  %90 = call i64 (...) @ath9k_is_chanctx_enabled()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %94 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %97 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %96, i32 0, i32 0
  store %struct.TYPE_2__* %95, %struct.TYPE_2__** %97, align 8
  %98 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %99 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %98, i32 0, i32 1
  %100 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %101 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = call i32 @list_add_tail(i32* %99, i32* %103)
  br label %105

105:                                              ; preds = %92, %86
  %106 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %107 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %108 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = call i32 @ath9k_calculate_summary_state(%struct.ath_softc* %106, %struct.TYPE_2__* %109)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %112 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %113 = call i32 @ath9k_assign_hw_queues(%struct.ieee80211_hw* %111, %struct.ieee80211_vif* %112)
  %114 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %116 = call i32 @ath9k_set_txpower(%struct.ath_softc* %114, %struct.ieee80211_vif* %115)
  %117 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %118 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %119 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %118, i32 0, i32 3
  store %struct.ath_softc* %117, %struct.ath_softc** %119, align 8
  %120 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %121 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %123 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %124 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %123, i32 0, i32 1
  store %struct.ieee80211_vif* %122, %struct.ieee80211_vif** %124, align 8
  %125 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %126 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %128 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %129 = call i32 @ath_tx_node_init(%struct.ath_softc* %127, %struct.ath_node* %128)
  %130 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %131 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %105, %39
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i64 @ath9k_uses_beacons(i64) #1

declare dso_local i32 @ath9k_beacon_assign_slot(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ath_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @ath9k_assign_hw_queues(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_set_txpower(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath_tx_node_init(%struct.ath_softc*, %struct.ath_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
