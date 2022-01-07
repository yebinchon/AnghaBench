; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_per_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_per_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath9k_cal_list = type { i64, %struct.ath9k_percal_data* }
%struct.ath9k_percal_data = type { i64, i32, i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*)* }

@CAL_RUNNING = common dso_local global i64 0, align 8
@AR_PHY_TIMING4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_DO_CAL = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@CAL_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32, %struct.ath9k_cal_list*)* @ar9003_hw_per_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_per_calibration(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, %struct.ath9k_cal_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_cal_list*, align 8
  %10 = alloca %struct.ath9k_hw_cal_data*, align 8
  %11 = alloca %struct.ath9k_percal_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath9k_cal_list* %3, %struct.ath9k_cal_list** %9, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 1
  %16 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  store %struct.ath9k_hw_cal_data* %16, %struct.ath9k_hw_cal_data** %10, align 8
  %17 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %9, align 8
  %18 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %17, i32 0, i32 1
  %19 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %18, align 8
  store %struct.ath9k_percal_data* %19, %struct.ath9k_percal_data** %11, align 8
  %20 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %9, align 8
  %21 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CAL_RUNNING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %27 = load i32, i32* @AR_PHY_TIMING4, align 4
  %28 = call i32 @REG_READ(%struct.ath_hw* %26, i32 %27)
  %29 = load i32, i32* @AR_PHY_TIMING4_DO_CAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %105

33:                                               ; preds = %25
  %34 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %11, align 8
  %35 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %34, i32 0, i32 3
  %36 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %35, align 8
  %37 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %38 = call i32 %36(%struct.ath_hw* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %11, align 8
  %47 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %11, align 8
  %70 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %69, i32 0, i32 2
  %71 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %70, align 8
  %72 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 %71(%struct.ath_hw* %72, i32 %73)
  %75 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %11, align 8
  %76 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %79 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* @CAL_DONE, align 8
  %83 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %9, align 8
  %84 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  store i32 1, i32* %5, align 4
  br label %105

85:                                               ; preds = %33
  %86 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %87 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %9, align 8
  %88 = call i32 @ar9003_hw_setup_calibration(%struct.ath_hw* %86, %struct.ath9k_cal_list* %87)
  br label %89

89:                                               ; preds = %85
  br label %104

90:                                               ; preds = %4
  %91 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %92 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %11, align 8
  %95 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %90
  %100 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %101 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %9, align 8
  %102 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %100, %struct.ath9k_cal_list* %101)
  br label %103

103:                                              ; preds = %99, %90
  br label %104

104:                                              ; preds = %103, %89
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %68, %32
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_setup_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
