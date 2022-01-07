; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xpa_bias_level_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xpa_bias_level_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_CH0_TOP2 = common dso_local global i32 0, align 4
@AR_CH0_TOP2_XPABIASLVL = common dso_local global i32 0, align 4
@AR_CH0_TOP = common dso_local global i32 0, align 4
@AR_CH0_TOP_XPABIASLVL = common dso_local global i32 0, align 4
@AR_CH0_THERM = common dso_local global i32 0, align 4
@AR_CH0_THERM_XPABIASLVL_MSB = common dso_local global i32 0, align 4
@AR_CH0_THERM_XPASHORT2GND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_xpa_bias_level_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_xpa_bias_level_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_2__* @ar9003_modal_header(%struct.ath_hw* %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i64 @AR_SREV_9485(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call i64 @AR_SREV_9330(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i64 @AR_SREV_9340(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i64 @AR_SREV_9531(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = call i64 @AR_SREV_9561(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22, %18, %14, %2
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = load i32, i32* @AR_CH0_TOP2, align 4
  %33 = load i32, i32* @AR_CH0_TOP2_XPABIASLVL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %31, i32 %32, i32 %33, i32 %34)
  br label %71

36:                                               ; preds = %26
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i64 @AR_SREV_9462(%struct.ath_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = call i64 @AR_SREV_9550(%struct.ath_hw* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = call i64 @AR_SREV_9565(%struct.ath_hw* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %40, %36
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* @AR_CH0_TOP, align 4
  %51 = load i32, i32* @AR_CH0_TOP_XPABIASLVL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %49, i32 %50, i32 %51, i32 %52)
  br label %70

54:                                               ; preds = %44
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = load i32, i32* @AR_CH0_TOP, align 4
  %57 = load i32, i32* @AR_CH0_TOP_XPABIASLVL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load i32, i32* @AR_CH0_THERM, align 4
  %62 = load i32, i32* @AR_CH0_THERM_XPABIASLVL_MSB, align 4
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 2
  %65 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %60, i32 %61, i32 %62, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR_CH0_THERM, align 4
  %68 = load i32, i32* @AR_CH0_THERM_XPASHORT2GND, align 4
  %69 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %54, %48
  br label %71

71:                                               ; preds = %70, %30
  ret void
}

declare dso_local %struct.TYPE_2__* @ar9003_modal_header(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
