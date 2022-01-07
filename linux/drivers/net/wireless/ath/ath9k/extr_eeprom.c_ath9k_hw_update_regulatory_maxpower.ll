; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_update_regulatory_maxpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_update_regulatory_maxpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_regulatory = type { i32 }

@POWER_CORRECTION_FOR_TWO_CHAIN = common dso_local global i32 0, align 4
@POWER_CORRECTION_FOR_THREE_CHAIN = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid chainmask configuration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_regulatory*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %7)
  store %struct.ath_regulatory* %8, %struct.ath_regulatory** %4, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ar5416_get_ntxchains(i32 %11)
  switch i32 %12, label %26 [
    i32 1, label %13
    i32 2, label %14
    i32 3, label %20
  ]

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = load i32, i32* @POWER_CORRECTION_FOR_TWO_CHAIN, align 4
  %16 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %17 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @POWER_CORRECTION_FOR_THREE_CHAIN, align 4
  %22 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %23 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %28 = load i32, i32* @EEPROM, align 4
  %29 = call i32 @ath_dbg(%struct.ath_common* %27, i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %20, %14, %13
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i32 @ar5416_get_ntxchains(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
