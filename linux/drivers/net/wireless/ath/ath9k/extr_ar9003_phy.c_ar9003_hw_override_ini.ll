; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_override_ini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_override_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_ADHOC_MCAST_KEYID_ENABLE = common dso_local global i32 0, align 4
@AR_AGG_WEP_ENABLE_FIX = common dso_local global i32 0, align 4
@AR_AGG_WEP_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_CFP_IGNORE = common dso_local global i32 0, align 4
@AR_GLB_SWREG_DISCONT_MODE = common dso_local global i32 0, align 4
@AR_GLB_SWREG_DISCONT_EN_BT_WLAN = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL = common dso_local global i32 0, align 4
@TX_IQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@TX_CL_CAL = common dso_local global i32 0, align 4
@AR_RTC_DERIVED_CLK = common dso_local global i32 0, align 4
@AR_SLP32_MODE = common dso_local global i32 0, align 4
@AR_SLP32_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_override_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_override_ini(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = load i32, i32* @AR_DIAG_SW, align 4
  %6 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %7 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @REG_SET_BIT(%struct.ath_hw* %4, i32 %5, i32 %8)
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %12 = call i32 @REG_READ(%struct.ath_hw* %10, i32 %11)
  %13 = load i32, i32* @AR_ADHOC_MCAST_KEYID_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @AR_AGG_WEP_ENABLE_FIX, align 4
  %17 = load i32, i32* @AR_AGG_WEP_ENABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AR_PCU_MISC_MODE2_CFP_IGNORE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = call i64 @AR_SREV_9462(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = call i64 @AR_SREV_9565(%struct.ath_hw* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %30, %1
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load i32, i32* @AR_GLB_SWREG_DISCONT_MODE, align 4
  %37 = load i32, i32* @AR_GLB_SWREG_DISCONT_EN_BT_WLAN, align 4
  %38 = call i32 @REG_WRITE(%struct.ath_hw* %35, i32 %36, i32 %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %41 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %42 = call i64 @REG_READ_FIELD(%struct.ath_hw* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* @TX_IQ_CAL, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %57

50:                                               ; preds = %34
  %51 = load i32, i32* @TX_IQ_CAL, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %61 = call i32 @REG_READ(%struct.ath_hw* %59, i32 %60)
  %62 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @TX_CL_CAL, align 4
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %78

71:                                               ; preds = %58
  %72 = load i32, i32* @TX_CL_CAL, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %65
  %79 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %80 = call i64 @AR_SREV_9340(%struct.ath_hw* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %84 = call i64 @AR_SREV_9531(%struct.ath_hw* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %88 = call i64 @AR_SREV_9550(%struct.ath_hw* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %92 = call i64 @AR_SREV_9561(%struct.ath_hw* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %90, %86, %82, %78
  %95 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %102 = call i32 @REG_WRITE(%struct.ath_hw* %100, i32 %101, i32 760)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %104 = load i32, i32* @AR_SLP32_MODE, align 4
  %105 = call i32 @REG_WRITE(%struct.ath_hw* %103, i32 %104, i32 1110999)
  %106 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %107 = load i32, i32* @AR_SLP32_INC, align 4
  %108 = call i32 @REG_WRITE(%struct.ath_hw* %106, i32 %107, i32 124846)
  br label %119

109:                                              ; preds = %94
  %110 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %111 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %112 = call i32 @REG_WRITE(%struct.ath_hw* %110, i32 %111, i32 1218)
  %113 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %114 = load i32, i32* @AR_SLP32_MODE, align 4
  %115 = call i32 @REG_WRITE(%struct.ath_hw* %113, i32 %114, i32 1111040)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %117 = load i32, i32* @AR_SLP32_INC, align 4
  %118 = call i32 @REG_WRITE(%struct.ath_hw* %116, i32 %117, i32 124928)
  br label %119

119:                                              ; preds = %109, %99
  %120 = call i32 @udelay(i32 100)
  br label %121

121:                                              ; preds = %119, %90
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
