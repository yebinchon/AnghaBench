; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beaconq_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beaconq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32*, %struct.TYPE_2__, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_hw = type { i64, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unable to update beacon queue %u!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_tx_queue_info, align 8
  %5 = alloca %struct.ath9k_tx_queue_info, align 8
  %6 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 2
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = call i32 @memset(%struct.ath9k_tx_queue_info* %4, i32 0, i32 16)
  %11 = call i32 @memset(%struct.ath9k_tx_queue_info* %5, i32 0, i32 16)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %12, i32 %16, %struct.ath9k_tx_queue_info* %4)
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 2
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 2
  %28 = load %struct.ath_hw*, %struct.ath_hw** %27, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25, %1
  %34 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 2
  store i64 0, i64* %36, align 8
  br label %77

37:                                               ; preds = %25
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %38, i32 0, i32 2
  %40 = load %struct.ath_hw*, %struct.ath_hw** %39, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %37
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @IEEE80211_AC_BE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %52, i32 %53, %struct.ath9k_tx_queue_info* %5)
  %55 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 20
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 2, %64
  %66 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  br label %72

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 4, %69
  %71 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 2
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %37
  br label %77

77:                                               ; preds = %76, %33
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %80 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %78, i32 %82, %struct.ath9k_tx_queue_info* %4)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = call i32 @ath9k_hw_common(%struct.ath_hw* %86)
  %88 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %89 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ath_err(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %100

93:                                               ; preds = %77
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %96 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %94, i32 %98)
  br label %100

100:                                              ; preds = %93, %85
  ret void
}

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ath9k_hw_get_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
