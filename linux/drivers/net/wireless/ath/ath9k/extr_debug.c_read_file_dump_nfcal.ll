; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_dump_nfcal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_dump_nfcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_5__*, %struct.ath_hw* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ath9k_nfcal_hist* }
%struct.ath9k_nfcal_hist = type { i32, i32*, i32 }
%struct.ath_hw = type { i32, i32 }
%struct.ath_common = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Channel Noise Floor : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Chain | privNF | # Readings | NF Readings\0A\00", align 1
@NUM_NF_READINGS = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_CCA_FILTERWINDOW_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c" %d\09 %d\09 %d\09\09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @read_file_dump_nfcal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file_dump_nfcal(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_nfcal_hist*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ieee80211_hw* @dev_get_drvdata(i32 %17)
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.ath_softc*, %struct.ath_softc** %20, align 8
  store %struct.ath_softc* %21, %struct.ath_softc** %6, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 1
  %24 = load %struct.ath_hw*, %struct.ath_hw** %23, align 8
  store %struct.ath_hw* %24, %struct.ath_hw** %7, align 8
  %25 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %29, align 8
  store %struct.ath9k_nfcal_hist* %30, %struct.ath9k_nfcal_hist** %8, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %32 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %31)
  store %struct.ath_common* %32, %struct.ath_common** %9, align 8
  %33 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %34 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.ieee80211_conf* %36, %struct.ieee80211_conf** %10, align 8
  %37 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %38 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 3
  %41 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 @seq_puts(%struct.seq_file* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %113, %2
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @NUM_NF_READINGS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %68 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66, %56
  br label %113

71:                                               ; preds = %66, %62
  %72 = load i32, i32* @AR_PHY_CCA_FILTERWINDOW_LENGTH, align 4
  %73 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %73, i64 %75
  %77 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %72, %78
  store i32 %79, i32* %14, align 4
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %82, i64 %84
  %86 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %87, i32 %88)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %107, %71
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %96, i64 %98
  %100 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %90

110:                                              ; preds = %90
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = call i32 @seq_puts(%struct.seq_file* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %70
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %52

116:                                              ; preds = %52
  ret i32 0
}

declare dso_local %struct.ieee80211_hw* @dev_get_drvdata(i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
