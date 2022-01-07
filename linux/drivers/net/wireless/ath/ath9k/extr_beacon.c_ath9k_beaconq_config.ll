; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beaconq_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beaconq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ath_hw* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ath_txq** }
%struct.ath_txq = type { i32 }
%struct.ath_hw = type { i64, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Unable to update h/w beacon queue parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_beaconq_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beaconq_config(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_tx_queue_info, align 8
  %6 = alloca %struct.ath9k_tx_queue_info, align 8
  %7 = alloca %struct.ath_txq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  store %struct.ath_hw* %10, %struct.ath_hw** %3, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %13, i32 %17, %struct.ath9k_tx_queue_info* %5)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %1
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 2
  %29 = load %struct.ath_hw*, %struct.ath_hw** %28, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26, %1
  %35 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 2
  store i64 0, i64* %37, align 8
  br label %72

38:                                               ; preds = %26
  %39 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.ath_txq**, %struct.ath_txq*** %41, align 8
  %43 = load i64, i64* @IEEE80211_AC_BE, align 8
  %44 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %42, i64 %43
  %45 = load %struct.ath_txq*, %struct.ath_txq** %44, align 8
  store %struct.ath_txq* %45, %struct.ath_txq** %7, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = load %struct.ath_txq*, %struct.ath_txq** %7, align 8
  %48 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %46, i32 %49, %struct.ath9k_tx_queue_info* %6)
  %51 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 20
  br i1 %57, label %58, label %63

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 2, %60
  %62 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %68

63:                                               ; preds = %38
  %64 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 4, %65
  %67 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 2
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %34
  %73 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %74 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %73, i32 %77, %struct.ath9k_tx_queue_info* %5)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %82 = call i32 @ath_err(%struct.ath_common* %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %90

83:                                               ; preds = %72
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %84, i32 %88)
  br label %90

90:                                               ; preds = %83, %80
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_get_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
