; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_13__, %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32** }
%struct.ath_common = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ath_ani_calibrate = common dso_local global i32 0, align 4
@ATH_RSSI_DUMMY_MARKER = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_INIT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_misc(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_14__* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* @ath_ani_calibrate, align 4
  %13 = call i32 @timer_setup(i32* %11, i32 %12, i32 0)
  %14 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  %15 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %16 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %18 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @eth_broadcast_addr(i32 %19)
  %21 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 9, i32* %23, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %40, %1
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32** %29)
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @ATH_ANT_DIV_COMB_INIT_COUNT, align 4
  %55 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %43
  %59 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %64, align 8
  %65 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 8, i32* %76, align 4
  %77 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i32 255, i32* %84, align 4
  %85 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 4
  store i32 15, i32* %88, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_14__*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
