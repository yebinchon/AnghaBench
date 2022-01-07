; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_cck_target_powers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_cck_target_powers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@LEGACY_TARGET_RATE_1L_5L = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_1L_5L = common dso_local global i64 0, align 8
@LEGACY_TARGET_RATE_5S = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_5S = common dso_local global i64 0, align 8
@LEGACY_TARGET_RATE_11L = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_11L = common dso_local global i64 0, align 8
@LEGACY_TARGET_RATE_11S = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_11S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32*)* @ar9003_hw_get_cck_target_powers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_get_cck_target_powers(%struct.ath_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = load i32, i32* @LEGACY_TARGET_RATE_1L_5L, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ar9003_hw_eeprom_get_cck_tgt_pwr(%struct.ath_hw* %7, i32 %8, i32 %9)
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* @ALL_TARGET_LEGACY_1L_5L, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = load i32, i32* @LEGACY_TARGET_RATE_5S, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ar9003_hw_eeprom_get_cck_tgt_pwr(%struct.ath_hw* %14, i32 %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* @ALL_TARGET_LEGACY_5S, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = load i32, i32* @LEGACY_TARGET_RATE_11L, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ar9003_hw_eeprom_get_cck_tgt_pwr(%struct.ath_hw* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @ALL_TARGET_LEGACY_11L, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load i32, i32* @LEGACY_TARGET_RATE_11S, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ar9003_hw_eeprom_get_cck_tgt_pwr(%struct.ath_hw* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* @ALL_TARGET_LEGACY_11S, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %34, align 4
  ret void
}

declare dso_local i32 @ar9003_hw_eeprom_get_cck_tgt_pwr(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
