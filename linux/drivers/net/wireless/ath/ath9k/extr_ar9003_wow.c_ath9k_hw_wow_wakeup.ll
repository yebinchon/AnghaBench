; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_wow_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_wow_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@AR_WOW_PATTERN = common dso_local global i32 0, align 4
@AR_WOW_MAGIC_PAT_FOUND = common dso_local global i32 0, align 4
@AH_WOW_MAGIC_PATTERN_EN = common dso_local global i32 0, align 4
@AH_WOW_USER_PATTERN_EN = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_FAIL = common dso_local global i32 0, align 4
@AH_WOW_LINK_CHANGE = common dso_local global i32 0, align 4
@AR_WOW_BEACON_FAIL = common dso_local global i32 0, align 4
@AH_WOW_BEACON_MISS = common dso_local global i32 0, align 4
@AR_MAC_PCU_WOW4 = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PMCTRL_WOW_PME_CLR = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_STATE_D1D3 = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@INIT_RSSI_THR = common dso_local global i32 0, align 4
@AR_DIRECT_CONNECT = common dso_local global i32 0, align 4
@AR_DC_TSF2_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_wow_wakeup(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @AR_WOW_PATTERN, align 4
  %9 = call i32 @REG_READ(%struct.ath_hw* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @AR_WOW_STATUS(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AR_WOW_MAGIC_PAT_FOUND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @AH_WOW_MAGIC_PATTERN_EN, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @AR_WOW_PATTERN_FOUND(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @AH_WOW_USER_PATTERN_EN, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @AH_WOW_LINK_CHANGE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @AR_WOW_BEACON_FAIL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_MAC_PCU_WOW4, align 4
  %59 = call i32 @REG_READ(%struct.ath_hw* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @AR_WOW_STATUS2(i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @AR_WOW2_PATTERN_FOUND(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @AH_WOW_USER_PATTERN_EN, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %82 = load i32, i32* @AR_PMCTRL_WOW_PME_CLR, align 4
  %83 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3, align 4
  %84 = call i32 @REG_RMW(%struct.ath_hw* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %86 = load i32, i32* @AR_WOW_PATTERN, align 4
  %87 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %88 = load i32, i32* @AR_WOW_PATTERN, align 4
  %89 = call i32 @REG_READ(%struct.ath_hw* %87, i32 %88)
  %90 = call i32 @AR_WOW_CLEAR_EVENTS(i32 %89)
  %91 = call i32 @REG_WRITE(%struct.ath_hw* %85, i32 %86, i32 %90)
  %92 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %93 = load i32, i32* @AR_MAC_PCU_WOW4, align 4
  %94 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %95 = load i32, i32* @AR_MAC_PCU_WOW4, align 4
  %96 = call i32 @REG_READ(%struct.ath_hw* %94, i32 %95)
  %97 = call i32 @AR_WOW_CLEAR_EVENTS2(i32 %96)
  %98 = call i32 @REG_WRITE(%struct.ath_hw* %92, i32 %93, i32 %97)
  %99 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %100 = load i32, i32* @AR_RSSI_THR, align 4
  %101 = load i32, i32* @INIT_RSSI_THR, align 4
  %102 = call i32 @REG_WRITE(%struct.ath_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %104 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %79
  %108 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %109 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %79
  %111 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %112 = call i64 @AR_SREV_9462(%struct.ath_hw* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %116 = call i64 @AR_SREV_9565(%struct.ath_hw* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %120 = call i64 @AR_SREV_9485(%struct.ath_hw* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %118, %114, %110
  %123 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %124 = load i32, i32* @AR_DIRECT_CONNECT, align 4
  %125 = call i32 @REG_READ(%struct.ath_hw* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @AR_DC_TSF2_ENABLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %132 = call i32 @ath9k_hw_gen_timer_start_tsf2(%struct.ath_hw* %131)
  br label %133

133:                                              ; preds = %130, %122
  br label %134

134:                                              ; preds = %133, %118
  %135 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %136 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %139 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_WOW_STATUS(i32) #1

declare dso_local i64 @AR_WOW_PATTERN_FOUND(i32) #1

declare dso_local i32 @AR_WOW_STATUS2(i32) #1

declare dso_local i64 @AR_WOW2_PATTERN_FOUND(i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_WOW_CLEAR_EVENTS(i32) #1

declare dso_local i32 @AR_WOW_CLEAR_EVENTS2(i32) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_gen_timer_start_tsf2(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
