; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_rng.c_ath9k_rng_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_rng.c_ath9k_rng_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@AR_PHY_TEST = common dso_local global i32 0, align 4
@AR_PHY_TEST_BBB_OBS_SEL = common dso_local global i32 0, align 4
@AR_PHY_TEST_RX_OBS_SEL_BIT5 = common dso_local global i32 0, align 4
@AR_PHY_TEST_CTL_STATUS = common dso_local global i32 0, align 4
@AR_PHY_TEST_CTL_RX_OBS_SEL = common dso_local global i32 0, align 4
@AR_PHY_TST_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32*, i32)* @ath9k_rng_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rng_data_read(%struct.ath_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_hw*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %12, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %20 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %22 = load i32, i32* @AR_PHY_TEST, align 4
  %23 = load i32, i32* @AR_PHY_TEST_BBB_OBS_SEL, align 4
  %24 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %21, i32 %22, i32 %23, i32 1)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %26 = load i32, i32* @AR_PHY_TEST, align 4
  %27 = load i32, i32* @AR_PHY_TEST_RX_OBS_SEL_BIT5, align 4
  %28 = call i32 @REG_CLR_BIT(%struct.ath_hw* %25, i32 %26, i32 %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %30 = load i32, i32* @AR_PHY_TEST_CTL_STATUS, align 4
  %31 = load i32, i32* @AR_PHY_TEST_CTL_RX_OBS_SEL, align 4
  %32 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %29, i32 %30, i32 %31, i32 0)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %77, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %39 = load i32, i32* @AR_PHY_TST_ADC, align 4
  %40 = call i32 @REG_READ(%struct.ath_hw* %38, i32 %39)
  %41 = and i32 %40, 65535
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %43 = load i32, i32* @AR_PHY_TST_ADC, align 4
  %44 = call i32 @REG_READ(%struct.ath_hw* %42, i32 %43)
  %45 = and i32 %44, 65535
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 65535
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 65535
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %65, %62, %59, %55, %51, %48, %37
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %82 = call i32 @ath9k_ps_restore(%struct.ath_softc* %81)
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 %86, 2
  ret i32 %87
}

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
