; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32*, i32*, i32, i32*, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_init_cal_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_init_cal_common(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_cal_data*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 4
  %6 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  store %struct.ath9k_hw_cal_data* %6, %struct.ath9k_hw_cal_data** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 2
  %15 = call i32 @INIT_CAL(i32* %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 2
  %19 = call i32 @INSERT_CAL(%struct.ath_hw* %16, i32* %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %30, i32* %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %37 = icmp ne %struct.ath9k_hw_cal_data* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %40 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @INIT_CAL(i32*) #1

declare dso_local i32 @INSERT_CAL(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
