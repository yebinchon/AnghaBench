; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_set_btcoex_ctrl_9565_2ANT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_set_btcoex_ctrl_9565_2ANT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_BTCOEX_CTRL_AR9462_MODE = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_WBTIMER_EN = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_PA_SHARED = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_LNA_SHARED = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_NUM_ANTENNAS = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_RX_CHAIN_MASK = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_1_CHAIN_ACK = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_1_CHAIN_BCN = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL2 = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL2_TX_CHAIN_MASK = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_mci_set_btcoex_ctrl_9565_2ANT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_set_btcoex_ctrl_9565_2ANT(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load i32, i32* @AR_BTCOEX_CTRL_AR9462_MODE, align 4
  %5 = call i32 @SM(i32 1, i32 %4)
  %6 = load i32, i32* @AR_BTCOEX_CTRL_WBTIMER_EN, align 4
  %7 = call i32 @SM(i32 1, i32 %6)
  %8 = or i32 %5, %7
  %9 = load i32, i32* @AR_BTCOEX_CTRL_PA_SHARED, align 4
  %10 = call i32 @SM(i32 0, i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* @AR_BTCOEX_CTRL_LNA_SHARED, align 4
  %13 = call i32 @SM(i32 0, i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @AR_BTCOEX_CTRL_NUM_ANTENNAS, align 4
  %16 = call i32 @SM(i32 2, i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @AR_BTCOEX_CTRL_RX_CHAIN_MASK, align 4
  %19 = call i32 @SM(i32 1, i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @AR_BTCOEX_CTRL_1_CHAIN_ACK, align 4
  %22 = call i32 @SM(i32 0, i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @AR_BTCOEX_CTRL_1_CHAIN_BCN, align 4
  %25 = call i32 @SM(i32 0, i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN, align 4
  %28 = call i32 @SM(i32 0, i32 %27)
  %29 = or i32 %26, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = load i32, i32* @AR_BTCOEX_CTRL2, align 4
  %32 = load i32, i32* @AR_BTCOEX_CTRL2_TX_CHAIN_MASK, align 4
  %33 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @REG_WRITE(%struct.ath_hw* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
