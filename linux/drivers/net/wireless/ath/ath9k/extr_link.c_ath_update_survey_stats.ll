; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_update_survey_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_update_survey_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.survey_info*, %struct.ath_hw* }
%struct.survey_info = type { i32, i32, i32, i32, i32 }
%struct.ath_hw = type { i64, i32*, i32* }
%struct.ath_common = type { i32, %struct.ath_cycle_counters }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }

@ATH9K_PM_AWAKE = common dso_local global i64 0, align 8
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_RX = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_update_survey_stats(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.ath_cycle_counters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %4, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = ptrtoint i32* %18 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load %struct.survey_info*, %struct.survey_info** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %30, i64 %32
  store %struct.survey_info* %33, %struct.survey_info** %7, align 8
  %34 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %35 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %34, i32 0, i32 1
  store %struct.ath_cycle_counters* %35, %struct.ath_cycle_counters** %8, align 8
  %36 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %37 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1000
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %135

45:                                               ; preds = %1
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATH9K_PM_AWAKE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %53 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %52)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %56 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %107

59:                                               ; preds = %54
  %60 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %61 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SURVEY_INFO_TIME_RX, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SURVEY_INFO_TIME_TX, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %68 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %72 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = udiv i32 %73, %74
  %76 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %77 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %81 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = udiv i32 %82, %83
  %85 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %86 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %90 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = udiv i32 %91, %92
  %94 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %95 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %99 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = udiv i32 %100, %101
  %103 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %104 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %59, %54
  %108 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %109 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 -1, i32* %2, align 4
  br label %135

114:                                              ; preds = %107
  %115 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %116 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ugt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %121 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul i32 %122, 100
  %124 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %125 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = udiv i32 %123, %126
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %119, %114
  %129 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %8, align 8
  %130 = call i32 @memset(%struct.ath_cycle_counters* %129, i32 0, i32 16)
  %131 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ath_update_survey_nf(%struct.ath_softc* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %128, %113, %44
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @memset(%struct.ath_cycle_counters*, i32, i32) #1

declare dso_local i32 @ath_update_survey_nf(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
