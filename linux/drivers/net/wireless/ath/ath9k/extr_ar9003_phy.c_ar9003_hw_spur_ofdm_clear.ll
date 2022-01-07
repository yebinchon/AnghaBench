; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_ofdm_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_ofdm_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_TIMING4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_SPUR_FILTER = common dso_local global i32 0, align 4
@AR_PHY_TIMING11 = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_MASK_PPM = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_PILOT_MASK = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_CHAN_MASK = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_spur_ofdm_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spur_ofdm_clear(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = load i32, i32* @AR_PHY_TIMING4, align 4
  %5 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_FILTER, align 4
  %6 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @AR_PHY_TIMING11, align 4
  %9 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %10 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_PHY_TIMING11, align 4
  %13 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %14 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %17 = load i32, i32* @AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD, align 4
  %18 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = load i32, i32* @AR_PHY_TIMING11, align 4
  %21 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC, align 4
  %22 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_PHY_TIMING11, align 4
  %25 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR, align 4
  %26 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_PHY_TIMING4, align 4
  %29 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_RSSI, align 4
  %30 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %33 = load i32, i32* @AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI, align 4
  %34 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %37 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT, align 4
  %38 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %41 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %42 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = load i32, i32* @AR_PHY_TIMING4, align 4
  %45 = load i32, i32* @AR_PHY_TIMING4_ENABLE_PILOT_MASK, align 4
  %46 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = load i32, i32* @AR_PHY_TIMING4, align 4
  %49 = load i32, i32* @AR_PHY_TIMING4_ENABLE_CHAN_MASK, align 4
  %50 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %52 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %53 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A, align 4
  %54 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %57 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A, align 4
  %58 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %61 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A, align 4
  %62 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %59, i32 %60, i32 %61, i32 0)
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %65 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A, align 4
  %66 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %63, i32 %64, i32 %65, i32 0)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %69 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A, align 4
  %70 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %72 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %73 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, align 4
  %74 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %77 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %78 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %75, i32 %76, i32 %77, i32 0)
  ret void
}

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
