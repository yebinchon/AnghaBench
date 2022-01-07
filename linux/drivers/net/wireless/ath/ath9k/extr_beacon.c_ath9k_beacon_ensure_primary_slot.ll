; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_ensure_primary_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_ensure_primary_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i32, %struct.TYPE_4__*, i32 }

@ATH_BCBUF = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Adjusting global TSF after beacon slot reassignment: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_beacon_ensure_primary_slot(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ath_common* @ath9k_hw_common(i32 %12)
  store %struct.ath_common* %13, %struct.ath_common** %3, align 8
  %14 = load i32, i32* @ATH_BCBUF, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  %17 = call i32 @tasklet_disable(i32* %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ATH_BCBUF, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %26, i64 %28
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %29, align 8
  %31 = icmp ne %struct.ieee80211_vif* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %18

38:                                               ; preds = %32, %18
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %156

42:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %93, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ATH_BCBUF, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @ATH_BCBUF, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %57, i64 %61
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %62, align 8
  store %struct.ieee80211_vif* %63, %struct.ieee80211_vif** %4, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %65 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %68, i64 %70
  store %struct.ieee80211_vif* %64, %struct.ieee80211_vif** %71, align 8
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %73 = icmp ne %struct.ieee80211_vif* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %53
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = bitcast i8* %78 to %struct.ath_vif*
  store %struct.ath_vif* %79, %struct.ath_vif** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.ath_vif*, %struct.ath_vif** %5, align 8
  %82 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %74, %53
  br label %92

84:                                               ; preds = %47
  %85 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %88, i64 %90
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %91, align 8
  br label %92

92:                                               ; preds = %84, %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %43

96:                                               ; preds = %43
  %97 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %99, align 8
  %101 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %100, i64 0
  %102 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %101, align 8
  store %struct.ieee80211_vif* %102, %struct.ieee80211_vif** %4, align 8
  %103 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %104 = icmp ne %struct.ieee80211_vif* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @WARN_ON(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %156

110:                                              ; preds = %96
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = bitcast i8* %114 to %struct.ath_vif*
  store %struct.ath_vif* %115, %struct.ath_vif** %5, align 8
  %116 = load %struct.ath_vif*, %struct.ath_vif** %5, align 8
  %117 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @le64_to_cpu(i32 %118)
  store i64 %119, i64* %6, align 8
  %120 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %121 = load i32, i32* @CONFIG, align 4
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @ath_dbg(%struct.ath_common* %120, i32 %121, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %122)
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.ath_vif*, %struct.ath_vif** %5, align 8
  %126 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %124
  store i64 %130, i64* %128, align 8
  %131 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %132 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load %struct.ath_vif*, %struct.ath_vif** %5, align 8
  %135 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = icmp eq %struct.TYPE_4__* %133, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %110
  %139 = load %struct.ath_vif*, %struct.ath_vif** %5, align 8
  %140 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = call i64 @ath9k_hw_get_tsf_offset(i32* %142, i32* null)
  store i64 %143, i64* %7, align 8
  %144 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %145 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ath_vif*, %struct.ath_vif** %5, align 8
  %148 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @ath9k_hw_settsf64(i32 %146, i64 %153)
  br label %155

155:                                              ; preds = %138, %110
  br label %156

156:                                              ; preds = %155, %109, %41
  %157 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %158 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %157, i32 0, i32 0
  %159 = call i32 @tasklet_enable(i32* %158)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i64 @ath9k_hw_get_tsf_offset(i32*, i32*) #1

declare dso_local i32 @ath9k_hw_settsf64(i32, i64) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
