; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9287_hw_olc_temp_compensation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9287_hw_olc_temp_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*, i32)* }

@AR_PHY_TX_PWRCTRL4 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL_PD_AVG_OUT = common dso_local global i32 0, align 4
@EEP_TEMPSENSE_SLOPE = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL11 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL_OLPC_TEMP_COMP = common dso_local global i32 0, align 4
@AR_PHY_CH1_TX_PWRCTRL11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9287_hw_olc_temp_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9287_hw_olc_temp_compensation(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @AR_PHY_TX_PWRCTRL4, align 4
  %9 = call i32 @REG_READ(%struct.ath_hw* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AR_PHY_TX_PWRCTRL_PD_AVG_OUT, align 4
  %12 = call i64 @MS(i32 %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %1
  br label %53

21:                                               ; preds = %17
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %25, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @EEP_TEMPSENSE_SLOPE, align 4
  %29 = call i64 %26(%struct.ath_hw* %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %42

33:                                               ; preds = %21
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = mul nsw i64 %38, 4
  %40 = load i64, i64* %6, align 8
  %41 = sdiv i64 %39, %40
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %33, %32
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL11, align 4
  %45 = load i32, i32* @AR_PHY_TX_PWRCTRL_OLPC_TEMP_COMP, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %43, i32 %44, i32 %45, i64 %46)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = load i32, i32* @AR_PHY_CH1_TX_PWRCTRL11, align 4
  %50 = load i32, i32* @AR_PHY_TX_PWRCTRL_OLPC_TEMP_COMP, align 4
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %48, i32 %49, i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %20, %42
  ret void
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
