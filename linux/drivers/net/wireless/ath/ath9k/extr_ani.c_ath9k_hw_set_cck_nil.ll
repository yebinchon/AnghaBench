; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_cck_nil.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_cck_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ani_ofdm_level_entry = type { i64 }
%struct.ani_cck_level_entry = type { i64, i64 }
%struct.ath_hw = type { i64, %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64, i64 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"**** ccklevel %d=>%d, rssi=%d[lo=%d hi=%d]\0A\00", align 1
@ATH9K_ANI_RSSI_THR_LOW = common dso_local global i64 0, align 8
@ATH9K_ANI_RSSI_THR_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_DEF_LEVEL = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI = common dso_local global i64 0, align 8
@ofdm_level_table = common dso_local global %struct.ani_ofdm_level_entry* null, align 8
@cck_level_table = common dso_local global %struct.ani_cck_level_entry* null, align 8
@ATH9K_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_MRC_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32)* @ath9k_hw_set_cck_nil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_cck_nil(%struct.ath_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar5416AniState*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ani_ofdm_level_entry*, align 8
  %10 = alloca %struct.ani_cck_level_entry*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  store %struct.ar5416AniState* %12, %struct.ar5416AniState** %7, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %8, align 8
  %15 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %16 = load i32, i32* @ANI, align 4
  %17 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %18 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = call i64 @BEACON_RSSI(%struct.ath_hw* %21)
  %23 = load i64, i64* @ATH9K_ANI_RSSI_THR_LOW, align 8
  %24 = load i32, i32* @ATH9K_ANI_RSSI_THR_HIGH, align 4
  %25 = call i32 @ath_dbg(%struct.ath_common* %15, i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20, i64 %22, i64 %23, i32 %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = call i64 @AR_SREV_9100(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ATH9K_ANI_CCK_DEF_LEVEL, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @ATH9K_ANI_CCK_DEF_LEVEL, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %29, %3
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = call i64 @BEACON_RSSI(%struct.ath_hw* %42)
  %44 = load i64, i64* @ATH9K_ANI_RSSI_THR_LOW, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %46, %41, %35
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %58 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** @ofdm_level_table, align 8
  %61 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %62 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %60, i64 %63
  store %struct.ani_ofdm_level_entry* %64, %struct.ani_ofdm_level_entry** %9, align 8
  %65 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** @cck_level_table, align 8
  %66 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %67 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %65, i64 %68
  store %struct.ani_cck_level_entry* %69, %struct.ani_cck_level_entry** %10, align 8
  %70 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %71 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %74 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %59
  %78 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %79 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %82 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %87 = load i32, i32* @ATH9K_ANI_FIRSTEP_LEVEL, align 4
  %88 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %89 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %86, i32 %87, i64 %90)
  br label %92

92:                                               ; preds = %85, %77, %59
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %98 = call i64 @AR_SREV_9485(%struct.ath_hw* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = call i64 @AR_SREV_9565(%struct.ath_hw* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = call i64 @AR_SREV_9561(%struct.ath_hw* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %100, %96, %92
  br label %124

109:                                              ; preds = %104
  %110 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %111 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %114 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %119 = load i32, i32* @ATH9K_ANI_MRC_CCK, align 4
  %120 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %121 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %118, i32 %119, i64 %122)
  br label %124

124:                                              ; preds = %108, %117, %109
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i64, i32) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_control(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
