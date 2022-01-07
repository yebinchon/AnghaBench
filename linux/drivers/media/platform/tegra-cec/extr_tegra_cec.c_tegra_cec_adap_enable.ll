; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.tegra_cec* }
%struct.tegra_cec = type { i64, i64, i64 }

@TEGRA_CEC_HW_CONTROL = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT = common dso_local global i32 0, align 4
@TEGRA_CEC_SW_CONTROL = common dso_local global i32 0, align 4
@TEGRA_CEC_INPUT_FILTER = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIMING_0 = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM0_START_BIT_MAX_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM0_START_BIT_MIN_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM0_START_BIT_MAX_DURATION_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM0_START_BIT_MIN_DURATION_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIMING_1 = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM1_DATA_BIT_MAX_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM1_DATA_BIT_SAMPLE_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM1_DATA_BIT_MAX_DURATION_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM1_DATA_BIT_MIN_DURATION_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIMING_2 = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_TIM2_END_OF_BLOCK_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIMING_0 = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM0_START_BIT_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM0_START_BIT_DURATION_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM0_BUS_XITION_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM0_BUS_ERROR_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIMING_1 = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM1_LO_DATA_BIT_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM1_HI_DATA_BIT_LO_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM1_DATA_BIT_DURATION_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM1_ACK_NAK_BIT_SAMPLE_TIME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIMING_2 = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM2_BUS_IDLE_TIME_ADDITIONAL_FRAME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM2_BUS_IDLE_TIME_NEW_FRAME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_TIM2_BUS_IDLE_TIME_RETRY_FRAME_SHIFT = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_TX_REGISTER_UNDERRUN = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_TX_FRAME_OR_BLOCK_NAKD = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_TX_ARBITRATION_FAILED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_TX_BUS_ANOMALY_DETECTED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_TX_FRAME_TRANSMITTED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_RX_REGISTER_FULL = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_RX_START_BIT_DETECTED = common dso_local global i32 0, align 4
@TEGRA_CEC_HWCTRL_TX_RX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @tegra_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_cec*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %7, i32 0, i32 0
  %9 = load %struct.tegra_cec*, %struct.tegra_cec** %8, align 8
  store %struct.tegra_cec* %9, %struct.tegra_cec** %6, align 8
  %10 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %11 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %13 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %17 = load i32, i32* @TEGRA_CEC_HW_CONTROL, align 4
  %18 = call i32 @cec_write(%struct.tegra_cec* %16, i32 %17, i32 0)
  %19 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %20 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %21 = call i32 @cec_write(%struct.tegra_cec* %19, i32 %20, i32 0)
  %22 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %23 = load i32, i32* @TEGRA_CEC_INT_STAT, align 4
  %24 = call i32 @cec_write(%struct.tegra_cec* %22, i32 %23, i32 -1)
  %25 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %26 = load i32, i32* @TEGRA_CEC_SW_CONTROL, align 4
  %27 = call i32 @cec_write(%struct.tegra_cec* %25, i32 %26, i32 0)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %127

31:                                               ; preds = %2
  %32 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %33 = load i32, i32* @TEGRA_CEC_INPUT_FILTER, align 4
  %34 = call i32 @cec_write(%struct.tegra_cec* %32, i32 %33, i32 -2147483616)
  %35 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %36 = load i32, i32* @TEGRA_CEC_RX_TIMING_0, align 4
  %37 = load i32, i32* @TEGRA_CEC_RX_TIM0_START_BIT_MAX_LO_TIME_SHIFT, align 4
  %38 = shl i32 122, %37
  %39 = load i32, i32* @TEGRA_CEC_RX_TIM0_START_BIT_MIN_LO_TIME_SHIFT, align 4
  %40 = shl i32 109, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @TEGRA_CEC_RX_TIM0_START_BIT_MAX_DURATION_SHIFT, align 4
  %43 = shl i32 147, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @TEGRA_CEC_RX_TIM0_START_BIT_MIN_DURATION_SHIFT, align 4
  %46 = shl i32 134, %45
  %47 = or i32 %44, %46
  %48 = call i32 @cec_write(%struct.tegra_cec* %35, i32 %36, i32 %47)
  %49 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %50 = load i32, i32* @TEGRA_CEC_RX_TIMING_1, align 4
  %51 = load i32, i32* @TEGRA_CEC_RX_TIM1_DATA_BIT_MAX_LO_TIME_SHIFT, align 4
  %52 = shl i32 53, %51
  %53 = load i32, i32* @TEGRA_CEC_RX_TIM1_DATA_BIT_SAMPLE_TIME_SHIFT, align 4
  %54 = shl i32 33, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @TEGRA_CEC_RX_TIM1_DATA_BIT_MAX_DURATION_SHIFT, align 4
  %57 = shl i32 86, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @TEGRA_CEC_RX_TIM1_DATA_BIT_MIN_DURATION_SHIFT, align 4
  %60 = shl i32 64, %59
  %61 = or i32 %58, %60
  %62 = call i32 @cec_write(%struct.tegra_cec* %49, i32 %50, i32 %61)
  %63 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %64 = load i32, i32* @TEGRA_CEC_RX_TIMING_2, align 4
  %65 = load i32, i32* @TEGRA_CEC_RX_TIM2_END_OF_BLOCK_TIME_SHIFT, align 4
  %66 = shl i32 80, %65
  %67 = call i32 @cec_write(%struct.tegra_cec* %63, i32 %64, i32 %66)
  %68 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %69 = load i32, i32* @TEGRA_CEC_TX_TIMING_0, align 4
  %70 = load i32, i32* @TEGRA_CEC_TX_TIM0_START_BIT_LO_TIME_SHIFT, align 4
  %71 = shl i32 116, %70
  %72 = load i32, i32* @TEGRA_CEC_TX_TIM0_START_BIT_DURATION_SHIFT, align 4
  %73 = shl i32 141, %72
  %74 = or i32 %71, %73
  %75 = load i32, i32* @TEGRA_CEC_TX_TIM0_BUS_XITION_TIME_SHIFT, align 4
  %76 = shl i32 8, %75
  %77 = or i32 %74, %76
  %78 = load i32, i32* @TEGRA_CEC_TX_TIM0_BUS_ERROR_LO_TIME_SHIFT, align 4
  %79 = shl i32 113, %78
  %80 = or i32 %77, %79
  %81 = call i32 @cec_write(%struct.tegra_cec* %68, i32 %69, i32 %80)
  %82 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %83 = load i32, i32* @TEGRA_CEC_TX_TIMING_1, align 4
  %84 = load i32, i32* @TEGRA_CEC_TX_TIM1_LO_DATA_BIT_LO_TIME_SHIFT, align 4
  %85 = shl i32 47, %84
  %86 = load i32, i32* @TEGRA_CEC_TX_TIM1_HI_DATA_BIT_LO_TIME_SHIFT, align 4
  %87 = shl i32 19, %86
  %88 = or i32 %85, %87
  %89 = load i32, i32* @TEGRA_CEC_TX_TIM1_DATA_BIT_DURATION_SHIFT, align 4
  %90 = shl i32 75, %89
  %91 = or i32 %88, %90
  %92 = load i32, i32* @TEGRA_CEC_TX_TIM1_ACK_NAK_BIT_SAMPLE_TIME_SHIFT, align 4
  %93 = shl i32 33, %92
  %94 = or i32 %91, %93
  %95 = call i32 @cec_write(%struct.tegra_cec* %82, i32 %83, i32 %94)
  %96 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %97 = load i32, i32* @TEGRA_CEC_TX_TIMING_2, align 4
  %98 = load i32, i32* @TEGRA_CEC_TX_TIM2_BUS_IDLE_TIME_ADDITIONAL_FRAME_SHIFT, align 4
  %99 = shl i32 7, %98
  %100 = load i32, i32* @TEGRA_CEC_TX_TIM2_BUS_IDLE_TIME_NEW_FRAME_SHIFT, align 4
  %101 = shl i32 5, %100
  %102 = or i32 %99, %101
  %103 = load i32, i32* @TEGRA_CEC_TX_TIM2_BUS_IDLE_TIME_RETRY_FRAME_SHIFT, align 4
  %104 = shl i32 3, %103
  %105 = or i32 %102, %104
  %106 = call i32 @cec_write(%struct.tegra_cec* %96, i32 %97, i32 %105)
  %107 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %108 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %109 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_REGISTER_UNDERRUN, align 4
  %110 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_FRAME_OR_BLOCK_NAKD, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_ARBITRATION_FAILED, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_BUS_ANOMALY_DETECTED, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_FRAME_TRANSMITTED, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @TEGRA_CEC_INT_MASK_RX_REGISTER_FULL, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @TEGRA_CEC_INT_MASK_RX_START_BIT_DETECTED, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @cec_write(%struct.tegra_cec* %107, i32 %108, i32 %121)
  %123 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %124 = load i32, i32* @TEGRA_CEC_HW_CONTROL, align 4
  %125 = load i32, i32* @TEGRA_CEC_HWCTRL_TX_RX_MODE, align 4
  %126 = call i32 @cec_write(%struct.tegra_cec* %123, i32 %124, i32 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %31, %30
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @cec_write(%struct.tegra_cec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
