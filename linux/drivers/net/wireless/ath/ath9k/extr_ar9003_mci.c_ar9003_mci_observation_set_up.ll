; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_observation_set_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_observation_set_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32 }

@ATH_MCI_CONFIG_MCI_OBS_MCI = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_MCI_OBS_TXRX = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_MCI_OBS_BT = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_JTAG_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_GLB_CONTROL = common dso_local global i32 0, align 4
@AR_GLB_DS_JTAG_DISABLE = common dso_local global i32 0, align 4
@AR_GLB_WLAN_UART_INTF_EN = common dso_local global i32 0, align 4
@AR_GLB_GPIO_CONTROL = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_MCI_OBS_GPIO = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL2 = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL2_GPIO_OBS_SEL = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL2_MAC_BB_OBS_SEL = common dso_local global i32 0, align 4
@AR_OBS = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_OBS_PT_SEL1 = common dso_local global i32 0, align 4
@AR_DIAG_OBS_PT_SEL2 = common dso_local global i32 0, align 4
@AR_MACMISC = common dso_local global i32 0, align 4
@AR_MACMISC_MISC_OBS_BUS_LSB = common dso_local global i32 0, align 4
@AR_MACMISC_MISC_OBS_BUS_MSB = common dso_local global i32 0, align 4
@AR_PHY_TEST_CTL_STATUS = common dso_local global i32 0, align 4
@AR_PHY_TEST_CTL_DEBUGPORT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_mci_observation_set_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_observation_set_up(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.ath9k_hw_mci* %6, %struct.ath9k_hw_mci** %3, align 8
  %7 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %8 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_MCI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA, align 4
  %16 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %14, i32 3, i32* null, i32 %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK, align 4
  %19 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %17, i32 2, i32* null, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA, align 4
  %22 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %20, i32 1, i32* null, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK, align 4
  %25 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %23, i32 0, i32* null, i32 %24)
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %28 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_TXRX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX, align 4
  %36 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %34, i32 3, i32* null, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX, align 4
  %39 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %37, i32 2, i32* null, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX, align 4
  %42 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %40, i32 1, i32* null, i32 %41)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX, align 4
  %45 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %43, i32 0, i32* null, i32 %44)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %48 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %46, i32 5, i32* null, i32 %47)
  br label %71

49:                                               ; preds = %26
  %50 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %51 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_BT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX, align 4
  %59 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %57, i32 3, i32* null, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %61 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX, align 4
  %62 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %60, i32 2, i32* null, i32 %61)
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA, align 4
  %65 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %63, i32 1, i32* null, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %67 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK, align 4
  %68 = call i32 @ath9k_hw_gpio_request_out(%struct.ath_hw* %66, i32 0, i32* null, i32 %67)
  br label %70

69:                                               ; preds = %49
  br label %120

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %33
  br label %72

72:                                               ; preds = %71, %13
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %75 = load i32, i32* @AR_GPIO_JTAG_DISABLE, align 4
  %76 = call i32 @REG_SET_BIT(%struct.ath_hw* %73, i32 %74, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = load i32, i32* @AR_PHY_GLB_CONTROL, align 4
  %79 = load i32, i32* @AR_GLB_DS_JTAG_DISABLE, align 4
  %80 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %77, i32 %78, i32 %79, i32 1)
  %81 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %82 = load i32, i32* @AR_PHY_GLB_CONTROL, align 4
  %83 = load i32, i32* @AR_GLB_WLAN_UART_INTF_EN, align 4
  %84 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %86 = load i32, i32* @AR_GLB_GPIO_CONTROL, align 4
  %87 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_GPIO, align 4
  %88 = call i32 @REG_SET_BIT(%struct.ath_hw* %85, i32 %86, i32 %87)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %90 = load i32, i32* @AR_BTCOEX_CTRL2, align 4
  %91 = load i32, i32* @AR_BTCOEX_CTRL2_GPIO_OBS_SEL, align 4
  %92 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = load i32, i32* @AR_BTCOEX_CTRL2, align 4
  %95 = load i32, i32* @AR_BTCOEX_CTRL2_MAC_BB_OBS_SEL, align 4
  %96 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %93, i32 %94, i32 %95, i32 1)
  %97 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %98 = load i32, i32* @AR_OBS, align 4
  %99 = call i32 @REG_WRITE(%struct.ath_hw* %97, i32 %98, i32 75)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = load i32, i32* @AR_DIAG_SW, align 4
  %102 = load i32, i32* @AR_DIAG_OBS_PT_SEL1, align 4
  %103 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %100, i32 %101, i32 %102, i32 3)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %105 = load i32, i32* @AR_DIAG_SW, align 4
  %106 = load i32, i32* @AR_DIAG_OBS_PT_SEL2, align 4
  %107 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %104, i32 %105, i32 %106, i32 1)
  %108 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %109 = load i32, i32* @AR_MACMISC, align 4
  %110 = load i32, i32* @AR_MACMISC_MISC_OBS_BUS_LSB, align 4
  %111 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %108, i32 %109, i32 %110, i32 2)
  %112 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %113 = load i32, i32* @AR_MACMISC, align 4
  %114 = load i32, i32* @AR_MACMISC_MISC_OBS_BUS_MSB, align 4
  %115 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %112, i32 %113, i32 %114, i32 3)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %117 = load i32, i32* @AR_PHY_TEST_CTL_STATUS, align 4
  %118 = load i32, i32* @AR_PHY_TEST_CTL_DEBUGPORT_SEL, align 4
  %119 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %116, i32 %117, i32 %118, i32 7)
  br label %120

120:                                              ; preds = %72, %69
  ret void
}

declare dso_local i32 @ath9k_hw_gpio_request_out(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
