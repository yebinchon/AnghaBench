; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_do_ar9003_agc_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_do_ar9003_agc_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"offset calibration failed to complete in %d ms,noisy environment?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @do_ar9003_agc_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ar9003_agc_cal(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %12 = call i32 @REG_READ(%struct.ath_hw* %10, i32 %11)
  %13 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @REG_WRITE(%struct.ath_hw* %8, i32 %9, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %18 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %19 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %20 = call i32 @ath9k_hw_wait(%struct.ath_hw* %16, i32 %17, i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %25 = load i32, i32* @CALIBRATE, align 4
  %26 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %27 = sdiv i32 %26, 1000
  %28 = call i32 @ath_dbg(%struct.ath_common* %24, i32 %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
