; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_spur_mitigate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_spur_mitigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i32, i32)* }
%struct.ath9k_channel = type { i32 }

@AR_NO_SPUR = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_CNTL = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_MASK_PPM = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_SELECT = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_IN_AGC = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_spur_mitigate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_spur_mitigate(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %15 = load i32, i32* @AR_NO_SPUR, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %16)
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %51, %2
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ath_hw*, i32, i32)*, i32 (%struct.ath_hw*, i32, i32)** %26, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 %27(%struct.ath_hw* %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @AR_NO_SPUR, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %54

36:                                               ; preds = %22
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 10
  %42 = sub nsw i32 %37, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %43, -95
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 95
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %54

50:                                               ; preds = %45, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %18

54:                                               ; preds = %48, %35, %18
  %55 = load i32, i32* @AR_NO_SPUR, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %125

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %60, 32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %64 = call i32 @REG_READ(%struct.ath_hw* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI, align 4
  %67 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK, align 4
  %72 = or i32 %70, %71
  %73 = or i32 %65, %72
  store i32 %73, i32* %11, align 4
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @REG_WRITE(%struct.ath_hw* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %79 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_SELECT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SPUR_RSSI_THRESH, align 4
  %86 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %87 = call i32 @SM(i32 %85, i32 %86)
  %88 = or i32 %84, %87
  store i32 %88, i32* %11, align 4
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @REG_WRITE(%struct.ath_hw* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = mul nsw i32 %93, 524288
  %95 = sdiv i32 %94, 100
  %96 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %99 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %98)
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 440, i32 400
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %5, align 4
  %104 = mul nsw i32 %103, 2048
  %105 = load i32, i32* %9, align 4
  %106 = sdiv i32 %104, %105
  %107 = and i32 %106, 1023
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_IN_AGC, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %111 = call i32 @SM(i32 %109, i32 %110)
  %112 = or i32 %108, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %115 = call i32 @SM(i32 %113, i32 %114)
  %116 = or i32 %112, %115
  store i32 %116, i32* %11, align 4
  %117 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %118 = load i32, i32* @AR_PHY_TIMING11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @REG_WRITE(%struct.ath_hw* %117, i32 %118, i32 %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @ar5008_hw_cmn_spur_mitigate(%struct.ath_hw* %121, %struct.ath9k_channel* %122, i32 %123)
  br label %125

125:                                              ; preds = %59, %58
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ar5008_hw_cmn_spur_mitigate(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
