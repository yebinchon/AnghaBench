; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_ofdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_ofdm.c"
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
@AR_PHY_SPUR_REG_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32, i32, i32, i32, i32)* @ar9003_hw_spur_ofdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spur_ofdm(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %17 = load i32, i32* @AR_PHY_TIMING4, align 4
  %18 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_FILTER, align 4
  %19 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %16, i32 %17, i32 %18, i32 1)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %21 = load i32, i32* @AR_PHY_TIMING11, align 4
  %22 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %26 = load i32, i32* @AR_PHY_TIMING11, align 4
  %27 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %31 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %32 = load i32, i32* @AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %36 = load i32, i32* @AR_PHY_TIMING11, align 4
  %37 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC, align 4
  %38 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %35, i32 %36, i32 %37, i32 1)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %40 = call i64 @AR_SREV_9565(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %7
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 2437
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %42, %7
  %49 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %50 = load i32, i32* @AR_PHY_TIMING11, align 4
  %51 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR, align 4
  %52 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %49, i32 %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %55 = load i32, i32* @AR_PHY_TIMING4, align 4
  %56 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_RSSI, align 4
  %57 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %54, i32 %55, i32 %56, i32 1)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %59 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %60 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %61 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %58, i32 %59, i32 %60, i32 34)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %63 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %64 = load i32, i32* @AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI, align 4
  %65 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %62, i32 %63, i32 %64, i32 1)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %67 = call i32 @AR_SREV_9340(%struct.ath_hw* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %53
  %70 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %71 = load i32, i32* @AR_PHY_MODE, align 4
  %72 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %73 = call i32 @REG_READ_FIELD(%struct.ath_hw* %70, i32 %71, i32 %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %77 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %78 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT, align 4
  %79 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %76, i32 %77, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %75, %69, %53
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, 4
  %83 = sdiv i32 %82, 5
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, 127
  store i32 %91, i32* %15, align 4
  %92 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %93 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %94 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %95 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %92, i32 %93, i32 %94, i32 1)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %97 = load i32, i32* @AR_PHY_TIMING4, align 4
  %98 = load i32, i32* @AR_PHY_TIMING4_ENABLE_PILOT_MASK, align 4
  %99 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %96, i32 %97, i32 %98, i32 1)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %101 = load i32, i32* @AR_PHY_TIMING4, align 4
  %102 = load i32, i32* @AR_PHY_TIMING4_ENABLE_CHAN_MASK, align 4
  %103 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %100, i32 %101, i32 %102, i32 1)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %105 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %106 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %110 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %111 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %115 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %116 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %120 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %121 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A, align 4
  %122 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %119, i32 %120, i32 %121, i32 12)
  %123 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %124 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %125 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A, align 4
  %126 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %123, i32 %124, i32 %125, i32 12)
  %127 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %128 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %129 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, align 4
  %130 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %127, i32 %128, i32 %129, i32 160)
  %131 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %132 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %133 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %134 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %131, i32 %132, i32 %133, i32 255)
  ret void
}

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
