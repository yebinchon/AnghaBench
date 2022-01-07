; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_cache_beacon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_cache_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_chanctx = type { %struct.ath_beacon_config }
%struct.ath_beacon_config = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Caching beacon data for BSS: %pM\0A\00", align 1
@ATH_DEFAULT_BMISS_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_chanctx*, %struct.ieee80211_bss_conf*)* @ath9k_cache_beacon_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_cache_beacon_config(%struct.ath_softc* %0, %struct.ath_chanctx* %1, %struct.ieee80211_bss_conf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_chanctx*, align 8
  %6 = alloca %struct.ieee80211_bss_conf*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath_beacon_config*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_chanctx* %1, %struct.ath_chanctx** %5, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %6, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %7, align 8
  %13 = load %struct.ath_chanctx*, %struct.ath_chanctx** %5, align 8
  %14 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %13, i32 0, i32 0
  store %struct.ath_beacon_config* %14, %struct.ath_beacon_config** %8, align 8
  %15 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %16 = load i32, i32* @BEACON, align 4
  %17 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ath_dbg(%struct.ath_common* %15, i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %25 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %30 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %32 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %37 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %39 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %44 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %43, i32 0, i32 0
  store i32 100, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %3
  %46 = load i32, i32* @ATH_DEFAULT_BMISS_LIMIT, align 4
  %47 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %48 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %52 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %54 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %59 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %45
  %61 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %62 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %63 = call i32 @ath9k_set_tsfadjust(%struct.ath_softc* %61, %struct.ath_beacon_config* %62)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_set_tsfadjust(%struct.ath_softc*, %struct.ath_beacon_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
