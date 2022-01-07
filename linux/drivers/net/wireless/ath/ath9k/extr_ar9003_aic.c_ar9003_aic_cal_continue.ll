; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_cal_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_cal_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_aic, %struct.ath9k_hw_mci }
%struct.ath9k_hw_aic = type { i32*, i32, i32 }
%struct.ath9k_hw_mci = type { i32 }
%struct.ath_common = type { i32 }

@ATH_MCI_CONFIG_AIC_CAL_NUM_CHAN = common dso_local global i32 0, align 4
@AIC_CAL_STATE_ERROR = common dso_local global i32 0, align 4
@AR_PHY_AIC_CTRL_0_B1 = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_ENABLE = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AIC cal is not done after 40ms\00", align 1
@AR_PHY_AIC_SRAM_ADDR_B1 = common dso_local global i32 0, align 4
@ATH_AIC_SRAM_CAL_OFFSET = common dso_local global i32 0, align 4
@ATH_AIC_SRAM_AUTO_INCREMENT = common dso_local global i32 0, align 4
@ATH_AIC_MAX_BT_CHANNEL = common dso_local global i32 0, align 4
@AR_PHY_AIC_SRAM_DATA_B1 = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_CH_VALID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ar9003_aic_cal_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_aic_cal_continue(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_mci*, align 8
  %8 = alloca %struct.ath9k_hw_aic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.ath9k_hw_mci* %16, %struct.ath9k_hw_mci** %7, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ath9k_hw_aic* %19, %struct.ath9k_hw_aic** %8, align 8
  %20 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %21 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATH_MCI_CONFIG_AIC_CAL_NUM_CHAN, align 4
  %24 = call i32 @MS(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @AIC_CAL_STATE_ERROR, align 4
  %29 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %32 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %144

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 10000
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = load i32, i32* @AR_PHY_AIC_CTRL_0_B1, align 4
  %44 = call i32 @REG_READ(%struct.ath_hw* %42, i32 %43)
  %45 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %54

49:                                               ; preds = %41
  %50 = call i32 @udelay(i32 100)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %38

54:                                               ; preds = %48, %38
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %57 = load i32, i32* @AR_PHY_AIC_CTRL_0_B1, align 4
  %58 = call i32 @REG_READ(%struct.ath_hw* %56, i32 %57)
  %59 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %64 = load i32, i32* @MCI, align 4
  %65 = call i32 @ath_dbg(%struct.ath_common* %63, i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %140

66:                                               ; preds = %55
  %67 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %68 = load i32, i32* @AR_PHY_AIC_SRAM_ADDR_B1, align 4
  %69 = load i32, i32* @ATH_AIC_SRAM_CAL_OFFSET, align 4
  %70 = load i32, i32* @ATH_AIC_SRAM_AUTO_INCREMENT, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @REG_WRITE(%struct.ath_hw* %67, i32 %68, i32 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %111, %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ATH_AIC_MAX_BT_CHANNEL, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %73
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = load i32, i32* @AR_PHY_AIC_SRAM_DATA_B1, align 4
  %80 = call i32 @REG_READ(%struct.ath_hw* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %86 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %95 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %84
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %101 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %114

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %77
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %73

114:                                              ; preds = %108, %73
  %115 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %116 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %114
  %124 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %125 = call i32 @ar9003_aic_cal_done(%struct.ath_hw* %124)
  br label %139

126:                                              ; preds = %120
  %127 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %128 = load i32, i32* @AR_PHY_AIC_CTRL_0_B1, align 4
  %129 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %130 = call i32 @REG_CLR_BIT(%struct.ath_hw* %127, i32 %128, i32 %129)
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = load i32, i32* @AR_PHY_AIC_CTRL_0_B1, align 4
  %133 = load i32, i32* @AR_PHY_AIC_CAL_CH_VALID_RESET, align 4
  %134 = call i32 @REG_SET_BIT(%struct.ath_hw* %131, i32 %132, i32 %133)
  %135 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %136 = load i32, i32* @AR_PHY_AIC_CTRL_0_B1, align 4
  %137 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %138 = call i32 @REG_SET_BIT(%struct.ath_hw* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %126, %123
  br label %140

140:                                              ; preds = %139, %62
  %141 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %8, align 8
  %142 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %27
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_aic_cal_done(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
