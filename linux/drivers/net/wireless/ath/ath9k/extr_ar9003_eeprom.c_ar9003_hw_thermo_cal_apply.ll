; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_thermo_cal_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_thermo_cal_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_BB_THERM_ADC_3 = common dso_local global i32 0, align 4
@AR_PHY_BB_THERM_ADC_3_THERM_ADC_OFFSET = common dso_local global i32 0, align 4
@AR_PHY_BB_THERM_ADC_3_THERM_ADC_SCALE_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_thermo_cal_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_thermo_cal_apply(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call i32 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i32 @ar9300_otp_read_word(%struct.ath_hw* %11, i32 1, i32* %3)
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20, %10
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* @AR_PHY_BB_THERM_ADC_3, align 4
  %26 = load i32, i32* @AR_PHY_BB_THERM_ADC_3_THERM_ADC_OFFSET, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_PHY_BB_THERM_ADC_3, align 4
  %31 = load i32, i32* @AR_PHY_BB_THERM_ADC_3_THERM_ADC_SCALE_GAIN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 256
  %34 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %29, i32 %30, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %9, %23, %20
  ret void
}

declare dso_local i32 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9300_otp_read_word(%struct.ath_hw*, i32, i32*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
