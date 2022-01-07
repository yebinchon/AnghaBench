; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { %struct.ath_chanctx* }
%struct.ath_chanctx = type { %struct.ath_beacon_config }
%struct.ath_beacon_config = type { i32, i64 }

@ATH_OP_BEACONS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_beacon_config(%struct.ath_softc* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath_vif*, align 8
  %10 = alloca %struct.ath_chanctx*, align 8
  %11 = alloca %struct.ath_beacon_config*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %7, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %8, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ATH_OP_BEACONS, align 4
  %24 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %28 = call i32 @ath9k_beacon_stop(%struct.ath_softc* %27)
  br label %147

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = icmp ne %struct.ieee80211_vif* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %147

37:                                               ; preds = %29
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.ath_vif*
  store %struct.ath_vif* %42, %struct.ath_vif** %9, align 8
  %43 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %44 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %43, i32 0, i32 0
  %45 = load %struct.ath_chanctx*, %struct.ath_chanctx** %44, align 8
  store %struct.ath_chanctx* %45, %struct.ath_chanctx** %10, align 8
  %46 = load %struct.ath_chanctx*, %struct.ath_chanctx** %10, align 8
  %47 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %46, i32 0, i32 0
  store %struct.ath_beacon_config* %47, %struct.ath_beacon_config** %11, align 8
  %48 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %11, align 8
  %49 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %11, align 8
  %53 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 2
  %56 = load %struct.ath_hw*, %struct.ath_hw** %55, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %37
  %62 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %63 = load %struct.ath_chanctx*, %struct.ath_chanctx** %10, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %64, i32 0, i32 0
  %66 = call i32 @ath9k_cache_beacon_config(%struct.ath_softc* %62, %struct.ath_chanctx* %63, %struct.TYPE_2__* %65)
  %67 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %68 = call i32 @ath9k_set_beacon(%struct.ath_softc* %67)
  %69 = load i32, i32* @ATH_OP_BEACONS, align 4
  %70 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %71 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  br label %147

73:                                               ; preds = %37
  %74 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %75 = load %struct.ath_chanctx*, %struct.ath_chanctx** %10, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %76, i32 0, i32 0
  %78 = call i32 @ath9k_cache_beacon_config(%struct.ath_softc* %74, %struct.ath_chanctx* %75, %struct.TYPE_2__* %77)
  %79 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %11, align 8
  %80 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %140

83:                                               ; preds = %73
  %84 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %84, i32 0, i32 2
  %86 = load %struct.ath_hw*, %struct.ath_hw** %85, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %97
  %104 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %104, i32 0, i32 1
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load i32, i32* @PS_BEACON_SYNC, align 4
  %109 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %116 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %115, i32 0, i32 1
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  store i32 1, i32* %14, align 4
  br label %119

119:                                              ; preds = %103, %97, %94, %91, %83
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @ATH_OP_BEACONS, align 4
  %127 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %128 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %127, i32 0, i32 0
  %129 = call i32 @set_bit(i32 %126, i32* %128)
  %130 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %131 = call i32 @ath9k_set_beacon(%struct.ath_softc* %130)
  br label %139

132:                                              ; preds = %122, %119
  %133 = load i32, i32* @ATH_OP_BEACONS, align 4
  %134 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %135 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %134, i32 0, i32 0
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  %137 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %138 = call i32 @ath9k_beacon_stop(%struct.ath_softc* %137)
  br label %139

139:                                              ; preds = %132, %125
  br label %147

140:                                              ; preds = %73
  %141 = load i32, i32* @ATH_OP_BEACONS, align 4
  %142 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %143 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %142, i32 0, i32 0
  %144 = call i32 @clear_bit(i32 %141, i32* %143)
  %145 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %146 = call i32 @ath9k_beacon_stop(%struct.ath_softc* %145)
  br label %147

147:                                              ; preds = %22, %36, %61, %140, %139
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_beacon_stop(%struct.ath_softc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath9k_cache_beacon_config(%struct.ath_softc*, %struct.ath_chanctx*, %struct.TYPE_2__*) #1

declare dso_local i32 @ath9k_set_beacon(%struct.ath_softc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
