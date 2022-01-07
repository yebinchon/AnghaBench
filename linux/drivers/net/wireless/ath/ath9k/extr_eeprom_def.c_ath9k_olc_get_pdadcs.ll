; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_olc_get_pdadcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_olc_get_pdadcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_TX_PWRCTRL6_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL_ERR_EST_MODE = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL6_1 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL7 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL_INIT_TX_GAIN = common dso_local global i32 0, align 4
@AR5416_NUM_PDADC_VALUES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32, i32*)* @ath9k_olc_get_pdadcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_olc_get_pdadcs(%struct.ath_hw* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = load i32, i32* @AR_PHY_TX_PWRCTRL6_0, align 4
  %13 = load i32, i32* @AR_PHY_TX_PWRCTRL_ERR_EST_MODE, align 4
  %14 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %11, i32 %12, i32 %13, i64 3)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = load i32, i32* @AR_PHY_TX_PWRCTRL6_1, align 4
  %17 = load i32, i32* @AR_PHY_TX_PWRCTRL_ERR_EST_MODE, align 4
  %18 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %15, i32 %16, i32 %17, i64 3)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = load i32, i32* @AR_PHY_TX_PWRCTRL7, align 4
  %21 = load i32, i32* @AR_PHY_TX_PWRCTRL_INIT_TX_GAIN, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %19, i32 %20, i32 %21, i64 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %43, %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @AR5416_NUM_PDADC_VALUES, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 0, i32* %37, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 255, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %26

46:                                               ; preds = %26
  ret void
}

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
