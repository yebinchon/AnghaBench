; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_setup_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_setup_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_cal_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_common = type { i32 }

@AR_PHY_TIMING4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_IQCAL_LOG_COUNT_MAX = common dso_local global i32 0, align 4
@AR_PHY_CALMODE = common dso_local global i32 0, align 4
@AR_PHY_CALMODE_IQ = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"starting IQ Mismatch Calibration\0A\00", align 1
@AR_PHY_TIMING4_DO_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid calibration type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_cal_list*)* @ar9003_hw_setup_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_setup_calibration(%struct.ath_hw* %0, %struct.ath9k_cal_list* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_cal_list*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_cal_list* %1, %struct.ath9k_cal_list** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %5, align 8
  %8 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %4, align 8
  %9 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = load i32, i32* @AR_PHY_TIMING4, align 4
  %16 = load i32, i32* @AR_PHY_TIMING4_IQCAL_LOG_COUNT_MAX, align 4
  %17 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %4, align 8
  %18 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %14, i32 %15, i32 %16, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @AR_PHY_CALMODE, align 4
  %25 = load i32, i32* @AR_PHY_CALMODE_IQ, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %28 = load i32, i32* @CALIBRATE, align 4
  %29 = call i32 @ath_dbg(%struct.ath_common* %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = load i32, i32* @AR_PHY_TIMING4, align 4
  %32 = load i32, i32* @AR_PHY_TIMING4_DO_CAL, align 4
  %33 = call i32 @REG_SET_BIT(%struct.ath_hw* %30, i32 %31, i32 %32)
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %36 = call i32 @ath_err(%struct.ath_common* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %13
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
