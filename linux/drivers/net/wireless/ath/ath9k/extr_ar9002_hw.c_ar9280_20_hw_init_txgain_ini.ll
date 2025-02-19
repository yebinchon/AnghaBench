; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_txgain_ini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_txgain_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*)* }

@AR5416_EEP_MINOR_VER_19 = common dso_local global i64 0, align 8
@AR5416_EEP_TXGAIN_HIGH_POWER = common dso_local global i64 0, align 8
@ar9280Modes_high_power_tx_gain_9280_2 = common dso_local global i32 0, align 4
@ar9280Modes_original_tx_gain_9280_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64)* @ar9280_20_hw_init_txgain_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9280_20_hw_init_txgain_ini(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct.ath_hw*)*, i64 (%struct.ath_hw*)** %8, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call i64 %9(%struct.ath_hw* %10)
  %12 = load i64, i64* @AR5416_EEP_MINOR_VER_19, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @AR5416_EEP_TXGAIN_HIGH_POWER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load i32, i32* @ar9280Modes_high_power_tx_gain_9280_2, align 4
  %22 = call i32 @INIT_INI_ARRAY(i32* %20, i32 %21)
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = load i32, i32* @ar9280Modes_original_tx_gain_9280_2, align 4
  %27 = call i32 @INIT_INI_ARRAY(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = load i32, i32* @ar9280Modes_original_tx_gain_9280_2, align 4
  %33 = call i32 @INIT_INI_ARRAY(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
