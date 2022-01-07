; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts524a_optimize_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts524a_optimize_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@RTS524A_PM_CTRL3 = common dso_local global i32 0, align 4
@D3_DELINK_MODE_EN = common dso_local global i32 0, align 4
@PHY_PCR = common dso_local global i32 0, align 4
@PHY_PCR_FORCE_CODE = common dso_local global i32 0, align 4
@PHY_PCR_OOBS_CALI_50 = common dso_local global i32 0, align 4
@PHY_PCR_OOBS_VCM_08 = common dso_local global i32 0, align 4
@PHY_PCR_OOBS_SEN_90 = common dso_local global i32 0, align 4
@PHY_PCR_RSSI_EN = common dso_local global i32 0, align 4
@PHY_SSCCR3 = common dso_local global i32 0, align 4
@PHY_SSCCR3_STEP_IN = common dso_local global i32 0, align 4
@PHY_SSCCR3_CHECK_DELAY = common dso_local global i32 0, align 4
@IC_VER_A = common dso_local global i32 0, align 4
@PHY_SSCCR2 = common dso_local global i32 0, align 4
@PHY_SSCCR2_PLL_NCODE = common dso_local global i32 0, align 4
@PHY_SSCCR2_TIME0 = common dso_local global i32 0, align 4
@PHY_SSCCR2_TIME2_WIDTH = common dso_local global i32 0, align 4
@PHY_ANA1A = common dso_local global i32 0, align 4
@PHY_ANA1A_TXR_LOOPBACK = common dso_local global i32 0, align 4
@PHY_ANA1A_RXT_BIST = common dso_local global i32 0, align 4
@PHY_ANA1A_TXR_BIST = common dso_local global i32 0, align 4
@PHY_ANA1A_REV = common dso_local global i32 0, align 4
@PHY_ANA1D = common dso_local global i32 0, align 4
@PHY_ANA1D_DEBUG_ADDR = common dso_local global i32 0, align 4
@PHY_DIG1E = common dso_local global i32 0, align 4
@PHY_DIG1E_REV = common dso_local global i32 0, align 4
@PHY_DIG1E_D0_X_D1 = common dso_local global i32 0, align 4
@PHY_DIG1E_RX_ON_HOST = common dso_local global i32 0, align 4
@PHY_DIG1E_RCLK_REF_HOST = common dso_local global i32 0, align 4
@PHY_DIG1E_RCLK_TX_EN_KEEP = common dso_local global i32 0, align 4
@PHY_DIG1E_RCLK_TX_TERM_KEEP = common dso_local global i32 0, align 4
@PHY_DIG1E_RCLK_RX_EIDLE_ON = common dso_local global i32 0, align 4
@PHY_DIG1E_TX_TERM_KEEP = common dso_local global i32 0, align 4
@PHY_DIG1E_RX_TERM_KEEP = common dso_local global i32 0, align 4
@PHY_DIG1E_TX_EN_KEEP = common dso_local global i32 0, align 4
@PHY_DIG1E_RX_EN_KEEP = common dso_local global i32 0, align 4
@PHY_ANA08 = common dso_local global i32 0, align 4
@PHY_ANA08_RX_EQ_DCGAIN = common dso_local global i32 0, align 4
@PHY_ANA08_SEL_RX_EN = common dso_local global i32 0, align 4
@PHY_ANA08_RX_EQ_VAL = common dso_local global i32 0, align 4
@PHY_ANA08_SCP = common dso_local global i32 0, align 4
@PHY_ANA08_SEL_IPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts524a_optimize_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts524a_optimize_phy(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @RTS524A_PM_CTRL3, align 4
  %7 = load i32, i32* @D3_DELINK_MODE_EN, align 4
  %8 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @PHY_PCR, align 4
  %16 = load i32, i32* @PHY_PCR_FORCE_CODE, align 4
  %17 = load i32, i32* @PHY_PCR_OOBS_CALI_50, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PHY_PCR_OOBS_VCM_08, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PHY_PCR_OOBS_SEN_90, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PHY_PCR_RSSI_EN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %14, i32 %15, i32 %24)
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %27 = load i32, i32* @PHY_SSCCR3, align 4
  %28 = load i32, i32* @PHY_SSCCR3_STEP_IN, align 4
  %29 = load i32, i32* @PHY_SSCCR3_CHECK_DELAY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %26, i32 %27, i32 %30)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %33 = load i32, i32* @IC_VER_A, align 4
  %34 = call i64 @is_version(%struct.rtsx_pcr* %32, i32 21066, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %13
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %38 = load i32, i32* @PHY_SSCCR3, align 4
  %39 = load i32, i32* @PHY_SSCCR3_STEP_IN, align 4
  %40 = load i32, i32* @PHY_SSCCR3_CHECK_DELAY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %37, i32 %38, i32 %41)
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %44 = load i32, i32* @PHY_SSCCR2, align 4
  %45 = load i32, i32* @PHY_SSCCR2_PLL_NCODE, align 4
  %46 = load i32, i32* @PHY_SSCCR2_TIME0, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PHY_SSCCR2_TIME2_WIDTH, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %43, i32 %44, i32 %49)
  %51 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %52 = load i32, i32* @PHY_ANA1A, align 4
  %53 = load i32, i32* @PHY_ANA1A_TXR_LOOPBACK, align 4
  %54 = load i32, i32* @PHY_ANA1A_RXT_BIST, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PHY_ANA1A_TXR_BIST, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PHY_ANA1A_REV, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %51, i32 %52, i32 %59)
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %62 = load i32, i32* @PHY_ANA1D, align 4
  %63 = load i32, i32* @PHY_ANA1D_DEBUG_ADDR, align 4
  %64 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %61, i32 %62, i32 %63)
  %65 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %66 = load i32, i32* @PHY_DIG1E, align 4
  %67 = load i32, i32* @PHY_DIG1E_REV, align 4
  %68 = load i32, i32* @PHY_DIG1E_D0_X_D1, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PHY_DIG1E_RX_ON_HOST, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PHY_DIG1E_RCLK_REF_HOST, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @PHY_DIG1E_RCLK_TX_EN_KEEP, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PHY_DIG1E_RCLK_TX_TERM_KEEP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PHY_DIG1E_RCLK_RX_EIDLE_ON, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PHY_DIG1E_TX_TERM_KEEP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PHY_DIG1E_RX_TERM_KEEP, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PHY_DIG1E_TX_EN_KEEP, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PHY_DIG1E_RX_EN_KEEP, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %65, i32 %66, i32 %87)
  br label %89

89:                                               ; preds = %36, %13
  %90 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %91 = load i32, i32* @PHY_ANA08, align 4
  %92 = load i32, i32* @PHY_ANA08_RX_EQ_DCGAIN, align 4
  %93 = load i32, i32* @PHY_ANA08_SEL_RX_EN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PHY_ANA08_RX_EQ_VAL, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PHY_ANA08_SCP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PHY_ANA08_SEL_IPI, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %90, i32 %91, i32 %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %89, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i64 @is_version(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
