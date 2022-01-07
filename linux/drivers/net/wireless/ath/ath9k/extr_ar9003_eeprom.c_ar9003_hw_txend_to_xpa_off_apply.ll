; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_txend_to_xpa_off_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_txend_to_xpa_off_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_PHY_XPA_TIMING_CTL = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_txend_to_xpa_off_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_txend_to_xpa_off_apply(%struct.ath_hw* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %13 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %18 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %16, i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local %struct.TYPE_2__* @ar9003_modal_header(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
