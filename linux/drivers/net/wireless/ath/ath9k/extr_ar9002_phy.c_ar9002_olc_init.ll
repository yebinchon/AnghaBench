; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_olc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_olc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32* }

@OLC_FOR_AR9280_20_LATER = common dso_local global i32 0, align 4
@OLC_FOR_AR9287_10_LATER = common dso_local global i64 0, align 8
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL = common dso_local global i32 0, align 4
@AR9287_AN_TXPC0 = common dso_local global i32 0, align 4
@AR9287_AN_TXPC0_TXPCMODE = common dso_local global i32 0, align 4
@AR9287_AN_TXPC0_TXPCMODE_S = common dso_local global i32 0, align 4
@AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE = common dso_local global i32 0, align 4
@AR9280_TX_GAIN_TABLE_SIZE = common dso_local global i64 0, align 8
@AR_PHY_TX_GAIN_TBL1 = common dso_local global i64 0, align 8
@AR_PHY_TX_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9002_olc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_olc_init(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load i32, i32* @OLC_FOR_AR9280_20_LATER, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = load i64, i64* @OLC_FOR_AR9287_10_LATER, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %13 = load i32, i32* @AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL, align 4
  %14 = call i32 @REG_SET_BIT(%struct.ath_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR9287_AN_TXPC0, align 4
  %17 = load i32, i32* @AR9287_AN_TXPC0_TXPCMODE, align 4
  %18 = load i32, i32* @AR9287_AN_TXPC0_TXPCMODE_S, align 4
  %19 = load i32, i32* @AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE, align 4
  %20 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = call i32 @udelay(i32 100)
  br label %47

22:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @AR9280_TX_GAIN_TABLE_SIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = load i64, i64* @AR_PHY_TX_GAIN_TBL1, align 8
  %30 = load i64, i64* %3, align 8
  %31 = mul i64 %30, 4
  %32 = add i64 %29, %31
  %33 = call i32 @REG_READ(%struct.ath_hw* %28, i64 %32)
  %34 = load i32, i32* @AR_PHY_TX_GAIN, align 4
  %35 = call i32 @MS(i32 %33, i32 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %27
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %6, %44, %10
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
