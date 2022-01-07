; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_apply_tuning_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_apply_tuning_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@AR_CH0_XTAL = common dso_local global i32 0, align 4
@AR_CH0_XTAL_CAPINDAC = common dso_local global i32 0, align 4
@AR_CH0_XTAL_CAPOUTDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_apply_tuning_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_apply_tuning_caps(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar9300_eeprom*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.ar9300_eeprom* %7, %struct.ar9300_eeprom** %3, align 8
  %8 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %3, align 8
  %9 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = call i64 @AR_SREV_9340(%struct.ath_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = call i64 @AR_SREV_9531(%struct.ath_hw* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %1
  br label %42

22:                                               ; preds = %17
  %23 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %3, align 8
  %24 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 127
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = load i32, i32* @AR_CH0_XTAL, align 4
  %34 = load i32, i32* @AR_CH0_XTAL_CAPINDAC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_CH0_XTAL, align 4
  %39 = load i32, i32* @AR_CH0_XTAL_CAPOUTDAC, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %21, %29, %22
  ret void
}

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
