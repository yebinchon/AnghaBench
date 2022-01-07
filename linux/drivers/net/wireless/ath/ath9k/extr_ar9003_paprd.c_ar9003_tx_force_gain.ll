; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_tx_force_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_tx_force_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32* }

@AR_PHY_TX_FORCED_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_TXBB1DBGAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_TXBB6DBGAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_TXMXRGAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNA = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNB = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNC = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGND = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_ENABLE_PAL = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCE_TX_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TPC_1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_1_FORCED_DAC_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TPC_1_FORCE_DAC_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_tx_force_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_tx_force_gain(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 3
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 5
  %29 = and i32 %28, 15
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 9
  %32 = and i32 %31, 15
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 13
  %35 = and i32 %34, 15
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 17
  %38 = and i32 %37, 15
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 21
  %41 = and i32 %40, 3
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %44 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_TXBB1DBGAIN, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %49 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_TXBB6DBGAIN, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %54 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_TXMXRGAIN, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %59 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNA, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %64 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNB, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %69 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNC, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %73 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %74 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGND, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %79 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_ENABLE_PAL, align 4
  %80 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %83 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCE_TX_GAIN, align 4
  %84 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %86 = load i32, i32* @AR_PHY_TPC_1, align 4
  %87 = load i32, i32* @AR_PHY_TPC_1_FORCED_DAC_GAIN, align 4
  %88 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = load i32, i32* @AR_PHY_TPC_1, align 4
  %91 = load i32, i32* @AR_PHY_TPC_1_FORCE_DAC_GAIN, align 4
  %92 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %89, i32 %90, i32 %91, i32 0)
  ret void
}

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
