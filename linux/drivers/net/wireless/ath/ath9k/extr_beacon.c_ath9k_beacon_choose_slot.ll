; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_choose_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_choose_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ath_beacon_config }
%struct.ath_beacon_config = type { i64 }
%struct.ath_common = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"slot 0, tsf: %llu\0A\00", align 1
@ATH_DEFAULT_BINTVAL = common dso_local global i32 0, align 4
@ATH_BCBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"slot: %d tsf: %llu tsftu: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_beacon_choose_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_beacon_choose_slot(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath_beacon_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_7__* %12)
  store %struct.ath_common* %13, %struct.ath_common** %4, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.ath_beacon_config* %17, %struct.ath_beacon_config** %5, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %1
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %35 = load i32, i32* @BEACON, align 4
  %36 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call i32 @ath9k_hw_gettsf64(%struct.TYPE_7__* %38)
  %40 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %34, i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 0, i32* %2, align 4
  br label %92

41:                                               ; preds = %25, %1
  %42 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %43 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ATH_DEFAULT_BINTVAL, align 4
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i64 [ %44, %46 ], [ %49, %47 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @ath9k_hw_gettsf64(%struct.TYPE_7__* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @TU_TO_USEC(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ATH_BCBUF, align 4
  %70 = mul nsw i32 %68, %69
  %71 = ashr i32 %70, 32
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ATH_BCBUF, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @TSF_TO_TU(i32 %71, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ATH_BCBUF, align 4
  %79 = mul nsw i32 %77, %78
  %80 = srem i32 %76, %79
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %84 = load i32, i32* @BEACON, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ATH_BCBUF, align 4
  %89 = sdiv i32 %87, %88
  %90 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %83, i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %50, %33
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_7__*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.TYPE_7__*) #1

declare dso_local i64 @TU_TO_USEC(i32) #1

declare dso_local i32 @TSF_TO_TU(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
