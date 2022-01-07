; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_init_mode_gain_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_init_mode_gain_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*, i32)* }

@EEP_TXGAIN_TYPE = common dso_local global i32 0, align 4
@ar9287Modes_rx_gain_9287_1_1 = common dso_local global i32 0, align 4
@ar9287Modes_tx_gain_9287_1_1 = common dso_local global i32 0, align 4
@AR5416_EEP_TXGAIN_HIGH_POWER = common dso_local global i64 0, align 8
@ar9285Modes_XE2_0_high_power = common dso_local global i32 0, align 4
@ar9285Modes_high_power_tx_gain_9285_1_2 = common dso_local global i32 0, align 4
@ar9285Modes_XE2_0_normal_power = common dso_local global i32 0, align 4
@ar9285Modes_original_tx_gain_9285_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9002_hw_init_mode_gain_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_init_mode_gain_regs(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %7, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = load i32, i32* @EEP_TXGAIN_TYPE, align 4
  %11 = call i64 %8(%struct.ath_hw* %9, i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = load i32, i32* @ar9287Modes_rx_gain_9287_1_1, align 4
  %19 = call i32 @INIT_INI_ARRAY(i32* %17, i32 %18)
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = call i32 @ar9280_20_hw_init_rxgain_ini(%struct.ath_hw* %25)
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = call i64 @AR_SREV_9271(%struct.ath_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @ar9271_hw_init_txgain_ini(%struct.ath_hw* %33, i64 %34)
  br label %95

36:                                               ; preds = %28
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load i32, i32* @ar9287Modes_tx_gain_9287_1_1, align 4
  %44 = call i32 @INIT_INI_ARRAY(i32* %42, i32 %43)
  br label %94

45:                                               ; preds = %36
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @ar9280_20_hw_init_txgain_ini(%struct.ath_hw* %50, i64 %51)
  br label %93

53:                                               ; preds = %45
  %54 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %55 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @AR5416_EEP_TXGAIN_HIGH_POWER, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 0
  %68 = load i32, i32* @ar9285Modes_XE2_0_high_power, align 4
  %69 = call i32 @INIT_INI_ARRAY(i32* %67, i32 %68)
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = load i32, i32* @ar9285Modes_high_power_tx_gain_9285_1_2, align 4
  %74 = call i32 @INIT_INI_ARRAY(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %91

76:                                               ; preds = %57
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 0
  %83 = load i32, i32* @ar9285Modes_XE2_0_normal_power, align 4
  %84 = call i32 @INIT_INI_ARRAY(i32* %82, i32 %83)
  br label %90

85:                                               ; preds = %76
  %86 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 0
  %88 = load i32, i32* @ar9285Modes_original_tx_gain_9285_1_2, align 4
  %89 = call i32 @INIT_INI_ARRAY(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %53
  br label %93

93:                                               ; preds = %92, %49
  br label %94

94:                                               ; preds = %93, %40
  br label %95

95:                                               ; preds = %94, %32
  ret void
}

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

declare dso_local i32 @ar9280_20_hw_init_rxgain_ini(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ar9271_hw_init_txgain_ini(%struct.ath_hw*, i64) #1

declare dso_local i32 @ar9280_20_hw_init_txgain_ini(%struct.ath_hw*, i64) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285E_20(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
